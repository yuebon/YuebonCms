<%@ Page Language="C#" AutoEventWireup="true" Inherits="YueBonSoft.Web.UI.Page.index" ValidateRequest="false" %>
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
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n    $(document).ready(function(){\r\n        \r\n        //选中Tab\r\n        $(\".weui-tabbar a\").eq(0).addClass(\"weui-bar__item_on\");\r\n    });\r\n</");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body ontouchstart>\r\n<div class=\"page\">\r\n    <!--页面头部-->\r\n    ");

	templateBuilder.Append("    <div class=\"header\">\r\n        <div class=\"logo\">\r\n            <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">\r\n                <img src=\"");
	templateBuilder.Append("/templates/dfkc");
	templateBuilder.Append("/images/logo.png\" />\r\n            </a>\r\n            <a href=\"#\">上海站</a>\r\n        </div>\r\n        <div class=\"right\"> \r\n            <a href=\"");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("\">\r\n                <i class=\"iconfont icon-search\"></i>\r\n            </a>\r\n            <a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">\r\n                <i class=\"iconfont icon-user\"></i>\r\n            </a>\r\n        </div>\r\n    </div>");


	templateBuilder.Append("\r\n    <!--/页面头部-->\r\n  \r\n    <!--页面内容-->\r\n    <div class=\"page__bd\">\r\n        <div class=\"weui-panel__hd\">\r\n            最新货源：\r\n            ");
	DataTable focusList = get_article_list("goodsopportunity", 0, 1, "status=0");

	foreach(DataRow dr in focusList.Rows)
	{

	templateBuilder.Append("\r\n            <a href=\"");
	templateBuilder.Append(linkurl("goodsopportunity_show",Utils.ObjectToStr(dr["id"]),"1"));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "</a>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n        </div>\r\n        <!--首页图标导航-->\r\n        <div class=\"function\">\r\n            <a href=\"");
	templateBuilder.Append(linkurl("lineselect"));

	templateBuilder.Append("\" class=\"w31 f1\">\r\n                <div class=\"weui-grid__icon\">\r\n                    <i class=\"iconfontx iconx-yunshuzhongwuliu-xianxing\"></i>\r\n                </div>\r\n                <p class=\"weui-grid__label\">专线查询</p>\r\n            </a>\r\n            <a href=\"/goodsopportunity/0.html\" class=\"w31 f2\">\r\n                <div class=\"weui-grid__icon\">\r\n                    <i class=\"iconfontx iconx-chaibaoguoqujian-xianxing\"></i>\r\n                </div>\r\n                <p class=\"weui-grid__label\">货源查询</p>\r\n            </a>\r\n            <a href=\"");
	templateBuilder.Append(linkurl("usergoodsopportunity_edit","add"));

	templateBuilder.Append("\" class=\"w31 f3\">\r\n                <div class=\"weui-grid__icon\">\r\n                    <i class=\"iconfont icon-edit\"></i>\r\n                </div>\r\n                <p class=\"weui-grid__label\">货源发布</p>\r\n            </a>\r\n            <a href=\"http://m.56kc.cn/ProfessionalShunting/ProfessionalShuntingList\" class=\"w23 f4\">\r\n                <div class=\"weui-grid__icon\">\r\n                    <i class=\"iconfontx iconx-yunshuzhongwuliu-xianxing\"></i>\r\n                </div>\r\n                <p class=\"weui-grid__label\">整车运输</p>\r\n            </a>\r\n            <a href=\"http://m.56kc.cn/ShortCityHauling/ShortCityHaulingList\" class=\"w23 f5\">\r\n                <div class=\"weui-grid__icon\">\r\n                    <i class=\"iconfontx iconx-jijianfasong-xianxing\"></i>\r\n                </div>\r\n                <p class=\"weui-grid__label\">市内短驳</p>\r\n            </a>\r\n            <a href=\"http://m.56kc.cn/VenueForLease/VenueForLeaseList\" class=\"w23 f6\">\r\n                <div class=\"weui-grid__icon\">\r\n                    <i class=\"iconfontx iconx-moduanwangdian-xianxing\"></i>\r\n                </div>\r\n                <p class=\"weui-grid__label\">场地招租</p>\r\n            </a>\r\n            <a href=\"http://m.56kc.cn/JobRecruitment/JobRecruitmentList\" class=\"w23 f7\">\r\n                <div class=\"weui-grid__icon\">\r\n                    <i class=\"iconfontx iconx-hezuoguanxi-xianxing\"></i>\r\n                </div>\r\n                <p class=\"weui-grid__label\">求职招聘</p>\r\n            </a>\r\n            <a href=\"http://mp.weixin.qq.com/s/BbdVwb0CNkr0MdFo9grAmg\" class=\"w31 f8\">\r\n                <div class=\"weui-grid__icon\">\r\n                    <i class=\"iconfontx iconx-qiyeyuanquwuye-xianxing\"></i>\r\n                </div>\r\n                <p class=\"weui-grid__label\">公司注册</p>\r\n            </a>\r\n            <a href=\"#\" class=\"w31 f9\">\r\n                <div class=\"weui-grid__icon\">\r\n                    <i class=\"iconfontx iconx-zhangdan-xianxing\"></i>\r\n                </div>\r\n                <p class=\"weui-grid__label\">代理记账</p>\r\n            </a>\r\n            <a href=\"http://mp.weixin.qq.com/s/IMT4bi_T3jSDgJxwMvYEGg\" class=\"w31 f10\">\r\n                <div class=\"weui-grid__icon\">\r\n                    <i class=\"iconfontx iconx-caiwu-xianxing\"></i>\r\n                </div>\r\n                <p class=\"weui-grid__label\">融资贷款</p>\r\n            </a>\r\n\r\n            <a href=\"http://mp.weixin.qq.com/s/KfAxSmVriDLn4u6nrdmZhQ\" class=\"w23 f11\">\r\n                <div class=\"weui-grid__icon\">\r\n                    <i class=\"iconfont icon-pic\"></i>\r\n                </div>\r\n                <p class=\"weui-grid__label\">VI设计</p>\r\n            </a>\r\n            <a href=\"http://mp.weixin.qq.com/s/t2WBo8h6ZBV1EyOz-S3brQ\" class=\"w23 f12\">\r\n                <div class=\"weui-grid__icon\">\r\n                    <i class=\"iconfontx iconx-jiesuan-xianxing\"></i>\r\n                </div>\r\n                <p class=\"weui-grid__label\">商标注册</p>\r\n            </a>\r\n            <a href=\"#\" class=\"w23 f13\">\r\n                <div class=\"weui-grid__icon\">\r\n                    <i class=\"iconfontx iconx-anquanbaozhang-xianxing\"></i>\r\n                </div>\r\n                <p class=\"weui-grid__label\">综合保险</p>\r\n            </a>\r\n            <a href=\"#\" class=\"w23 f14\">\r\n                <div class=\"weui-grid__icon\">\r\n                    <i class=\"iconfontx iconx-tijikongjian-xianxing\"></i>\r\n                </div>\r\n                <p class=\"weui-grid__label\">物流培训</p>\r\n            </a>\r\n\r\n            <a href=\"http://m.56kc.cn/LinePublishSite/LinePublishSite\" class=\"w48 f14\">\r\n                <div class=\"weui-grid__icon\">\r\n                    <i class=\"iconfontx iconx-moduanwangdian-xianxing\"></i>\r\n                </div>\r\n                <p class=\"weui-grid__label\">站点查询</p>\r\n            </a>\r\n\r\n            <a href=\"http://m.56kc.cn/LogisticsLawyer/LogisticMatigService\" class=\"w48 f15\">\r\n                <div class=\"weui-grid__icon\">\r\n                    <i class=\"iconfontx iconx-chaibaoguoqujian-xianxing\"></i>\r\n                </div>\r\n                <p class=\"weui-grid__label\">更多服务</p>\r\n            </a>\r\n        </div>\r\n        <!--/首页图标导航-->\r\n        <!--版权信息-->\r\n        ");

	templateBuilder.Append("        <div class=\"weui-footer footer\">\r\n            <p class=\"weui-footer__text\">");
	templateBuilder.Append(Utils.ObjectToStr(site.copyright));
	templateBuilder.Append("</p>\r\n        </div>");


	templateBuilder.Append("\r\n        <!--/版权信息-->\r\n        <!--底部导航-->\r\n        ");

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
