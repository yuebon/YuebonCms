using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using YueBonSoft.Model;

namespace YueBonSoft.BLL
{

    /// <summary>
    /// Province
    /// </summary>
    public partial class Province
    {
        private readonly Model.sysconfig sysConfig = new BLL.sysconfig().loadConfig();//获得系统配置信息
        private readonly YueBonSoft.DAL.Province dal;
        public Province()
        {
            dal = new DAL.Province(sysConfig.sysdatabaseprefix);
        }
        #region  BasicMethod
        /// <summary>
        /// 是否存在该记录
        /// </summary>
        public bool Exists(long ID, string ProvinceName)
        {
            return dal.Exists(ID, ProvinceName);
        }

        /// <summary>
        /// 增加一条数据
        /// </summary>
        public bool Add(YueBonSoft.Model.ProvinceInfo model)
        {
            return dal.Add(model);
        }

        /// <summary>
        /// 更新一条数据
        /// </summary>
        public bool Update(ProvinceInfo model)
        {
            return dal.Update(model);
        }

        /// <summary>
        /// 删除一条数据
        /// </summary>
        public bool Delete(long ID, string ProvinceName)
        {

            return dal.Delete(ID, ProvinceName);
        }

        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public YueBonSoft.Model.ProvinceInfo GetModel(long ID, string ProvinceName)
        {

            return dal.GetModel(ID, ProvinceName);
        }

        /// <summary>
        /// 得到一个对象实体，从缓存中
        /// </summary>
        public YueBonSoft.Model.ProvinceInfo GetModelByCache(long ID, string ProvinceName)
        {

            string CacheKey = "ProvinceModel-" + ID + ProvinceName;
            object objModel = YueBonSoft.Common.DataCache.GetCache(CacheKey);
            if (objModel == null)
            {
                try
                {
                    objModel = dal.GetModel(ID, ProvinceName);
                    if (objModel != null)
                    {
                        int ModelCache = YueBonSoft.Common.ConfigHelper.GetConfigInt("ModelCache");
                        YueBonSoft.Common.DataCache.SetCache(CacheKey, objModel, DateTime.Now.AddMinutes(ModelCache), TimeSpan.Zero);
                    }
                }
                catch { }
            }
            return (YueBonSoft.Model.ProvinceInfo)objModel;
        }

        /// <summary>
        /// 获得数据列表
        /// </summary>
        public DataSet GetList(string strWhere)
        {
            return dal.GetList(strWhere);
        }
        /// <summary>
        /// 获得前几行数据
        /// </summary>
        public DataSet GetList(int Top, string strWhere, string filedOrder)
        {
            return dal.GetList(Top, strWhere, filedOrder);
        }
        /// <summary>
        /// 获得数据列表
        /// </summary>
        public List<YueBonSoft.Model.ProvinceInfo> GetModelList(string strWhere)
        {
            DataSet ds = dal.GetList(strWhere);
            return DataTableToList(ds.Tables[0]);
        }
        /// <summary>
        /// 获得数据列表
        /// </summary>
        public List<YueBonSoft.Model.ProvinceInfo> DataTableToList(DataTable dt)
        {
            List<YueBonSoft.Model.ProvinceInfo> modelList = new List<YueBonSoft.Model.ProvinceInfo>();
            int rowsCount = dt.Rows.Count;
            if (rowsCount > 0)
            {
                YueBonSoft.Model.ProvinceInfo model;
                for (int n = 0; n < rowsCount; n++)
                {
                    model = dal.DataRowToModel(dt.Rows[n]);
                    if (model != null)
                    {
                        modelList.Add(model);
                    }
                }
            }
            return modelList;
        }

        /// <summary>
        /// 获得数据列表
        /// </summary>
        public DataSet GetAllList()
        {
            return GetList("");
        }

        /// <summary>
        /// 分页获取数据列表
        /// </summary>
        public int GetRecordCount(string strWhere)
        {
            return dal.GetRecordCount(strWhere);
        }
        /// <summary>
        /// 分页获取数据列表
        /// </summary>
        public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
        {
            return dal.GetListByPage(strWhere, orderby, startIndex, endIndex);
        }
        #endregion
    }
}