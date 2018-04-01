<%@ Page Language="C#" AutoEventWireup="true" Inherits="YueBonSoft.Web.UI.Page.usergoodsopportunitys" ValidateRequest="false" %>
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
	const int pagesize = 10;

	templateBuilder.Append("<!DOCTYPE html>\r\n<!--HTML5 doctype-->\r\n<html>\r\n<head>\r\n<meta charset=\"utf-8\">\r\n<meta name=\"viewport\" content=\"width=device-width,initial-scale=1,user-scalable=0\">\r\n<title>我的货源 - ");
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
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n    function ExecPostBack(checkValue,ty) {\r\n        if (ty == \"del\") {\r\n            ExecDeletehy('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_goodsopportunity_delete', checkValue, '/user/goodsopportunitys-list.html');\r\n        }\r\n        if (ty == \"update\") {\r\n            ExecUpdateHYStatus('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_goodsopportunity_status', checkValue, '/user/goodsopportunitys-list.html');\r\n        }\r\n    }\r\n</");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body ontouchstart>\r\n<div class=\"page\">\r\n    <!--页面头部-->\r\n    <div class=\"header\">\r\n        <a class=\"back\" href=\"javascript:history.back();\">\r\n            <i class=\"iconfont icon-arrow-left\"></i>\r\n        </a>\r\n        <h3>我的货源</h3>\r\n        <div class=\"right\">\r\n            <a class=\"weui-cell_access weui-cell_link\"  href=\"");
	templateBuilder.Append(linkurl("usergoodsopportunity_edit","add"));

	templateBuilder.Append("\">\r\n                <i class=\"iconfont icon-edit\"></i>\r\n            </a>\r\n            <a class=\"weui-cell_access weui-cell_link\" href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">\r\n                <i class=\"iconfont icon-user\"></i>\r\n            </a>\r\n        </div>\r\n    </div>\r\n    <!--/页面头部-->\r\n    \r\n    <div class=\"page__bd\">\r\n        <div class=\"weui-panel weui-panel_access\" style=\"margin-top:10px;\">\r\n            <div class=\"weui-panel__hd\">如果已成交的请设置为“已交易”</div>\r\n            <div class=\"weui-panel__bd\">\r\n                <div class=\"detail-list\">\r\n                    <ul>\r\n                        <!--取得一个分页DataTable-->\r\n                        ");
	DataTable newsList = get_article_list("goodsopportunity",0,pagesize, page, "user_name='"+userModel.user_name+"'", out totalcount, out pagelist, "usergoodsopportunitys", 0, "__id__");

	foreach(DataRow dr in newsList.Rows)
	{

	templateBuilder.Append("\r\n                        <li>\r\n                            <div class=\"detail-bd\">\r\n                                <div class=\"list-box\">\r\n                                    <div class=\"txt-box\">\r\n                                        <h2>" + Utils.ObjectToStr(dr["title"]) + "</h2>\r\n                                        ");
	string senddate = Utils.ObjectToStr(dr["sendDate"]);

	if (Utils.ObjectToStr(dr["status"])=="3")
	{

	templateBuilder.Append("\r\n                                        <i class=\"datetip\">已交易</i>\r\n                                        \r\n                                        ");
	}	//end for if

	templateBuilder.Append("\r\n                                        <p class=\"note\">" + Utils.ObjectToStr(dr["ExpressLine"]) + "</p>\r\n                                        <p class=\"note\">重量：" + Utils.ObjectToStr(dr["GoodsWeight"]) + "&nbsp;&nbsp; 体积：" + Utils.ObjectToStr(dr["GoodsVolume"]) + "立方</p>\r\n                                        <p class=\"note\">期望运费：<em class=\"price\">" + Utils.ObjectToStr(dr["ExpectMoney"]) + "元</em></p>\r\n                                        <p class=\"note\">电话：" + Utils.ObjectToStr(dr["telphone"]) + "</p>\r\n                                        <p class=\"note\">手机：" + Utils.ObjectToStr(dr["mobile"]) + "</p>\r\n                                        <p class=\"note\">联系人：" + Utils.ObjectToStr(dr["contact"]) + "</p>\r\n                                        <p class=\"note\">发货时间：");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(dr["sendDate"])).ToString("yyyy年MM月dd日"));

	templateBuilder.Append("</p>\r\n                                        <p class=\"note\"><i class=\"iconfont icon-date\"></i>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(dr["add_time"])).ToString("yyyy年MM月dd日HH:MM"));

	templateBuilder.Append("</p>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                            <div class=\"detail-ft\">\r\n                                <div class=\"ft-btn\">\r\n                                    <div class=\"btn-box\">\r\n                                        <a href=\"javascript:;\" onclick=\"ExecPostBack('" + Utils.ObjectToStr(dr["id"]) + "','update');\">\r\n                                            ");
	if (Utils.ObjectToStr(dr["status"])=="3")
	{

	templateBuilder.Append("\r\n                                            已交易\r\n                                            ");
	}
	else
	{

	templateBuilder.Append("\r\n                                            未交易\r\n                                            ");
	}	//end for if

	templateBuilder.Append("\r\n                                        </a>\r\n                                        <a href=\"");
	templateBuilder.Append(linkurl("goodsopportunity_show",Utils.ObjectToStr(dr["id"]),"1"));

	templateBuilder.Append("\">查看</a>\r\n                                        <a href=\"");
	templateBuilder.Append(linkurl("usergoodsopportunity_edit","edit",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">\r\n                                            <i class=\"iconfont icon-edit\"></i>\r\n                                            编辑\r\n                                        </a>\r\n                                        <a href=\"javascript:;\" onclick=\"ExecPostBack('" + Utils.ObjectToStr(dr["id"]) + "','del');\">\r\n                                            <i class=\"iconfont icon-delete\"></i>\r\n                                            删除\r\n                                        </a>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                        </li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!--分页页码-->\r\n        <div class=\"page-list\">\r\n            ");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("\r\n        </div>\r\n        <!--/分页页码-->\r\n        \r\n    </div>\r\n    \r\n    <!--版权信息-->\r\n    ");

	templateBuilder.Append("        <div class=\"weui-footer footer\">\r\n            <p class=\"weui-footer__text\">");
	templateBuilder.Append(Utils.ObjectToStr(site.copyright));
	templateBuilder.Append("</p>\r\n        </div>");


	templateBuilder.Append("\r\n    <!--/版权信息-->\r\n\r\n    <!--底部导航-->\r\n    ");

	templateBuilder.Append("        <div class=\"weui-tab foot-nav\">\r\n            <div class=\"weui-tab__panel\">\r\n\r\n            </div>\r\n            <div class=\"weui-tabbar\">\r\n                <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\" class=\"weui-tabbar__item\">\r\n                    <i class=\"iconfont icon-home weui-tabbar__icon\"></i>\r\n                    <p class=\"weui-tabbar__label\">首页</p>\r\n                </a>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("lineselect"));

	templateBuilder.Append("\" class=\"weui-tabbar__item\">\r\n                    <span class=\"item-box\">\r\n                        <i class=\"iconfont icon-address weui-tabbar__icon\"></i>\r\n                    </span>\r\n                    <p class=\"weui-tabbar__label\">专线</p>\r\n                </a>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("\" class=\"weui-tabbar__item\">\r\n                    <i class=\"iconfont icon-search weui-tabbar__icon\"></i>\r\n                    <p class=\"weui-tabbar__label\">搜索</p>\r\n                </a>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\" class=\"weui-tabbar__item\">\r\n                    <i class=\"iconfont icon-user weui-tabbar__icon\"></i>\r\n                    <p class=\"weui-tabbar__label\">会员</p>\r\n                </a>\r\n            </div>\r\n        </div>");


	templateBuilder.Append("\r\n    <!--/底部导航-->\r\n\r\n</div>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
