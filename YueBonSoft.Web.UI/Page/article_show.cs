using System;
using System.Collections.Generic;
using System.Web;
using System.Text;
using YueBonSoft.Common;
using System.Data;
using System.Web.UI.WebControls;
using Senparc.Weixin.MP.Helpers;
using Senparc.Weixin.MP.Containers;

namespace YueBonSoft.Web.UI.Page
{
    public partial class article_show : Web.UI.BasePage
    {
        protected string channel = string.Empty; //频道名称
        protected int id;
        protected string page = string.Empty;
        protected Model.article model = new Model.article();

        protected JsSdkUiPackage jssdkUiPackage;
        /// <summary>
        /// 重写虚方法,此方法将在Init事件前执行
        /// </summary>
        protected override void ShowPage()
        {

            int weixinId = DTRequest.GetQueryInt("wxid");
            string url = "http://"+DTRequest.GetHost()+HttpContext.Current.Request.RawUrl;
            
            BLL.weixin_account wxBll = new BLL.weixin_account();
            Model.weixin_account modelt = wxBll.GetModel(weixinId);
            if (modelt != null)
            {
                string ticket = JsApiTicketContainer.TryGetJsApiTicket(modelt.appid, modelt.appsecret);
                jssdkUiPackage = JSSDKHelper.GetJsSdkUiPackage(modelt.appid, modelt.appsecret, url);
            }
            this.Init += new EventHandler(article_show_Init);
        }

        /// <summary>
        /// OnInit事件,让频道名称变量先赋值
        /// </summary>
        void article_show_Init(object sender, EventArgs e)
        {
            id = DTRequest.GetQueryInt("id");
            page = DTRequest.GetQueryString("page");
            BLL.article bll = new BLL.article();

            if (id > 0) //如果ID获取到，将使用ID
            {
                if (!bll.ArticleExists(channel, id))
                {
                    HttpContext.Current.Response.Redirect(linkurl("error", "?msg=" + Utils.UrlEncode("出错啦，您要浏览的页面不存在或已删除！")));
                    return;
                }
                model = bll.ArticleModel(channel, id);
            }
            else if (!string.IsNullOrEmpty(page)) //否则检查设置的别名
            {
                if (!bll.ArticleExists(channel, page))
                {
                    HttpContext.Current.Response.Redirect(linkurl("error", "?msg=" + Utils.UrlEncode("出错啦，您要浏览的页面不存在或已删除！")));
                    return;
                }
                model = bll.ArticleModel(channel, page);
            }
            else
            {
                return;
            }
            //跳转URL
            if (model.link_url != null)
            {
                model.link_url = model.link_url.Trim();
            }
            if (!string.IsNullOrEmpty(model.link_url))
            {
                HttpContext.Current.Response.Redirect(model.link_url);
            }
        }

        /// <summary>
        /// 获取上一条下一条的链接
        /// </summary>
        /// <param name="urlkey">urlkey</param>
        /// <param name="type">-1代表上一条，1代表下一条</param>
        /// <param name="defaultvalue">默认文本</param>
        /// <param name="callIndex">是否使用别名，0使用ID，1使用别名</param>
        /// <returns>A链接</returns>
        protected string get_prevandnext_article(string urlkey, int type, string defaultvalue, int callIndex)
        {
            string symbol = (type == -1 ? "<" : ">");
            BLL.article bll = new BLL.article();
            string str = string.Empty;
            str = " and category_id=" + model.category_id;

            string orderby = type == -1 ? "id desc" : "id asc";
            DataSet ds = bll.ArticleList(channel, 1, "channel_id=" + model.channel_id + " " + str + " and status=0 and Id" + symbol + id, orderby);
            if (ds == null || ds.Tables[0].Rows.Count <= 0)
            {
                return defaultvalue;
            }
            string tip = "下一条：";
            if (type==1)
            {
                tip = "上一条：";
            }
            if (callIndex == 1 && !string.IsNullOrEmpty(ds.Tables[0].Rows[0]["call_index"].ToString()))
            {
                return "<a href=\"" + linkurl(urlkey, ds.Tables[0].Rows[0]["call_index"].ToString()) + "\">" + tip+ ds.Tables[0].Rows[0]["title"] + "</a>";
            }

            return "<a href=\"" + linkurl(urlkey, ds.Tables[0].Rows[0]["id"].ToString()) + "\">" + tip + ds.Tables[0].Rows[0]["title"] + "</a>";
        }
    }
}
