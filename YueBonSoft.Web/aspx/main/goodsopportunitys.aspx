<%@ Page Language="C#" AutoEventWireup="true" Inherits="YueBonSoft.Web.UI.Page.article" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="YueBonSoft.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by YueBoncms Template Engine at 2018-03-05 17:24:28.
		本页面代码由YueBoncms模板引擎生成于 2018-03-05 17:24:28. 
	*/

	base.channel = "goodsopportunity";
	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const int pagesize = 20;

	templateBuilder.Append("<!DOCTYPE html>\r\n<!--HTML5 doctype-->\r\n<html>\r\n<head>\r\n<meta charset=\"utf-8\">\r\n<meta name=\"viewport\" content=\"width=device-width,initial-scale=1,user-scalable=0\">\r\n<title>货源查询 - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/dfkc");
	templateBuilder.Append("/css/idangerous.swiper.css\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
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
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/dfkc");
	templateBuilder.Append("/js/idangerous.swiper-2.1.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n	$(document).ready(function(){\r\n		var mySwiper = new Swiper('.swiper-container',{\r\n			calculateHeight:true,\r\n			resizeReInit:true,\r\n			pagination:\".pagination\",\r\n			autoplay:5000,\r\n			paginationClickable:true\r\n		});\r\n	});\r\n</");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body id=\"news\" ontouchstart>\r\n<div class=\"page\">\r\n    <!--页面头部-->\r\n    <div class=\"header\">\r\n        <a class=\"back\" href=\"javascript:history.back();\">\r\n            <i class=\"iconfont icon-arrow-left\"></i>\r\n        </a>\r\n        <h3>货源查询</h3>\r\n        <div class=\"right\"> \r\n            <a class=\"weui-cell_access weui-cell_link\" href=\"javascript:;\" onclick=\"showDialogBox('#category-box');\">\r\n                <i class=\"iconfont icon-nav\"></i>\r\n            </a>\r\n        </div>\r\n    </div>\r\n    <!--/页面头部-->\r\n  \r\n    <!--页面内容-->\r\n    <div class=\"page__bd\">\r\n        <!--首页幻灯片-->\r\n        <div id=\"slider\" class=\"swiper-container\">\r\n            <div class=\"swiper-wrapper\">\r\n                ");
	DataTable focusList = get_article_list(channel, 0, 8, "status=0 and is_slide=1 and img_url<>''");

	foreach(DataRow dr in focusList.Rows)
	{

	templateBuilder.Append("\r\n                <div class=\"swiper-slide\">\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("goodsopportunity_show",Utils.ObjectToStr(dr["id"])+"-1"));

	templateBuilder.Append("\">\r\n                        <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" />\r\n                    </a>\r\n                </div>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n            </div>\r\n            <div class=\"pagination\"></div>\r\n        </div>\r\n        <!--/首页幻灯片-->\r\n        <script type=\"text/javascript\" src=\"/plugins/advert/advert_js.ashx?id=3\"></");
	templateBuilder.Append("script>\r\n        <!--最新货源-->\r\n        <div class=\"weui-panel weui-panel_access\" style=\"margin-top:0;\">\r\n            <div class=\"weui-panel__hd\">最新货源</div>\r\n            <div class=\"weui-panel__bd\">\r\n                <div class=\"text-list\">\r\n                    <ul>\r\n                        <!--取得一个分页DataTable-->\r\n                        ");
	DataTable newsList = get_article_list(channel, 0, pagesize, page, "status in(0,3)", out totalcount, out pagelist, "goodsopportunity_list", 0, "__id__");

	int newdr__loop__id=0;
	foreach(DataRow newdr in newsList.Rows)
	{
		newdr__loop__id++;


	string category_title = get_category_title(Utils.StrToInt(Utils.ObjectToStr(newdr["category_id"]), 0),"货源");

	templateBuilder.Append("\r\n                        <li>\r\n                            <a href=\"");
	templateBuilder.Append(linkurl("goodsopportunity_show",Utils.ObjectToStr(newdr["id"]),"1"));

	templateBuilder.Append("\" class=\"note\">\r\n                                ");
	if (Utils.ObjectToStr(newdr["status"])=="3")
	{

	templateBuilder.Append("\r\n                                <i class=\"datetip\">已交易</i>\r\n                                ");
	}	//end for if

	templateBuilder.Append("\r\n                                <h2>[");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append("]" + Utils.ObjectToStr(newdr["title"]) + "</h2>\r\n                                <p class=\"introb green\">" + Utils.ObjectToStr(newdr["ExpressLine"]) + "</p>\r\n                                <p class=\"intro\">重量：" + Utils.ObjectToStr(newdr["GoodsWeight"]) + "&nbsp;&nbsp; 体积：" + Utils.ObjectToStr(newdr["GoodsVolume"]) + "</p>\r\n                                <!--<p class=\"price\">期望运费：" + Utils.ObjectToStr(newdr["ExpectMoney"]) + "</p>-->\r\n                            </a>\r\n                            ");
	if (Utils.ObjectToStr(newdr["mobile"])!="")
	{

	templateBuilder.Append("\r\n                            <p class=\"intro\">手机：<a href=\"tel:" + Utils.ObjectToStr(newdr["mobile"]) + "\">" + Utils.ObjectToStr(newdr["mobile"]) + "</a></p>\r\n                            ");
	}
	else if (Utils.ObjectToStr(newdr["telphone"])!="")
	{

	templateBuilder.Append("\r\n                            <p class=\"intro\">电话：<a href=\"tel:" + Utils.ObjectToStr(newdr["telphone"]) + "\">" + Utils.ObjectToStr(newdr["telphone"]) + "</a></p>\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                            <a href=\"");
	templateBuilder.Append(linkurl("goodsopportunity_show",Utils.ObjectToStr(newdr["id"]),"1"));

	templateBuilder.Append(" \" class=\"note\">\r\n                                <p class=\"intro\">联系人：" + Utils.ObjectToStr(newdr["contact"]) + "</p>\r\n                                <p class=\"intro\">发货时间：<span class=\"red\">");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(newdr["sendDate"])).ToString("MM月dd日"));

	templateBuilder.Append("</span></p>\r\n                                <p class=\"txt-add-date right\"><span>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(newdr["add_time"])).ToString("MM-dd HH:MM"));

	templateBuilder.Append("发布</span></p>\r\n                            </a>\r\n                        </li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!--最新货源-->\r\n        <!--分页页码-->\r\n        <div class=\"page-list\">\r\n            ");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("\r\n        </div>\r\n        <!--/分页页码-->\r\n        \r\n        <div class=\"weui-panel weui-panel_access\">\r\n            <div class=\"weui-panel__hd\">人气排行</div>\r\n            <div class=\"weui-panel__bd\">\r\n                <div class=\"txt-list\">\r\n                        <ul>\r\n                        <!--人气排行-->\r\n                        <div class=\"weui-panel weui-panel_access\">\r\n                        ");
	DataTable hotList = get_article_list(channel, 0, 10, "status=0", "click desc,id desc");

	int hotdr__loop__id=0;
	foreach(DataRow hotdr in hotList.Rows)
	{
		hotdr__loop__id++;


	templateBuilder.Append("\r\n                        <li>\r\n                            <a href=\"");
	templateBuilder.Append(linkurl("goodsopportunity_show",Utils.ObjectToStr(hotdr["id"]),"1"));

	templateBuilder.Append("\">\r\n                                <i class=\"date\">" + Utils.ObjectToStr(hotdr["click"]) + "次</i>\r\n                                <i class=\"number\">");
	templateBuilder.Append(Utils.ObjectToStr(hotdr__loop__id));
	templateBuilder.Append("</i>\r\n                                <span class=\"text\">" + Utils.ObjectToStr(hotdr["title"]) + "</span>\r\n                            </a>\r\n                        </li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                        </div>\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!--/人气排行-->\r\n    \r\n        <!--版权信息-->\r\n        ");

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


	templateBuilder.Append("\r\n        <!--/底部导航-->\r\n    </div>\r\n    <!--/页面内容-->\r\n</div>\r\n\r\n<!--类别容器-->\r\n<div id=\"category-box\" class=\"dialog-wrap\">\r\n    <div class=\"dialog-box\">\r\n        <div class=\"header\">\r\n            <a class=\"back\" href=\"javascript:;\" onclick=\"closeDialogBox('#category-box');\">\r\n                <i class=\"iconfont icon-arrow-left\"></i>\r\n            </a>\r\n            <h3>货源分类</h3>\r\n        </div>\r\n        <ul class=\"navbar\">\r\n            <li>\r\n                <h3><a href=\"");
	templateBuilder.Append(linkurl("goodsopportunitys"));

	templateBuilder.Append("\">全部</a></h3> \r\n            </li>\r\n            ");
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

	templateBuilder.Append("\r\n        </ul>\r\n    </div>\r\n</div>\r\n<!--类别容器-->\r\n    <script src=\"http://res.wx.qq.com/open/js/jweixin-1.2.0.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">\r\n        wx.hideOptionMenu();\r\n    </");
	templateBuilder.Append("script>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
