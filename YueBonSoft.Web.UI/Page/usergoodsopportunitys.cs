using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using YueBonSoft.Common;

namespace YueBonSoft.Web.UI.Page
{
    public partial class usergoodsopportunitys : Web.UI.UserPage
    {
        protected string action = string.Empty;
        protected int page;         //当前页码
        protected int totalcount;   //OUT数据总数

        protected string channel = string.Empty; //频道名称
        protected int category_id;  //类别ID
        protected string pagelist;  //分页页码

        /// <summary>
        /// 重写虚方法,此方法在Init事件执行
        /// </summary>
        protected override void InitPage()
        {
            action = DTRequest.GetQueryString("action");
            page = DTRequest.GetQueryInt("page", 1);
        }

    }
}
