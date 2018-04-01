<%@ Page Language="C#" AutoEventWireup="true" Inherits="YueBonSoft.Web.UI.Page.useramount" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="YueBonSoft.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by YueBoncms Template Engine at 2018-04-01 12:32:08.
		本页面代码由YueBoncms模板引擎生成于 2018-04-01 12:32:08. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!doctype html>\r\n<html>\r\n<head>\r\n<meta charset=\"utf-8\">\r\n<title>账户余额 - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/ui-dialog.css\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/css/style.css\" />\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/dialog-plus-min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n<!--页面头部-->\r\n");

	templateBuilder.Append("<!--[if lte IE 8]>\r\n    <div class=\"text-center padding-top-50 padding-bottom-50 bg-blue-grey-100\">\r\n    <p class=\"browserupgrade font-size-18\">你正在使用一个<strong>过时</strong>的浏览器。请<a href=\"http://browsehappy.com/\" target=\"_blank\">升级您的浏览器</a>，以提高您的体验。</p>\r\n    </div>\r\n<![endif]-->\r\n<nav class=\"navbar navbar-default met-nav navbar-fixed-top\" role=\"navigation\">\r\n    <div class=\"container\">\r\n        <div class=\"row\">\r\n            <div class=\"navbar-header\">\r\n                <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\" class=\"navbar-logo vertical-align\" title=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_title));
	templateBuilder.Append("\">\r\n                    <div class=\"vertical-align-middle\"><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.logo));
	templateBuilder.Append("\" alt=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_title));
	templateBuilder.Append("\" title=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_title));
	templateBuilder.Append("\" /></div>\r\n                </a>\r\n            </div>\r\n            <div class=\"pull-right econav\">\r\n                <ul>\r\n                    <li>\r\n                        <button type=\"button\" data-target=\"#site-navbar-search\" data-toggle=\"modal\">\r\n                            <span class=\"sr-only\">Toggle Search</span>\r\n                            <i class=\"icon fa-search\"></i>\r\n                        </button>\r\n                    </li>\r\n                    <li>\r\n                        <div style=\"\"><a href=\"http://en.yanxuan-mould.com/\">English</a></div>\r\n                    </li>\r\n                    <button type=\"button\" class=\"navbar-toggle hamburger hamburger-close collapsed\"\r\n                            data-target=\"#example-navbar-default-collapse\" data-toggle=\"collapse\">\r\n                        <span class=\"sr-only\">Toggle navigation</span>\r\n                        <span class=\"hamburger-bar\"></span>\r\n                    </button>\r\n                 </ul>\r\n            </div>\r\n            <div class=\"collapse navbar-collapse navbar-collapse-toolbar\" id=\"example-navbar-default-collapse\">\r\n                <ul class=\"nav navbar-nav navbar-right navlist\">\r\n                    <li><a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\" title=\"网站首页\" class=\"link active\">网站首页</a></li>\r\n                    <li class=\"dropdown margin-left-30 ecodropdown\">\r\n                        <a class=\"dropdown-toggle link animation-slide-top\"\r\n                            data-toggle=\"dropdown\" data-hover=\"dropdown\"\r\n                            href=\"");
	templateBuilder.Append(linkurl("solutions","yanfa"));

	templateBuilder.Append("\"\r\n                            aria-expanded=\"false\"\r\n                            role=\"button\" title=\"产品&解决方案\">产品&解决方案<span class=\"caret\"></span></a>\r\n                        <ul class=\"dropdown-menu dropdown-menu-right bullet\" role=\"menu\">\r\n                            ");
	DataTable capacityList = get_article_list("solutions", 10,"status=0");

	int cadr__loop__id=0;
	foreach(DataRow cadr in capacityList.Rows)
	{
		cadr__loop__id++;


	templateBuilder.Append("\r\n                            <li><a class=\"animation-slide-top\" href=\"");
	templateBuilder.Append("<%linkurl(\" solutions\"," + Utils.ObjectToStr(cadr["call_index"]) + ")%>");
	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(cadr["title"]) + "\">" + Utils.ObjectToStr(cadr["title"]) + "</a></li>\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                        </ul>\r\n                    </li>\r\n                    <li class=\"dropdown margin-left-30 ecodropdown\">\r\n                        <a class=\"dropdown-toggle link animation-slide-top\"\r\n                            data-toggle=\"dropdown\" data-hover=\"dropdown\"\r\n                            href=\"");
	templateBuilder.Append(linkurl("goods"));

	templateBuilder.Append("\"\r\n                            aria-expanded=\"false\"\r\n                            role=\"button\"\r\n                            title=\"产品展示\">产品展示<span class=\"caret\"></span></a>\r\n                        <ul class=\"dropdown-menu dropdown-menu-right bullet\" role=\"menu\">\r\n                            <!--<li class=\"visible-xs-block\"><a href=\"");
	templateBuilder.Append(linkurl("goods"));

	templateBuilder.Append("\" title=\"全部\">全部</a></li>-->\r\n                            ");
	DataTable gdcaList = get_category_list("goods", 0);

	int gdcadr__loop__id=0;
	foreach(DataRow gdcadr in gdcaList.Rows)
	{
		gdcadr__loop__id++;


	templateBuilder.Append("\r\n                            <li><a class=\"animation-slide-top\" href=\"");
	templateBuilder.Append(linkurl("goods_list",Utils.ObjectToStr(gdcadr["id"])));

	templateBuilder.Append("\" class=\"\" title=\"" + Utils.ObjectToStr(gdcadr["title"]) + "\">" + Utils.ObjectToStr(gdcadr["title"]) + "</a></li>\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                        </ul>\r\n                    </li>\r\n                    <li class=\"dropdown margin-left-30 ecodropdown\">\r\n                        <a class=\"dropdown-toggle link animation-slide-top\"\r\n                            data-toggle=\"dropdown\" data-hover=\"dropdown\"\r\n                            href=\"");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("\"\r\n                            aria-expanded=\"false\"\r\n                            role=\"button\"\r\n                            title=\"新闻资讯\">新闻资讯<span class=\"caret\"></span></a>\r\n                        <ul class=\"dropdown-menu dropdown-menu-right bullet\" role=\"menu\">\r\n                            <li class=\"visible-xs-block\"><a href=\"");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("\" title=\"全部\">全部</a></li>\r\n                            ");
	DataTable newscategoryList = get_category_child_list("news",0);

	foreach(DataRow hdcdr in newscategoryList.Rows)
	{

	templateBuilder.Append("\r\n                            <li><a class=\"animation-slide-top\" href=\"");
	templateBuilder.Append(linkurl("news_list",Utils.ObjectToStr(hdcdr["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(hdcdr["title"]) + "\">" + Utils.ObjectToStr(hdcdr["title"]) + "</a></li>\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                        </ul>\r\n                    </li>\r\n\r\n                    <li class=\"margin-left-30\"><a href=\"");
	templateBuilder.Append(linkurl("case"));

	templateBuilder.Append("\" title=\"客户案例\" class=\"link animation-slide-top\">客户案例</a></li>\r\n                    \r\n                    <li class=\"dropdown margin-left-30 ecodropdown\">\r\n                        <a class=\"dropdown-toggle link animation-slide-top\" data-toggle=\"dropdown\" data-hover=\"dropdown\"\r\n                           href=\"");
	templateBuilder.Append(linkurl("content","about"));

	templateBuilder.Append("\" \r\n                        aria-expanded=\"false\"\r\n                            role=\"button\" title=\"关于我们\">关于我们<span class=\"caret\"></span></a>\r\n                        <ul class=\"dropdown-menu dropdown-menu-right bullet\" role=\"menu\">\r\n                            ");
	DataTable aboutList = get_article_list("content", 10,"status=0");

	int abdr__loop__id=0;
	foreach(DataRow abdr in aboutList.Rows)
	{
		abdr__loop__id++;


	templateBuilder.Append("\r\n                            <li><a class=\"animation-slide-top\" href=\"");
	templateBuilder.Append(linkurl("content",Utils.ObjectToStr(abdr["call_index"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(abdr["title"]) + "\">" + Utils.ObjectToStr(abdr["title"]) + "</a></li>\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                        </ul>\r\n                    </li>\r\n                    <li class=\"margin-left-30\"><a href=\"");
	templateBuilder.Append(linkurl("jobs"));

	templateBuilder.Append("\" title=\"加入我们\" class=\"link animation-slide-top\">加入我们</a></li>\r\n                    <!--<li class=\"margin-left-0\"><a href=\"");
	templateBuilder.Append(linkurl("down"));

	templateBuilder.Append("\" title=\"资料下载\" class=\"link animation-slide-top\">资料下载</a></li>-->\r\n                    <li class=\"margin-left-30\" ><a href=\"");
	templateBuilder.Append(linkurl("content","contact"));

	templateBuilder.Append("\" title=\"联系我们\" class=\"link animation-slide-top\">联系我们</a></li>\r\n                </ul>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</nav>\r\n\r\n");


	templateBuilder.Append("\r\n<!--/页面头部-->\r\n\r\n<!--当前位置-->\r\n<div class=\"section\">\r\n    <div class=\"location\">\r\n        <span>当前位置：</span>\r\n        <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a> &gt;\r\n        <a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">会员中心</a>\r\n        <a href=\"");
	templateBuilder.Append(linkurl("useramount","list"));

	templateBuilder.Append("\">账户余额</a>\r\n    </div>\r\n</div>\r\n<!--/当前位置-->\r\n\r\n<div class=\"section clearfix\">\r\n    <!--页面左边-->\r\n    ");

	templateBuilder.Append("    <div class=\"left-260\">\r\n        <div class=\"bg-wrap\">\r\n            <div class=\"avatar-box\">\r\n                <a class=\"img-box\" href=\"");
	templateBuilder.Append(linkurl("usercenter","avatar"));

	templateBuilder.Append("\">\r\n                ");
	if (userModel.avatar!="")
	{

	templateBuilder.Append("\r\n                    <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.avatar));
	templateBuilder.Append("\" />\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <i class=\"iconfont icon-user-full\"></i>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n                </a>\r\n                <h3>\r\n                ");
	if (userModel.nick_name!="")
	{

	templateBuilder.Append("\r\n                    ");
	templateBuilder.Append(Utils.ObjectToStr(userModel.nick_name));
	templateBuilder.Append("\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                    ");
	templateBuilder.Append(Utils.ObjectToStr(userModel.user_name));
	templateBuilder.Append("\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n                </h3>\r\n                <p><b>");
	templateBuilder.Append(Utils.ObjectToStr(groupModel.title));
	templateBuilder.Append("</b></p>\r\n            </div>\r\n            \r\n            <div class=\"center-nav\">\r\n                <ul>\r\n                    <li>\r\n                        <h2>\r\n                            <i class=\"iconfont icon-order\"></i>\r\n                            <span>订单管理</span>\r\n                        </h2>\r\n                        <div class=\"list\">\r\n                            <p><a href=\"");
	templateBuilder.Append(linkurl("userorder","list"));

	templateBuilder.Append("\"><i class=\"iconfont icon-arrow-right\"></i>交易订单</a></p>\r\n                            <p><a href=\"");
	templateBuilder.Append(linkurl("userorder","close"));

	templateBuilder.Append("\"><i class=\"iconfont icon-arrow-right\"></i>失效订单</a></p>\r\n                            <p><a href=\"");
	templateBuilder.Append(linkurl("useraddress"));

	templateBuilder.Append("\"><i class=\"iconfont icon-arrow-right\"></i>收货地址</a></p>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <h2>\r\n                            <i class=\"iconfont icon-amount\"></i>\r\n                            <span>余额管理</span>\r\n                        </h2>\r\n                        <div class=\"list\">\r\n                            <p><a href=\"");
	templateBuilder.Append(linkurl("useramount","recharge"));

	templateBuilder.Append("\"><i class=\"iconfont icon-arrow-right\"></i>账户充值</a></p>\r\n                            <p><a href=\"");
	templateBuilder.Append(linkurl("useramount","log"));

	templateBuilder.Append("\"><i class=\"iconfont icon-arrow-right\"></i>充值记录</a></p>\r\n                            <p><a href=\"");
	templateBuilder.Append(linkurl("useramount","list"));

	templateBuilder.Append("\"><i class=\"iconfont icon-arrow-right\"></i>收支明细</a></p>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <h2>\r\n                            <i class=\"iconfont icon-point\"></i>\r\n                            <span>积分管理</span>\r\n                        </h2>\r\n                        <div class=\"list\">\r\n                            <p><a href=\"");
	templateBuilder.Append(linkurl("userpoint","convert"));

	templateBuilder.Append("\"><i class=\"iconfont icon-arrow-right\"></i>积分兑换</a></p>\r\n                            <p><a href=\"");
	templateBuilder.Append(linkurl("userpoint","list"));

	templateBuilder.Append("\"><i class=\"iconfont icon-arrow-right\"></i>积分明细</a></p>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <h2>\r\n                            <i class=\"iconfont icon-comment\"></i>\r\n                            <span>站内消息</span>\r\n                        </h2>\r\n                        <div class=\"list\">\r\n                            <p><a href=\"");
	templateBuilder.Append(linkurl("usermessage","system"));

	templateBuilder.Append("\"><i class=\"iconfont icon-arrow-right\"></i>系统消息</a></p>\r\n                            <p><a href=\"");
	templateBuilder.Append(linkurl("usermessage","accept"));

	templateBuilder.Append("\"><i class=\"iconfont icon-arrow-right\"></i>收件箱</a></p>\r\n                            <p><a href=\"");
	templateBuilder.Append(linkurl("usermessage","send"));

	templateBuilder.Append("\"><i class=\"iconfont icon-arrow-right\"></i>发件箱</a></p>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <h2>\r\n                            <i class=\"iconfont icon-user\"></i>\r\n                            <span>账户管理</span>\r\n                        </h2>\r\n                        <div class=\"list\">\r\n                            <p><a href=\"");
	templateBuilder.Append(linkurl("usercenter","invite"));

	templateBuilder.Append("\"><i class=\"iconfont icon-arrow-right\"></i>邀请注册</a></p>\r\n                            <p><a href=\"");
	templateBuilder.Append(linkurl("usercenter","proinfo"));

	templateBuilder.Append("\"><i class=\"iconfont icon-arrow-right\"></i>账户资料</a></p>\r\n                            <p><a href=\"");
	templateBuilder.Append(linkurl("usercenter","avatar"));

	templateBuilder.Append("\"><i class=\"iconfont icon-arrow-right\"></i>头像设置</a></p>\r\n                            <p><a href=\"");
	templateBuilder.Append(linkurl("usercenter","password"));

	templateBuilder.Append("\"><i class=\"iconfont icon-arrow-right\"></i>修改密码</a></p>\r\n                            <p><a href=\"");
	templateBuilder.Append(linkurl("usercenter","exit"));

	templateBuilder.Append("\"><i class=\"iconfont icon-arrow-right\"></i>退出登录</a></p>\r\n                        </div>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n                \r\n        </div>\r\n    </div>");


	templateBuilder.Append("\r\n    <!--/页面左边-->\r\n    \r\n    <!--页面左边-->\r\n    <div class=\"right-auto\">\r\n        <div class=\"bg-wrap\" style=\"min-height:765px;\">\r\n            \r\n            ");
	if (action=="recharge")
	{

	templateBuilder.Append("\r\n            <!--账户充值-->\r\n            <link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/validate.css\" />\r\n            <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.form.min.js\"></");
	templateBuilder.Append("script>\r\n            <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/Validform_v5.3.2_min.js\"></");
	templateBuilder.Append("script>\r\n            <script type=\"text/javascript\">\r\n            $(function(){\r\n                //初始化表单\r\n                AjaxInitForm('#rechargeForm', '#btnSubmit', 0);\r\n            });\r\n            </");
	templateBuilder.Append("script>\r\n            <div class=\"sub-tit\">\r\n                <a class=\"add\" href=\"javascript:history.go(-1);\"><i class=\"iconfont icon-reply\"></i>返回</a>\r\n                <ul>\r\n                    <li class=\"selected\">\r\n                        <a href=\"");
	templateBuilder.Append(linkurl("useramount","recharge"));

	templateBuilder.Append("\">账户充值</a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"");
	templateBuilder.Append(linkurl("useramount","log"));

	templateBuilder.Append("\">充值记录</a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"");
	templateBuilder.Append(linkurl("useramount","list"));

	templateBuilder.Append("\">收支明细</a>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            \r\n            <form id=\"rechargeForm\" name=\"rechargeForm\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_amount_recharge&site_id=");
	templateBuilder.Append(Utils.ObjectToStr(site.id));
	templateBuilder.Append("\">\r\n                <div class=\"form-box\">\r\n                    <dl class=\"form-group\">\r\n                        <dt>账户余额：</dt>\r\n                        <dd>\r\n                            当前账户金额为：<b>￥");
	templateBuilder.Append(Utils.ObjectToStr(userModel.amount));
	templateBuilder.Append("</b> 元\r\n                        </dd>\r\n                    </dl>\r\n                    <dl class=\"form-group\">\r\n                        <dt>充值金额：</dt>\r\n                        <dd>\r\n                            <input name=\"order_amount\" id=\"order_amount\" type=\"text\" class=\"input code\" onkeydown=\"return checkNumber(event);\" datatype=\"n\"  nullmsg=\"请输入金额\" sucmsg=\" \" /> 元\r\n                        </dd>\r\n                    </dl>\r\n                    <dl class=\"form-group\">\r\n                        <dt>支付方式：</dt>\r\n                        <dd>\r\n                            ");
	DataTable payList = get_payment_list(0, "type=1 and payment_id>2 and site_id="+site.id);

	templateBuilder.Append(" <!--取得一个DataTable-->\r\n                            ");
	int dr__loop__id=0;
	foreach(DataRow dr in payList.Rows)
	{
		dr__loop__id++;


	if (dr__loop__id==(payList.Rows.Count))
	{

	templateBuilder.Append("\r\n                                    <label class=\"mart\"><input name=\"payment_id\" type=\"radio\" value=\"" + Utils.ObjectToStr(dr["id"]) + "\" datatype=\"*\" sucmsg=\" \" /> " + Utils.ObjectToStr(dr["title"]) + "</label>\r\n                                ");
	}
	else
	{

	templateBuilder.Append("\r\n                                    <label class=\"mart\"><input name=\"payment_id\" type=\"radio\" value=\"" + Utils.ObjectToStr(dr["id"]) + "\" /> " + Utils.ObjectToStr(dr["title"]) + "</label>\r\n                                ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n                        </dd>\r\n                    </dl>\r\n                    <dl class=\"form-group\">\r\n                        <dd>\r\n                            <input id=\"btnSubmit\" name=\"btnSubmit\" type=\"submit\" value=\"确认充值\" class=\"submit\" />\r\n                        </dd>\r\n                    </dl>\r\n                </div>\r\n            </form>\r\n            <!--账户充值-->\r\n            \r\n            ");
	}
	else if (action=="log")
	{

	templateBuilder.Append("\r\n            <!--充值记录-->\r\n            <link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/pagination.css\" />\r\n            <script type=\"text/javascript\">\r\n            function ExecPostBack(checkValue) {\r\n                if (arguments.length == 1) {\r\n                    ExecDelete('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_recharge_delete', checkValue, '#turl');\r\n                }else{\r\n                    var valueArr = '';\r\n                    $(\"input[name='checkId']:checked\").each(function(i){\r\n                        valueArr += $(this).val();\r\n                        if(i < $(\"input[name='checkId']:checked\").length - 1){\r\n                            valueArr += \",\"\r\n                        }\r\n                    });\r\n                    ExecDelete('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_recharge_delete', valueArr, '#turl');\r\n                }\r\n            }\r\n            </");
	templateBuilder.Append("script>\r\n            \r\n            <div class=\"sub-tit\">\r\n                <a class=\"add\" href=\"javascript:history.go(-1);\"><i class=\"iconfont icon-reply\"></i>返回</a>\r\n                <ul>\r\n                    <li>\r\n                        <a href=\"");
	templateBuilder.Append(linkurl("useramount","recharge"));

	templateBuilder.Append("\">账户充值</a>\r\n                    </li>\r\n                    <li class=\"selected\">\r\n                        <a href=\"");
	templateBuilder.Append(linkurl("useramount","log"));

	templateBuilder.Append("\">充值记录</a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"");
	templateBuilder.Append(linkurl("useramount","list"));

	templateBuilder.Append("\">收支明细</a>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            \r\n            <div class=\"table-wrap\">\r\n                <table width=\"100%\" class=\"mtable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody>\r\n                ");
	DataTable rechargeList = get_user_recharge_list(10, page, "user_id="+userModel.id, out totalcount);

	templateBuilder.Append(" <!--取得一个DataTable-->\r\n                ");
	string pagelist = get_page_link(10, page, totalcount, "useramount", action, "__id__");

	templateBuilder.Append(" <!--取得分页页码列表-->\r\n                ");
	foreach(DataRow dr in rechargeList.Rows)
	{

	templateBuilder.Append("\r\n                    <tr>\r\n                        <td width=\"20\" align=\"center\">\r\n                            <input name=\"checkId\" class=\"checkall\" type=\"checkbox\" value=\"" + Utils.ObjectToStr(dr["id"]) + "\" >\r\n                        </td>\r\n                        <td>" + Utils.ObjectToStr(dr["add_time"]) + "</td>\r\n                        <td width=\"140\">" + Utils.ObjectToStr(dr["recharge_no"]) + "</td>\r\n                        <td width=\"80\">");
	templateBuilder.Append(get_payment_title(Utils.StrToInt(Utils.ObjectToStr(dr["payment_id"]), 0)).ToString());

	templateBuilder.Append("</td>\r\n                        <td width=\"80\">￥" + Utils.ObjectToStr(dr["amount"]) + "</td>\r\n                        <td width=\"50\">\r\n                            ");
	if (Utils.StrToInt(Utils.ObjectToStr(dr["status"]), 0)>0)
	{

	templateBuilder.Append("\r\n                                已完成\r\n                            ");
	}
	else
	{

	templateBuilder.Append("\r\n                                未完成\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                        </td>\r\n                        <td width=\"30\">\r\n                            <a onclick=\"ExecPostBack('" + Utils.ObjectToStr(dr["id"]) + "');\" href=\"javascript:;\">删除</a>\r\n                        </td>\r\n                    </tr>\r\n                ");
	}	//end for if

	if (rechargeList.Rows.Count==0)
	{

	templateBuilder.Append("\r\n                    <tr><td align=\"center\">暂无充值记录...</td></tr>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n                </tbody>\r\n                </table>\r\n                \r\n                <div class=\"page-foot\">\r\n                    <div class=\"flickr right\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("</div><!--放置页码列表-->\r\n                    <div class=\"btn-box\">\r\n                        <a onclick=\"checkAll(this);\" href=\"javascript:;\">全选</a>\r\n                        <a onclick=\"ExecPostBack();\" href=\"javascript:;\">删除</a>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <input id=\"turl\" type=\"hidden\" value=\"");
	templateBuilder.Append(linkurl("useramount","log"));

	templateBuilder.Append("\" /><!--存在跳转的URL值-->\r\n            <!--/充值记录-->\r\n            \r\n            ");
	}
	else if (action=="list")
	{

	templateBuilder.Append("\r\n            <!--收支明细-->\r\n            <link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/pagination.css\" />\r\n            <script type=\"text/javascript\">\r\n            function ExecPostBack(checkValue) {\r\n                if (arguments.length == 1) {\r\n                    ExecDelete('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_amount_delete', checkValue, '#turl');\r\n                }else{\r\n                    var valueArr = '';\r\n                    $(\"input[name='checkId']:checked\").each(function(i){\r\n                        valueArr += $(this).val();\r\n                        if(i < $(\"input[name='checkId']:checked\").length - 1){\r\n                            valueArr += \",\"\r\n                        }\r\n                    });\r\n                    ExecDelete('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_amount_delete', valueArr, '#turl');\r\n                }\r\n            }\r\n            </");
	templateBuilder.Append("script>\r\n            \r\n            <div class=\"sub-tit\">\r\n                <a class=\"add\" href=\"javascript:history.go(-1);\"><i class=\"iconfont icon-reply\"></i>返回</a>\r\n                <ul>\r\n                    <li>\r\n                        <a href=\"");
	templateBuilder.Append(linkurl("useramount","recharge"));

	templateBuilder.Append("\">账户充值</a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"");
	templateBuilder.Append(linkurl("useramount","log"));

	templateBuilder.Append("\">充值记录</a>\r\n                    </li>\r\n                    <li class=\"selected\">\r\n                        <a href=\"");
	templateBuilder.Append(linkurl("useramount","list"));

	templateBuilder.Append("\">收支明细</a>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            \r\n            <div class=\"table-wrap\">\r\n                <table width=\"100%\" class=\"mtable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody>\r\n                ");
	DataTable amountList = get_user_amount_list(10, page, "user_id="+userModel.id, out totalcount);

	templateBuilder.Append(" <!--取得一个DataTable-->\r\n                ");
	string pagelist = get_page_link(10, page, totalcount, "useramount", action, "__id__");

	templateBuilder.Append(" <!--取得分页页码列表-->\r\n                ");
	foreach(DataRow dr in amountList.Rows)
	{

	templateBuilder.Append("\r\n                    <tr>\r\n                        <td width=\"20\" align=\"center\">\r\n                            <input name=\"checkId\" class=\"checkall\" type=\"checkbox\" value=\"" + Utils.ObjectToStr(dr["id"]) + "\" >\r\n                        </td>\r\n                        <td width=\"150\">" + Utils.ObjectToStr(dr["add_time"]) + "</td>\r\n                        <td>" + Utils.ObjectToStr(dr["remark"]) + "</td>\r\n                        <td width=\"50\">\r\n                            ");
	if (Utils.StrToInt(Utils.ObjectToStr(dr["value"]), 0)>0)
	{

	templateBuilder.Append("\r\n                                +" + Utils.ObjectToStr(dr["value"]) + "\r\n                            ");
	}
	else
	{

	templateBuilder.Append("\r\n                                " + Utils.ObjectToStr(dr["value"]) + "\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                        </td>\r\n                        <td width=\"30\">\r\n                            <a onclick=\"ExecPostBack('" + Utils.ObjectToStr(dr["id"]) + "');\" href=\"javascript:;\">删除</a>\r\n                        </td>\r\n                    </tr>\r\n                ");
	}	//end for if

	if (amountList.Rows.Count==0)
	{

	templateBuilder.Append("\r\n                    <tr><td align=\"center\">暂无消费明细...</td></tr>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n                </tbody>\r\n                </table>\r\n                \r\n                <div class=\"page-foot\">\r\n                    <div class=\"flickr right\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("</div><!--放置页码列表-->\r\n                    <div class=\"btn-box\">\r\n                        <a onclick=\"checkAll(this);\" href=\"javascript:;\">全选</a>\r\n                        <a onclick=\"ExecPostBack();\" href=\"javascript:;\">删除</a>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <input id=\"turl\" type=\"hidden\" value=\"");
	templateBuilder.Append(linkurl("useramount","list"));

	templateBuilder.Append("\" /><!--存在跳转的URL值-->\r\n            <!--收支明细-->\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n            \r\n        </div>\r\n    </div>\r\n    <!--/页面左边-->\r\n</div>\r\n\r\n<!--页面底部-->\r\n");

	templateBuilder.Append("<div class=\"ecofootbg\">\r\n    <div class=\"met-footnav-eco\">\r\n        <div class=\"container\">\r\n            <div class=\"row mob-masonry\">\r\n                <div class=\"col-md-2 col-sm-4 col-xs-6 list ecoinfo text-left masonry-item\">\r\n                    <h4>关于延轩</h4>\r\n                    <ul>\r\n                        ");
	int ftabdr__loop__id=0;
	foreach(DataRow ftabdr in aboutList.Rows)
	{
		ftabdr__loop__id++;


	templateBuilder.Append("\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("content",Utils.ObjectToStr(ftabdr["call_index"])));

	templateBuilder.Append("\" target='_self' title=\"" + Utils.ObjectToStr(ftabdr["title"]) + "\">" + Utils.ObjectToStr(ftabdr["title"]) + "</a></li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n                <div class=\"col-md-2 col-sm-4 col-xs-6 list ecoinfo text-left masonry-item\">\r\n                    <h4>产品&解决方案</h4>\r\n                    <ul>\r\n                        ");
	int ftcadr__loop__id=0;
	foreach(DataRow ftcadr in capacityList.Rows)
	{
		ftcadr__loop__id++;


	templateBuilder.Append("\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("solutions",Utils.ObjectToStr(ftcadr["call_index"])));

	templateBuilder.Append("\" target='_self' title=\"" + Utils.ObjectToStr(ftcadr["title"]) + "\">" + Utils.ObjectToStr(ftcadr["title"]) + "</a></li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n                <div class=\"col-md-2 col-sm-4 col-xs-6 list ecoinfo text-left masonry-item\">\r\n                    <h4>产品</h4>\r\n                    <ul>\r\n                        ");
	int ftgdcadr__loop__id=0;
	foreach(DataRow ftgdcadr in gdcaList.Rows)
	{
		ftgdcadr__loop__id++;


	templateBuilder.Append("\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("goods_list",Utils.ObjectToStr(ftgdcadr["call_index"])));

	templateBuilder.Append("\" target='_self' title=\"" + Utils.ObjectToStr(ftgdcadr["title"]) + "\">" + Utils.ObjectToStr(ftgdcadr["title"]) + "</a></li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n\r\n                <div class=\"col-md-2 col-sm-4 col-xs-6 list ecoinfo text-left masonry-item\">\r\n                    <h4>新闻资讯</h4>\r\n                    <ul>\r\n                        ");
	foreach(DataRow fcdr in newscategoryList.Rows)
	{

	templateBuilder.Append("\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("news_list",Utils.ObjectToStr(fcdr["id"])));

	templateBuilder.Append("\" target='_self'  title=\"" + Utils.ObjectToStr(fcdr["title"]) + "\">" + Utils.ObjectToStr(fcdr["title"]) + "</a></li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n                <div class=\"col-md-1 col-sm-4 col-xs-6 list ecoinfo text-left masonry-item\">\r\n                    <h4>其他</h4>\r\n                    <ul>\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("case"));

	templateBuilder.Append("\" target='_self' title=\"客户案例\">客户案例</a></li>\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("jobs"));

	templateBuilder.Append("\" target='_self' title=\"加入我们\">加入我们</a></li>\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("down"));

	templateBuilder.Append("\" target='_self' title=\"资料下载\">资料下载</a></li>\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("feedback"));

	templateBuilder.Append("\" target='_self' title=\"留言反馈\">留言反馈</a></li>\r\n                    </ul>\r\n                </div>\r\n\r\n                \r\n                <div class=\"col-md-3 col-sm-4 col-xs-12 list  text-left masonry-item\">\r\n                    <h4>联系我们</h4>\r\n                    <ul class=\"contact-info\">\r\n                        <li><i class=\"icon fa-map-marker\"></i>");
	templateBuilder.Append(Utils.ObjectToStr(site.address));
	templateBuilder.Append("</li>\r\n                        <li><i class=\"icon fa-phone\"></i><a href=\"tel:");
	templateBuilder.Append(Utils.ObjectToStr(site.tel));
	templateBuilder.Append("\" title=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.tel));
	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.ObjectToStr(site.tel));
	templateBuilder.Append("</a></li>\r\n                        <li><i class=\"icon fa-envelope-o\"></i>");
	templateBuilder.Append(Utils.ObjectToStr(site.email));
	templateBuilder.Append("</li>\r\n                        <li><i class=\"icon fa-globe\"></i>");
	templateBuilder.Append(Utils.ObjectToStr(site.domain));
	templateBuilder.Append("</li>\r\n                    </ul>\r\n                    <ul class=\"social\">\r\n                        <li>\r\n                            <a href=\"http://wpa.qq.com/msgrd?v=3&uin=85828165&site=qq&menu=yes\" rel=\"nofollow\" target=\"_blank\" class=\"hvr-radial-out\">\r\n                                <i class=\"fa fa-qq\"></i>\r\n                            </a>\r\n                        </li>\r\n                        <li><a href=\"https://twitter.com/unitedchemco\" rel=\"nofollow\" target=\"_blank\" class=\"hvr-radial-out\"><i class=\"icon fa-twitter\"></i></a></li>\r\n                        <li><a href=\"https://plus.google.com/+QducCn\" rel=\"nofollow\" target=\"_blank\" class=\"hvr-radial-out\"><i class=\"icon fa-google-plus\"></i></a></li>\r\n                        <li><a href=\"https://www.facebook.com/UnitedChemCo/\" rel=\"nofollow\" target=\"_blank\" class=\"hvr-radial-out\"><i class=\"icon fa-facebook-official\"></i></a></li>\r\n                        <li><a href=\"mailto:info@qduc.com.cn\" rel=\"nofollow\" target=\"_blank\" class=\"hvr-radial-out\"><i class=\"icon fa-envelope\"></i></a></li>\r\n                        <li>\r\n                            <a id=\"met-weixin\" data-target=\"webuiPopover0\"><i class=\"fa fa-weixin\"></i></a>\r\n                            <div id=\"met-weixin-content\" class=\"hide\">\r\n                                <div class=\"text-center met-weixin-img\"><img src=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/images/wechatcode.jpg\" /></div>\r\n                            </div>\r\n                        </li>\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <div class=\"met-links text-center\">\r\n        <div class=\"container\">\r\n            <ol class=\"breadcrumb\">\r\n                <li>友情链接 :</li>\r\n                ");
	DataTable linkList = new YueBonSoft.Web.Plugin.Link.link().get_link_list(0, "");

	foreach(DataRow dr in linkList.Rows)
	{

	templateBuilder.Append("\r\n                <li><a href=\"" + Utils.ObjectToStr(dr["site_url"]) + "\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\" target=\"_blank\">" + Utils.ObjectToStr(dr["title"]) + "</a></li>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n                <li><a href=\"");
	templateBuilder.Append(linkurl("link"));

	templateBuilder.Append("\" target=\"_blank\">更多</a></li>\r\n            </ol>\r\n        </div>\r\n    </div>\r\n    <footer>\r\n        <div class=\"container text-center\">\r\n            <p>");
	templateBuilder.Append(Utils.ObjectToStr(site.company));
	templateBuilder.Append("© 2016-");
	templateBuilder.Append(Utils.ObjectToStr(DTKeys.ASSEMBLY_YEAR));
	templateBuilder.Append(" 版权所有,未经授权,禁止使用. </p>\r\n            <p>地址：");
	templateBuilder.Append(Utils.ObjectToStr(site.address));
	templateBuilder.Append(" </p>\r\n            <p>电话：");
	templateBuilder.Append(Utils.ObjectToStr(site.tel));
	templateBuilder.Append(" 传真: ");
	templateBuilder.Append(Utils.ObjectToStr(site.fax));
	templateBuilder.Append("</p>\r\n            <p>Email: ");
	templateBuilder.Append(Utils.ObjectToStr(site.email));
	templateBuilder.Append("</p>\r\n            <p>");
	templateBuilder.Append(Utils.ObjectToStr(site.copyright));
	templateBuilder.Append("</p>\r\n            <p><a href=\"http://www.miitbeian.gov.cn/\" target=\"_blank\" rel=\"nofollow\"><span style=\"font-family: 宋体;\">备案号: ");
	templateBuilder.Append(Utils.ObjectToStr(site.crod));
	templateBuilder.Append("</span></a>\r\n                ");
	templateBuilder.Append(Utils.ObjectToStr(config.webcountcode));
	templateBuilder.Append("</p>\r\n            <div class=\"powered_by_metinfo\">Powered by YuebonInfo 3.0</div>\r\n            <div class=\"met-langlist margin-top-10\">\r\n                <button type=\"button\" class=\"btn btn-outline btn-default btn-squared\" data-toggle=\"modal\" data-target=\"#met-langlist-modal\">\r\n                    <span class=\"flag-icon flag-icon-cn\"></span>\r\n                    简体中文\r\n                </button>\r\n                <div class=\"modal fade modal-3d-flip-vertical\" id=\"met-langlist-modal\" aria-hidden=\"true\" role=\"dialog\" tabindex=\"-1\">\r\n                    <div class=\"modal-dialog modal-center modal-lg\">\r\n                        <div class=\"modal-content\">\r\n                            <div class=\"modal-body\">\r\n                                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\r\n                                    <span aria-hidden=\"true\">×</span>\r\n                                </button>\r\n                                <div class=\"row\">\r\n                                    <div class=\"col-md-4 col-sm-6 col-xs-12 margin-bottom-20\">\r\n                                        <a href=\"http://en.yanxuan-mould.com\" class=\"btn btn-block btn-outline btn-default btn-squared text-nowrap\" title=\"English\">\r\n                                            <span class=\"flag-icon flag-icon-gb pull-left\"></span>\r\n                                            English\r\n                                        </a>\r\n                                    </div>\r\n                                    <div class=\"col-md-4 col-sm-6 col-xs-12 margin-bottom-20\">\r\n                                        <a href=\"http://www.yanxuan-mould.com/\" class=\"btn btn-block btn-outline btn-default btn-squared text-nowrap\" title=\"简体中文\">\r\n                                            <span class=\"flag-icon flag-icon-cn pull-left\"></span>\r\n                                            简体中文\r\n                                        </a>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </footer>\r\n</div>\r\n<div class=\"modal fade modal-3d-flip-vertical\" id=\"site-navbar-search\" aria-hidden=\"true\" role=\"dialog\" tabindex=\"-1\">\r\n    <div class=\"modal-dialog modal-center modal-lg\">\r\n        <div class=\"modal-content\">\r\n            <div class=\"modal-body\">\r\n                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\r\n                    <span aria-hidden=\"true\">×</span>\r\n                </button>\r\n                <div class=\"container\">\r\n                    <div class=\"row\">\r\n                        <div class=\"search\">\r\n                            <form role=\"search\">\r\n                                <div class=\"form-group\">\r\n                                    <div class=\"input-search\">\r\n                                        <input id=\"keywords\" class=\"form-control\" name=\"keywords\" onkeydown=\"if(event.keyCode==13){SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');return false};\" placeholder=\"输入关健字\" type=\"text\">\r\n                                        <button type=\"button\" onclick=\"SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');\" class=\"input-search-btn\"><i class=\"icon fa-search\" aria-hidden=\"true\"></i></button>\r\n                                    </div>\r\n                                </div>\r\n                            </form>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n<button type=\"button\" class=\"btn btn-icon btn-primary btn-squared met-scroll-top hide\"><i class=\"icon fa-chevron-up\" aria-hidden=\"true\"></i></button>\r\n");


	templateBuilder.Append("\r\n<!--/页面底部-->\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
