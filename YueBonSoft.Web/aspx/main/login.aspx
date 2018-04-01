﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="YueBonSoft.Web.UI.Page.login" ValidateRequest="false" %>
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

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!DOCTYPE html>\r\n<!--HTML5 doctype-->\r\n<html>\r\n<head>\r\n<meta charset=\"utf-8\">\r\n<meta name=\"viewport\" content=\"width=device-width,initial-scale=1,user-scalable=0\">\r\n<title>会员登录 - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/dfkc");
	templateBuilder.Append("/css/validate.css\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
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
	templateBuilder.Append("/js/mvalidate.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/dfkc");
	templateBuilder.Append("/js/mvalidate-extend.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n$(document).ready(function(){\r\n    AjaxInitForm('#loginForm', '#btnSubmit', 0 , '#turl');\r\n});\r\n</");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body ontouchstart>\r\n<div class=\"page\">\r\n    <!--页面头部-->\r\n    <div class=\"form-logo\">\r\n        <img src=\"");
	templateBuilder.Append("/templates/dfkc");
	templateBuilder.Append("/images/logo.png\" />\r\n    </div>\r\n    <!--/页面头部-->\r\n  \r\n    <!--页面内容-->\r\n    <div class=\"page__bd\">\r\n        <!--表单容器-->\r\n        <form id=\"loginForm\" name=\"loginForm\" class=\"form-box\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_login&site_id=");
	templateBuilder.Append(Utils.ObjectToStr(site.id));
	templateBuilder.Append("\">\r\n            <div class=\"weui-cells weui-cells_form\">\r\n                <div class=\"weui-cell\">\r\n                    <div class=\"weui-cell__hd\">\r\n                        <label class=\"weui-label\">账户名</label>\r\n                    </div>\r\n                    <div class=\"weui-cell__bd\">\r\n                        <input id=\"txtUserName\" name=\"txtUserName\" type=\"text\" class=\"weui-input\" placeholder=\"用户名/手机/邮箱\" data-validate=\"username\" />\r\n                    </div>                </div>\r\n                <div class=\"weui-cell\">\r\n                    <div class=\"weui-cell__hd\">\r\n                        <label class=\"weui-label\">密&nbsp;&nbsp;&nbsp;码</label>\r\n                    </div>\r\n                    <div class=\"weui-cell__bd\">\r\n                        <input id=\"txtPassword\" name=\"txtPassword\" type=\"password\" class=\"weui-input\" placeholder=\"请输入密码\" data-validate=\"password\" />\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <label for=\"chkRemember\" class=\"weui-agree\">\r\n                <input id=\"chkRemember\" name=\"chkRemember\" type=\"checkbox\" class=\"weui-agree__checkbox\"/>\r\n                <span class=\"weui-agree__text\">\r\n                    记住登录 <a href=\"");
	templateBuilder.Append(linkurl("repassword"));

	templateBuilder.Append("\" class=\"right\">忘记密码</a>\r\n                </span>\r\n            </label>\r\n            <div class=\"weui-btn-area\">\r\n                <input id=\"btnSubmit\" name=\"btnSubmit\" type=\"submit\" class=\"weui-btn weui-btn_primary\" value=\"立即登录\" />\r\n                <a class=\"weui-btn weui-btn_default\" href=\"");
	templateBuilder.Append(linkurl("register"));

	templateBuilder.Append("\">免费注册</a>\r\n            </div>\r\n        </div>\r\n        </form>\r\n        <input id=\"turl\" name=\"turl\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(turl));
	templateBuilder.Append("\" /><!--记住上一页网址-->\r\n        \r\n        <!--/表单容器-->\r\n    \r\n        <!--版权信息-->\r\n        ");

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


	templateBuilder.Append("\r\n        <!--/底部导航-->\r\n    \r\n  </div>\r\n  <!--/页面内容-->\r\n\r\n</div>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
