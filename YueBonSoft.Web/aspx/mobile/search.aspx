﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="YueBonSoft.Web.UI.Page.search" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="YueBonSoft.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by YueBoncms Template Engine at 2018-01-25 11:34:15.
		本页面代码由YueBoncms模板引擎生成于 2018-01-25 11:34:15. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!DOCTYPE html>\r\n<!--HTML5 doctype-->\r\n<html>\r\n<head>\r\n<meta charset=\"utf-8\">\r\n<meta name=\"viewport\" content=\"width=device-width,initial-scale=1,user-scalable=0\">\r\n<title>站内搜索 - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
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
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n$(function(){\r\n    $(\".weui-tabbar a\").eq(2).addClass(\"weui-bar__item_on\"); //选中Tab\r\n});\r\n</");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body ontouchstart>\r\n<div class=\"page\">\r\n    <!--页面头部-->\r\n    <div class=\"header\">\r\n        <a class=\"back\" href=\"javascript:history.back();\">\r\n            <i class=\"iconfont icon-arrow-left\"></i>\r\n        </a>\r\n        <div class=\"search-box\">\r\n            <div class=\"input-box\">\r\n                <input id=\"keywords\" name=\"keywords\" placeholder=\"输入关健字\" onkeydown=\"if(event.keyCode==13){SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');return false};\" />\r\n                <a href=\"javascript:;\" onclick=\"SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');\">\r\n                    <i class=\"iconfont icon-search\"></i>\r\n            	</a>\r\n            </div>\r\n        </div>\r\n        <div class=\"right\"> \r\n            <a class=\"weui-cell_access weui-cell_link\" href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">\r\n                <i class=\"iconfont icon-home\"></i>\r\n            </a>\r\n            </a>\r\n        </div>\r\n    </div>\r\n    <!--/页面头部-->\r\n  \r\n    <!--页面内容-->\r\n    <div class=\"page__bd\">\r\n        <!--内容列表-->\r\n        <!--取得一个DataTable-->\r\n        ");
	DataTable list = get_search_list(15, out totalcount);

	templateBuilder.Append("\r\n        <!--取得分页页码列表-->\r\n        ");
	if (tags!="")
	{

	 pagelist = get_page_link(15, page, totalcount, linkurl("search","?tags=" + Server.UrlEncode(tags) + "&page=__id__"));

	}
	else
	{

	 pagelist = get_page_link(15, page, totalcount, linkurl("search","?keyword=" + Server.UrlEncode(keyword) + "&page=__id__"));

	}	//end for if

	templateBuilder.Append("\r\n        <div class=\"weui-panel weui-panel_access\" style=\"margin-top:10px;\">\r\n            <div class=\"weui-panel__hd\">\r\n                ");
	if (tags!="")
	{

	templateBuilder.Append("\r\n                查询Tags标签：");
	templateBuilder.Append(Utils.ObjectToStr(tags));
	templateBuilder.Append("，共");
	templateBuilder.Append(Utils.ObjectToStr(totalcount));
	templateBuilder.Append("条记录\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                查询关健字：");
	templateBuilder.Append(Utils.ObjectToStr(keyword));
	templateBuilder.Append("，共");
	templateBuilder.Append(Utils.ObjectToStr(totalcount));
	templateBuilder.Append("条记录\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n            </div>\r\n            <div class=\"weui-panel__bd\">\r\n                <div class=\"txt-list\">\r\n                    <ul>\r\n                        ");
	foreach(DataRow dr in list.Rows)
	{

	templateBuilder.Append("\r\n                        <li>\r\n                            <a href=\"" + Utils.ObjectToStr(dr["link_url"]) + "\">\r\n                                ");
	if (Utils.ObjectToStr(dr["img_url"])!="")
	{

	templateBuilder.Append("\r\n                                <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" />\r\n                                ");
	}	//end for if

	templateBuilder.Append("\r\n                                <h2>" + Utils.ObjectToStr(dr["title"]) + "</h2>\r\n                                <div class=\"note\">\r\n                                    <p>" + Utils.ObjectToStr(dr["remark"]) + "</p>\r\n                                    <p>\r\n                                        <i class=\"hot\"><script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=view_article_click&channel_id=" + Utils.ObjectToStr(dr["channel_id"]) + "&id=" + Utils.ObjectToStr(dr["id"]) + "\"></");
	templateBuilder.Append("script>次</i>\r\n                                        <i class=\"date\">时间：");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(dr["add_time"])).ToString("yyyy-MM-dd"));

	templateBuilder.Append("</i>\r\n                                    </p>\r\n                                </div>\r\n                            </a>\r\n                        </li>\r\n                        ");
	}	//end for if

	if (totalcount==0)
	{

	templateBuilder.Append("\r\n                        <div class=\"nodata\">暂无相关记录...</div>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!--/内容列表-->\r\n        \r\n        <!--分页页码-->\r\n        <div class=\"page-list\">\r\n            ");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("\r\n        </div>\r\n        <!--/分页页码-->\r\n    \r\n        <!--版权信息-->\r\n        ");

	templateBuilder.Append("        <div class=\"weui-footer footer\">\r\n            <p class=\"weui-footer__links\">\r\n                <a href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.weburl));
	templateBuilder.Append("?m2w\" class=\"weui-footer__link\">触屏版</a>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\" class=\"weui-footer__link\">电脑版</a>\r\n            </p>\r\n            <p class=\"weui-footer__text\">");
	templateBuilder.Append(Utils.ObjectToStr(site.copyright));
	templateBuilder.Append("</p>\r\n        </div>");


	templateBuilder.Append("\r\n        <!--/版权信息-->\r\n\r\n        <!--底部导航-->\r\n        ");

	templateBuilder.Append("        <div class=\"weui-tab foot-nav\">\r\n            <div class=\"weui-tab__panel\">\r\n\r\n            </div>\r\n            <div class=\"weui-tabbar\">\r\n                <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\" class=\"weui-tabbar__item\">\r\n                    <i class=\"iconfont icon-home weui-tabbar__icon\"></i>\r\n                    <p class=\"weui-tabbar__label\">首页</p>\r\n                </a>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("cart"));

	templateBuilder.Append("\" class=\"weui-tabbar__item\">\r\n                    <span class=\"item-box\">\r\n                        <i class=\"iconfont icon-cart weui-tabbar__icon\"></i>\r\n                        <span class=\"weui-badge\"><span id=\"shoppingCartCount\"><script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=view_cart_count\"></");
	templateBuilder.Append("script></span></span>\r\n                    </span>\r\n                    <p class=\"weui-tabbar__label\">购物车</p>\r\n                </a>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("\" class=\"weui-tabbar__item\">\r\n                    <i class=\"iconfont icon-search weui-tabbar__icon\"></i>\r\n                    <p class=\"weui-tabbar__label\">搜索</p>\r\n                </a>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\" class=\"weui-tabbar__item\">\r\n                    <i class=\"iconfont icon-user weui-tabbar__icon\"></i>\r\n                    <p class=\"weui-tabbar__label\">会员</p>\r\n                </a>\r\n            </div>\r\n        </div>");


	templateBuilder.Append("\r\n        <!--/底部导航-->\r\n    \r\n  </div>\r\n  <!--/页面内容-->\r\n\r\n</div>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
