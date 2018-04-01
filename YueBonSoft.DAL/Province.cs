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

    /// <summary>
    /// 数据访问类:Province
    /// </summary>
    public partial class Province
    {
        private string databaseprefix; //数据库表名前缀
        public Province(string _databaseprefix)
        {
            databaseprefix = _databaseprefix;
        }
        #region  BasicMethod

        /// <summary>
        /// 是否存在该记录
        /// </summary>
        public bool Exists(long ID, string ProvinceName)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) from dt_Province");
            strSql.Append(" where ID=@ID and ProvinceName=@ProvinceName ");
            SqlParameter[] parameters = {
                    new SqlParameter("@ID", SqlDbType.BigInt,8),
                    new SqlParameter("@ProvinceName", SqlDbType.NVarChar,50)            };
            parameters[0].Value = ID;
            parameters[1].Value = ProvinceName;

            return DbHelperSQL.Exists(strSql.ToString(), parameters);
        }


        /// <summary>
        /// 增加一条数据
        /// </summary>
        public bool Add(ProvinceInfo model)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("insert into dt_Province(");
            strSql.Append("ID,ProvinceName)");
            strSql.Append(" values (");
            strSql.Append("@ID,@ProvinceName)");
            SqlParameter[] parameters = {
                    new SqlParameter("@ID", SqlDbType.BigInt,8),
                    new SqlParameter("@ProvinceName", SqlDbType.NVarChar,50)};
            parameters[0].Value = model.ID;
            parameters[1].Value = model.ProvinceName;

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
        /// 更新一条数据
        /// </summary>
        public bool Update(ProvinceInfo model)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update dt_Province set ");
            strSql.Append("ID=@ID,");
            strSql.Append("ProvinceName=@ProvinceName");
            strSql.Append(" where ID=@ID and ProvinceName=@ProvinceName ");
            SqlParameter[] parameters = {
                    new SqlParameter("@ID", SqlDbType.BigInt,8),
                    new SqlParameter("@ProvinceName", SqlDbType.NVarChar,50)};
            parameters[0].Value = model.ID;
            parameters[1].Value = model.ProvinceName;

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
        public bool Delete(long ID, string ProvinceName)
        {

            StringBuilder strSql = new StringBuilder();
            strSql.Append("delete from dt_Province ");
            strSql.Append(" where ID=@ID and ProvinceName=@ProvinceName ");
            SqlParameter[] parameters = {
                    new SqlParameter("@ID", SqlDbType.BigInt,8),
                    new SqlParameter("@ProvinceName", SqlDbType.NVarChar,50)            };
            parameters[0].Value = ID;
            parameters[1].Value = ProvinceName;

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
        /// 得到一个对象实体
        /// </summary>
        public ProvinceInfo GetModel(long ID, string ProvinceName)
        {

            StringBuilder strSql = new StringBuilder();
            strSql.Append("select  top 1 ID,ProvinceName from dt_Province ");
            strSql.Append(" where ID=@ID and ProvinceName=@ProvinceName ");
            SqlParameter[] parameters = {
                    new SqlParameter("@ID", SqlDbType.BigInt,8),
                    new SqlParameter("@ProvinceName", SqlDbType.NVarChar,50)            };
            parameters[0].Value = ID;
            parameters[1].Value = ProvinceName;

            ProvinceInfo model = new ProvinceInfo();
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
        public ProvinceInfo DataRowToModel(DataRow row)
        {
            ProvinceInfo model = new ProvinceInfo();
            if (row != null)
            {
                if (row["ID"] != null && row["ID"].ToString() != "")
                {
                    model.ID = Convert.ToInt16(row["ID"].ToString());
                }
                if (row["ProvinceName"] != null)
                {
                    model.ProvinceName = row["ProvinceName"].ToString();
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
            strSql.Append("select ID,ProvinceName ");
            strSql.Append(" FROM dt_Province ");
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
            strSql.Append(" ID,ProvinceName ");
            strSql.Append(" FROM dt_Province ");
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
            strSql.Append("select count(1) FROM dt_Province ");
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
                strSql.Append("order by T.ProvinceName desc");
            }
            strSql.Append(")AS Row, T.*  from dt_Province T ");
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
