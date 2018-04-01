<%@ Page Language="C#" AutoEventWireup="true" Inherits="YueBonSoft.Web.UI.Page.index" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="YueBonSoft.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by YueBoncms Template Engine at 2018-01-30 15:21:10.
		本页面代码由YueBoncms模板引擎生成于 2018-01-30 15:21:10. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!DOCTYPE html>\r\n<!--HTML5 doctype-->\r\n<html>\r\n<head>\r\n<meta charset=\"utf-8\">\r\n<meta name=\"viewport\" content=\"width=device-width,initial-scale=1,user-scalable=0\">\r\n<title>");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_title));
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
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n    $(document).ready(function(){\r\n        //初始化幻灯片\r\n        var mySwiper = new Swiper('.swiper-container',{\r\n            calculateHeight:true,\r\n            resizeReInit:true,\r\n            pagination:\".pagination\",\r\n            autoplay:5000,\r\n            paginationClickable:true\r\n        });\r\n        //选中Tab\r\n        $(\".weui-tabbar a\").eq(0).addClass(\"weui-bar__item_on\");\r\n    });\r\n</");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body ontouchstart>\r\n<div class=\"page\">\r\n    <!--页面头部-->\r\n    ");

	templateBuilder.Append("    <div class=\"header\">\r\n        <div class=\"logo\">\r\n            <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">\r\n                <img src=\"");
	templateBuilder.Append("/templates/dfkc");
	templateBuilder.Append("/images/logo.png\" />\r\n            </a>\r\n        </div>\r\n        <div class=\"right\"> \r\n            <a href=\"");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("\">\r\n                <i class=\"iconfont icon-search\"></i>\r\n            </a>\r\n            <a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">\r\n                <i class=\"iconfont icon-user\"></i>\r\n            </a>\r\n        </div>\r\n    </div>");


	templateBuilder.Append("\r\n    <!--/页面头部-->\r\n  \r\n    <!--页面内容-->\r\n    <div class=\"page__bd\">\r\n        <!--首页幻灯片-->\r\n        <div id=\"slider\" class=\"swiper-container\">\r\n            <div class=\"swiper-wrapper\">\r\n                <div class=\"swiper-slide\"><img src=\"");
	templateBuilder.Append("/templates/dfkc");
	templateBuilder.Append("/images/banner1.jpg\"/></div>\r\n                <div class=\"swiper-slide\"><img src=\"");
	templateBuilder.Append("/templates/dfkc");
	templateBuilder.Append("/images/banner2.jpg\"/></div>\r\n                <div class=\"swiper-slide\"><img src=\"");
	templateBuilder.Append("/templates/dfkc");
	templateBuilder.Append("/images/banner3.jpg\"/></div>\r\n            </div>\r\n            <div class=\"pagination\"></div>\r\n        </div>\r\n        <!--/首页幻灯片-->\r\n    \r\n        <!--首页图标导航-->\r\n        <div class=\"weui-grids nav-list\">\r\n            <a href=\"");
	templateBuilder.Append(linkurl("goodsopportunitys"));

	templateBuilder.Append("\" class=\"weui-grid\">\r\n                <div class=\"weui-grid__icon\">\r\n                    <i class=\"iconfont icon-news\"></i>\r\n                </div>\r\n                <p class=\"weui-grid__label\">货源查询</p>\r\n            </a>\r\n            <a href=\"");
	templateBuilder.Append(linkurl("goods"));

	templateBuilder.Append("\" class=\"weui-grid\">\r\n                <div class=\"weui-grid__icon\">\r\n                    <i class=\"iconfont icon-shopping\"></i>\r\n                </div>\r\n                <p class=\"weui-grid__label\">购物商城</p>\r\n            </a>\r\n            <a href=\"");
	templateBuilder.Append(linkurl("video"));

	templateBuilder.Append("\" class=\"weui-grid\">\r\n                <div class=\"weui-grid__icon\">\r\n                    <i class=\"iconfont icon-video\"></i>\r\n                </div>\r\n                <p class=\"weui-grid__label\">视频专区</p>\r\n            </a>\r\n            <a href=\"");
	templateBuilder.Append(linkurl("photo"));

	templateBuilder.Append("\" class=\"weui-grid\">\r\n                <div class=\"weui-grid__icon\">\r\n                    <i class=\"iconfont icon-pic\"></i>\r\n                </div>\r\n                <p class=\"weui-grid__label\">图片分享</p>\r\n            </a>\r\n            <a href=\"");
	templateBuilder.Append(linkurl("down"));

	templateBuilder.Append("\" class=\"weui-grid\">\r\n                <div class=\"weui-grid__icon\">\r\n                    <i class=\"iconfont icon-folder\"></i>\r\n                </div>\r\n                <p class=\"weui-grid__label\">资源下载</p>\r\n            </a>\r\n            <a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\" class=\"weui-grid\">\r\n                <div class=\"weui-grid__icon\">\r\n                    <i class=\"iconfont icon-user\"></i>\r\n                </div>\r\n                <p class=\"weui-grid__label\">会员中心</p>\r\n            </a>\r\n            <a href=\"");
	templateBuilder.Append(linkurl("content","about"));

	templateBuilder.Append("\" class=\"weui-grid\">\r\n                <div class=\"weui-grid__icon\">\r\n                    <i class=\"iconfont icon-book\"></i>\r\n                </div>\r\n                <p class=\"weui-grid__label\">关于我们</p>\r\n            </a>\r\n            <a href=\"");
	templateBuilder.Append(linkurl("feedback"));

	templateBuilder.Append("\" class=\"weui-grid\">\r\n                <div class=\"weui-grid__icon\">\r\n                    <i class=\"iconfont icon-msg\"></i>\r\n                </div>\r\n                <p class=\"weui-grid__label\">留言反馈</p>\r\n            </a>\r\n            <a href=\"");
	templateBuilder.Append(linkurl("content","contact"));

	templateBuilder.Append("\" class=\"weui-grid\">\r\n                <div class=\"weui-grid__icon\">\r\n                    <i class=\"iconfont icon-tel\"></i>\r\n                </div>\r\n                <p class=\"weui-grid__label\">联系我们</p>\r\n            </a>\r\n        </div>\r\n        <!--/首页图标导航-->\r\n        <!--版权信息-->\r\n        ");

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


	templateBuilder.Append("\r\n        <!--/底部导航-->\r\n    </div>\r\n    <!--/页面内容-->\r\n</div>\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
