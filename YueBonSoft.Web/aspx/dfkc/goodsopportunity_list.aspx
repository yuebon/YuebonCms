﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="YueBonSoft.Web.UI.Page.article_list" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="YueBonSoft.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by YueBoncms Template Engine at 2018-01-30 15:21:11.
		本页面代码由YueBoncms模板引擎生成于 2018-01-30 15:21:11. 
	*/

	base.channel = "goodsopportunity";
	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const int pagesize = 20;

	templateBuilder.Append("<!DOCTYPE html>\r\n<!--HTML5 doctype-->\r\n<html>\r\n<head>\r\n<meta charset=\"utf-8\">\r\n<meta name=\"viewport\" content=\"width=device-width,initial-scale=1,user-scalable=0\">\r\n<title>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_keywords));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_description));
	templateBuilder.Append("\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/pagination.css\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/dfkc");
	templateBuilder.Append("/css/style.css\" />\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/dfkc");
	templateBuilder.Append("/js/zepto.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/dfkc");
	templateBuilder.Append("/js/weui.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/dfkc");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body id=\"news\" ontouchstart>\r\n<div class=\"page\">\r\n    <!--页面头部-->\r\n    <div class=\"header\">\r\n        <a class=\"back\" href=\"javascript:history.back();\">\r\n            <i class=\"iconfont icon-arrow-left\"></i>\r\n        </a>\r\n        <h3>货源</h3>\r\n        <div class=\"right\"> \r\n            <a class=\"weui-cell_access weui-cell_link\" hrhref=\"javascript:;\" onclick=\"showDialogBox('#category-box');\">\r\n                <i class=\"iconfont icon-nav\"></i>\r\n            </a>\r\n        </div>\r\n    </div>\r\n    <!--/页面头部-->\r\n  \r\n    <!--页面内容-->\r\n    <div class=\"page__bd\">\r\n        <!--资讯列表-->\r\n        <div class=\"weui-panel weui-panel_access\" style=\"margin-top:10px;\">\r\n            <div class=\"weui-panel__hd\">");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</div>\r\n            <div class=\"weui-panel__bd\">\r\n                <div class=\"detail-list\">\r\n                    <ul>\r\n                        <!--取得一个分页DataTable-->\r\n                        ");
	DataTable newsList = get_article_list(channel, category_id, pagesize, page, "status=0", out totalcount, out pagelist, "news_list", category_id, "__id__");

	foreach(DataRow dr in newsList.Rows)
	{

	templateBuilder.Append("\r\n                        <li>\r\n                            <a href=\"");
	templateBuilder.Append(linkurl("goodsopportunity_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">\r\n                               ");
	string senddate = Utils.ObjectToStr(dr["sendDate"]);

	if (Utils.ObjectToDateTime(senddate)<DateTime.Now)
	{

	templateBuilder.Append("\r\n                                    <i class=\"datetip\">已过期</i>\r\n                                ");
	}	//end for if

	if (Utils.ObjectToStr(dr["img_url"])!="")
	{

	templateBuilder.Append("\r\n                                <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" />\r\n                                ");
	}	//end for if

	templateBuilder.Append("\r\n                                <h2>" + Utils.ObjectToStr(dr["title"]) + "</h2>\r\n                                <p class=\"introb\">" + Utils.ObjectToStr(dr["ExpressLine"]) + "</p>\r\n                                <p class=\"intro\">重量：" + Utils.ObjectToStr(dr["GoodsWeight"]) + "&nbsp;&nbsp; 体积：" + Utils.ObjectToStr(dr["GoodsVolume"]) + "</p>\r\n                                <p class=\"intro\">电话：" + Utils.ObjectToStr(dr["telphone"]) + "</p>\r\n                                <p class=\"intro\">手机：" + Utils.ObjectToStr(dr["mobile"]) + "</p>\r\n                                <p class=\"intro\">联系人：" + Utils.ObjectToStr(dr["contact"]) + "</p>\r\n                                <p class=\"intro\">发货时间：");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(dr["sendDate"])).ToString("yyyy年MM月dd日HH时"));

	templateBuilder.Append("</p>\r\n                                <p class=\"intro\">发布时间：");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(dr["add_time"])).ToString("yyyy年MM月dd日HH:MM"));

	templateBuilder.Append("</p>\r\n                            </a>\r\n                        </li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!--/资讯列表-->\r\n        \r\n        <!--分页页码-->\r\n        <div class=\"page-list\">\r\n            ");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("\r\n        </div>\r\n        <!--/分页页码-->\r\n    \r\n        <!--版权信息-->\r\n        ");

	templateBuilder.Append("        <div class=\"weui-footer footer\">\r\n            <p class=\"weui-footer__text\">");
	templateBuilder.Append(Utils.ObjectToStr(site.copyright));
	templateBuilder.Append("</p>\r\n        </div>");


	templateBuilder.Append("\r\n        <!--/版权信息-->\r\n\r\n        <!--底部导航-->\r\n        ");

	templateBuilder.Append("        <div class=\"weui-tab foot-nav\">\r\n            <div class=\"weui-tab__panel\">\r\n\r\n            </div>\r\n            <div class=\"weui-tabbar\">\r\n                <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\" class=\"weui-tabbar__item\">\r\n                    <i class=\"iconfont icon-home weui-tabbar__icon\"></i>\r\n                    <p class=\"weui-tabbar__label\">首页</p>\r\n                </a>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("lineselect"));

	templateBuilder.Append("\" class=\"weui-tabbar__item\">\r\n                    <span class=\"item-box\">\r\n                        <i class=\"iconfont icon-address weui-tabbar__icon\"></i>\r\n                    </span>\r\n                    <p class=\"weui-tabbar__label\">专线</p>\r\n                </a>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("\" class=\"weui-tabbar__item\">\r\n                    <i class=\"iconfont icon-search weui-tabbar__icon\"></i>\r\n                    <p class=\"weui-tabbar__label\">搜索</p>\r\n                </a>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\" class=\"weui-tabbar__item\">\r\n                    <i class=\"iconfont icon-user weui-tabbar__icon\"></i>\r\n                    <p class=\"weui-tabbar__label\">会员</p>\r\n                </a>\r\n            </div>\r\n        </div>");


	templateBuilder.Append("\r\n        <!--/底部导航-->\r\n    </div>\r\n    <!--/页面内容-->\r\n</div>\r\n\r\n<!--类别容器-->\r\n<div id=\"category-box\" class=\"dialog-wrap\">\r\n    <div class=\"dialog-box\">\r\n        <div class=\"header\">\r\n            <a class=\"back\" href=\"javascript:;\" onclick=\"closeDialogBox('#category-box');\">\r\n                <i class=\"iconfont icon-arrow-left\"></i>\r\n            </a>\r\n            <h3>货源分类</h3>\r\n        </div>\r\n        <ul class=\"navbar\">\r\n            ");
	DataTable categoryList1 = get_category_child_list(channel, 0);

	foreach(DataRow cdr1 in categoryList1.Rows)
	{

	templateBuilder.Append("\r\n            <li>\r\n                <h3><a href=\"");
	templateBuilder.Append(linkurl("goodsopportunity_list",Utils.ObjectToStr(cdr1["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr1["title"]) + "</a></h3> \r\n                <p>\r\n                ");
	DataTable categoryList2 = get_category_child_list(channel, Utils.StrToInt(Utils.ObjectToStr(cdr1["id"]), 0));

	foreach(DataRow cdr2 in categoryList2.Rows)
	{

	templateBuilder.Append("\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("goodsopportunity_list",Utils.ObjectToStr(cdr2["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr2["title"]) + "</a>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n                </p>\r\n            </li>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n    </div>\r\n</div>\r\n<!--类别容器-->\r\n\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>