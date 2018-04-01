using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using YueBonSoft.DBUtility;
using YueBonSoft.Model;

namespace YueBonSoft.DAL
{
    public partial class City
    {
        private string databaseprefix; //数据库表名前缀
        public City(string _databaseprefix)
        {
            databaseprefix = _databaseprefix;
        }
        #region  BasicMethod
        /// <summary>
        /// 是否存在该记录
        /// </summary>
        public bool Exists(long ID)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) from dt_City");
            strSql.Append(" where ID=@ID");
            SqlParameter[] parameters = {
                    new SqlParameter("@ID", SqlDbType.BigInt)
            };
            parameters[0].Value = ID;

            return DbHelperSQL.Exists(strSql.ToString(), parameters);
        }


        /// <summary>
        /// 增加一条数据
        /// </summary>
        public long Add(CityInfo model)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("insert into dt_City(");
            strSql.Append("CityName,ZipCode,ProvinceID)");
            strSql.Append(" values (");
            strSql.Append("@CityName,@ZipCode,@ProvinceID)");
            strSql.Append(";select @@IDENTITY");
            SqlParameter[] parameters = {
                    new SqlParameter("@CityName", SqlDbType.NVarChar,50),
                    new SqlParameter("@ZipCode", SqlDbType.NVarChar,50),
                    new SqlParameter("@ProvinceID", SqlDbType.BigInt,8)};
            parameters[0].Value = model.CityName;
            parameters[1].Value = model.ZipCode;
            parameters[2].Value = model.ProvinceID;

            object obj = DbHelperSQL.GetSingle(strSql.ToString(), parameters);
            if (obj == null)
            {
                return 0;
            }
            else
            {
                return Convert.ToInt64(obj);
            }
        }
        /// <summary>
        /// 更新一条数据
        /// </summary>
        public bool Update(CityInfo model)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update dt_City set ");
            strSql.Append("CityName=@CityName,");
            strSql.Append("ZipCode=@ZipCode,");
            strSql.Append("ProvinceID=@ProvinceID");
            strSql.Append(" where ID=@ID");
            SqlParameter[] parameters = {
                    new SqlParameter("@CityName", SqlDbType.NVarChar,50),
                    new SqlParameter("@ZipCode", SqlDbType.NVarChar,50),
                    new SqlParameter("@ProvinceID", SqlDbType.BigInt,8),
                    new SqlParameter("@ID", SqlDbType.BigInt,8)};
            parameters[0].Value = model.CityName;
            parameters[1].Value = model.ZipCode;
            parameters[2].Value = model.ProvinceID;
            parameters[3].Value = model.ID;

            int rows = DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// 删除一条数据
        /// </summary>
        public bool Delete(long ID)
        {

            StringBuilder strSql = new StringBuilder();
            strSql.Append("delete from dt_City ");
            strSql.Append(" where ID=@ID");
            SqlParameter[] parameters = {
                    new SqlParameter("@ID", SqlDbType.BigInt)
            };
            parameters[0].Value = ID;

            int rows = DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        /// <summary>
        /// 批量删除数据
        /// </summary>
        public bool DeleteList(string IDlist)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("delete from dt_City ");
            strSql.Append(" where ID in (" + IDlist + ")  ");
            int rows = DbHelperSQL.ExecuteSql(strSql.ToString());
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }


        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public CityInfo GetModel(long ID)
        {

            StringBuilder strSql = new StringBuilder();
            strSql.Append("select  top 1 ID,CityName,ZipCode,ProvinceID from dt_City ");
            strSql.Append(" where ID=@ID");
            SqlParameter[] parameters = {
                    new SqlParameter("@ID", SqlDbType.BigInt)
            };
            parameters[0].Value = ID;

            CityInfo model = new CityInfo();
            DataSet ds = DbHelperSQL.Query(strSql.ToString(), parameters);
            if (ds.Tables[0].Rows.Count > 0)
            {
                return DataRowToModel(ds.Tables[0].Rows[0]);
            }
            else
            {
                return null;
            }
        }


        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public CityInfo DataRowToModel(DataRow row)
        {
            CityInfo model = new CityInfo();
            if (row != null)
            {
                if (row["ID"] != null && row["ID"].ToString() != "")
                {
                    model.ID = Convert.ToInt32(row["ID"].ToString());
                }
                if (row["CityName"] != null)
                {
                    model.CityName = row["CityName"].ToString();
                }
                if (row["ZipCode"] != null)
                {
                    model.ZipCode = row["ZipCode"].ToString();
                }
                if (row["ProvinceID"] != null && row["ProvinceID"].ToString() != "")
                {
                    model.ProvinceID = Convert.ToInt32(row["ProvinceID"].ToString());
                }
            }
            return model;
        }

        /// <summary>
        /// 获得数据列表
        /// </summary>
        public DataSet GetList(string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select ID,CityName,ZipCode,ProvinceID ");
            strSql.Append(" FROM dt_City ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            return DbHelperSQL.Query(strSql.ToString());
        }

        /// <summary>
        /// 获得前几行数据
        /// </summary>
        public DataSet GetList(int Top, string strWhere, string filedOrder)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select ");
            if (Top > 0)
            {
                strSql.Append(" top " + Top.ToString());
            }
            strSql.Append(" ID,CityName,ZipCode,ProvinceID ");
            strSql.Append(" FROM dt_City ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            strSql.Append(" order by " + filedOrder);
            return DbHelperSQL.Query(strSql.ToString());
        }

        /// <summary>
        /// 获取记录总数
        /// </summary>
        public int GetRecordCount(string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) FROM dt_City ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            object obj = DbHelperSQL.GetSingle(strSql.ToString());
            if (obj == null)
            {
                return 0;
            }
            else
            {
                return Convert.ToInt32(obj);
            }
        }
        /// <summary>
        /// 分页获取数据列表
        /// </summary>
        public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT * FROM ( ");
            strSql.Append(" SELECT ROW_NUMBER() OVER (");
            if (!string.IsNullOrEmpty(orderby.Trim()))
            {
                strSql.Append("order by T." + orderby);
            }
            else
            {
                strSql.Append("order by T.ID desc");
            }
            strSql.Append(")AS Row, T.*  from dt_City T ");
            if (!string.IsNullOrEmpty(strWhere.Trim()))
            {
                strSql.Append(" WHERE " + strWhere);
            }
            strSql.Append(" ) TT");
            strSql.AppendFormat(" WHERE TT.Row between {0} and {1}", startIndex, endIndex);
            return DbHelperSQL.Query(strSql.ToString());
        }
        #endregion
    }
}
