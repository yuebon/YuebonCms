using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using YueBonSoft.Common;

namespace YueBonSoft.Web.UI.Page
{
    public partial class usergoodsopportunity_edit : Web.UI.UserPage
    {
        protected string action = string.Empty;
        protected string channel = string.Empty; //频道名称
        protected int id;
        protected string channel_id = string.Empty; //频道名称
        protected Model.article model = new Model.article();

        /// <summary>
        /// 重写虚方法,此方法在Init事件执行
        /// </summary>
        protected override void InitPage()
        {
            action = DTRequest.GetQueryString("action");
            id = DTRequest.GetQueryInt("id");
            //channel_id = DTRequest.GetQueryInt("id");
            if (action.ToLower() == DTEnums.ActionEnum.Edit.ToString().ToLower())
            {
                BLL.article bll = new BLL.article();
                if (!bll.Exists(7,id))
                {
                    HttpContext.Current.Response.Redirect(linkurl("error", "?msg=" + Utils.UrlEncode("出错了，您要浏览的页面不存在或已删除！")));
                    return;
                }
                model = bll.GetModel(7,id);
                if (model.user_name != userModel.user_name)
                {
                    HttpContext.Current.Response.Redirect(linkurl("error", "error.aspx?msg=" + Utils.UrlEncode("出错了，您所要修改的并非自己的地址！")));
                    return;
                }
            }
        }

    }
}
