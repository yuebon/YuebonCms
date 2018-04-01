<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.userorder_show" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="YueBonSoft.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by YueBoncms Template Engine at 2018-01-20 13:24:10.
		本页面代码由YueBoncms模板引擎生成于 2018-01-20 13:24:10. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!doctype html>\r\n<html>\r\n<head>\r\n<meta charset=\"utf-8\">\r\n<title>查看订单 - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/ui-dialog.css\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/yanxuanen");
	templateBuilder.Append("/css/style.css\" />\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/dialog-plus-min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/yanxuanen");
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

	templateBuilder.Append("\" title=\"网站首页\" class=\"link active\">网站首页</a></li>\r\n                    <li class=\"dropdown margin-left-30 ecodropdown\">\r\n                        <a class=\"dropdown-toggle link animation-slide-top\" data-toggle=\"dropdown\" data-hover=\"dropdown\"\r\n                           href=\"");
	templateBuilder.Append(linkurl("contenten","about"));

	templateBuilder.Append("\" \r\n                        aria-expanded=\"false\"\r\n                            role=\"button\" title=\"关于我们\">关于我们<span class=\"caret\"></span></a>\r\n                        <ul class=\"dropdown-menu dropdown-menu-right bullet\" role=\"menu\">\r\n                            ");
	DataTable aboutList = get_article_list("content", 10,"status=0");

	int abdr__loop__id=0;
	foreach(DataRow abdr in aboutList.Rows)
	{
		abdr__loop__id++;


	templateBuilder.Append("\r\n                            <li><a class=\"animation-slide-top\" href=\"");
	templateBuilder.Append(linkurl("contenten",Utils.ObjectToStr(abdr["call_index"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(abdr["title"]) + "\">" + Utils.ObjectToStr(abdr["title"]) + "</a></li>\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                        </ul>\r\n                    </li>\r\n                    <li class=\"dropdown margin-left-30 ecodropdown\">\r\n                        <a class=\"dropdown-toggle link animation-slide-top\"\r\n                            data-toggle=\"dropdown\" data-hover=\"dropdown\"\r\n                            href=\"");
	templateBuilder.Append(linkurl("capacity","yanfa"));

	templateBuilder.Append("\"\r\n                            aria-expanded=\"false\"\r\n                            role=\"button\" title=\"生产能力\">生产能力<span class=\"caret\"></span></a>\r\n                        <ul class=\"dropdown-menu dropdown-menu-right bullet\" role=\"menu\">\r\n                            ");
	DataTable capacityList = get_article_list("capacity", 10,"status=0");

	int cadr__loop__id=0;
	foreach(DataRow cadr in capacityList.Rows)
	{
		cadr__loop__id++;


	templateBuilder.Append("\r\n                            <li><a class=\"animation-slide-top\" href=\"");
	templateBuilder.Append(linkurl("capacity",Utils.ObjectToStr(cadr["call_index"])));

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

	templateBuilder.Append("\" title=\"客户案例\" class=\"link animation-slide-top\">客户案例</a></li>\r\n                    <li class=\"margin-left-30\"><a href=\"");
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
	templateBuilder.Append(linkurl("userorder","list"));

	templateBuilder.Append("\">订单管理</a>\r\n    </div>\r\n</div>\r\n<!--/当前位置-->\r\n\r\n<div class=\"section clearfix\">\r\n    <!--页面左边-->\r\n    ");

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


	templateBuilder.Append("\r\n    <!--/页面左边-->\r\n    \r\n    <!--页面左边-->\r\n    <div class=\"right-auto\">\r\n        <div class=\"bg-wrap\" style=\"min-height:765px;\">\r\n            <div class=\"sub-tit\">\r\n                <a class=\"add\" href=\"javascript:history.go(-1);\"><i class=\"iconfont icon-reply\"></i>返回</a>\r\n                <ul>\r\n                    <li class=\"selected\">\r\n                        <a href=\"javascript:;\">查看订单</a>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            \r\n        ");
	if (model.status<4)
	{

	templateBuilder.Append("\r\n            <!--订单进度-->\r\n            ");
	if (model.payment_status>0)
	{

	templateBuilder.Append("\r\n            <div class=\"order-progress\">\r\n            ");
	}
	else
	{

	templateBuilder.Append("\r\n            <div class=\"order-progress mini\">\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n                <ul>\r\n                    <!--下单-->\r\n                    <li class=\"first active\">\r\n                        <div class=\"progress\">下单</div>\r\n                        <div class=\"info\">");
	templateBuilder.Append(Utils.ObjectToStr(model.add_time));
	templateBuilder.Append("</div>\r\n                    </li>\r\n                    <!--/下单-->\r\n                    \r\n                    ");
	if (model.payment_status>0)
	{

	templateBuilder.Append("\r\n                        <!--付款-->\r\n                        ");
	if (model.payment_status==2)
	{

	templateBuilder.Append("\r\n                        <li class=\"active\">\r\n                        ");
	}
	else
	{

	templateBuilder.Append("\r\n                        <li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                            <div class=\"progress\">付款</div>\r\n                            ");
	if (model.payment_status==2)
	{

	templateBuilder.Append("\r\n                            <div class=\"info\">");
	templateBuilder.Append(Utils.ObjectToStr(model.payment_time));
	templateBuilder.Append("</div>\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                        </li>\r\n                        <!--/付款-->\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                    \r\n                    <!--确认-->\r\n                    ");
	if (model.status>=2)
	{

	templateBuilder.Append("\r\n                    <li class=\"active\">\r\n                    ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <li>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                        <div class=\"progress\">确认</div>\r\n                        ");
	if (model.status>=2)
	{

	templateBuilder.Append("\r\n                        <div class=\"info\">");
	templateBuilder.Append(Utils.ObjectToStr(model.confirm_time));
	templateBuilder.Append("</div>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </li>\r\n                    <!--/确认-->\r\n                    \r\n                    <!--发货-->\r\n                    ");
	if (model.express_status==2)
	{

	templateBuilder.Append("\r\n                    <li class=\"active\">\r\n                    ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <li>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                        <div class=\"progress\">发货</div>\r\n                        ");
	if (model.express_status==2)
	{

	templateBuilder.Append("\r\n                        <div class=\"info\">");
	templateBuilder.Append(Utils.ObjectToStr(model.express_time));
	templateBuilder.Append("</div>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </li>\r\n                    <!--/发货-->\r\n                    \r\n                    <!--完成-->\r\n                    ");
	if (model.status>2)
	{

	templateBuilder.Append("\r\n                    <li class=\"last active\">\r\n                    ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <li class=\"last\">\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                        <div class=\"progress\">完成</div>\r\n                        ");
	if (model.status>2)
	{

	templateBuilder.Append("\r\n                        <div class=\"info\">");
	templateBuilder.Append(Utils.ObjectToStr(model.complete_time));
	templateBuilder.Append("</div>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </li>\r\n                    <!--/完成-->\r\n                </ul>\r\n            </div>\r\n            <!--/订单进度-->\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n            \r\n            <!--订单概述-->\r\n            <div class=\"form-box accept-box\">\r\n                <dl class=\"head form-group\">\r\n                    <dd>\r\n                        订单号：");
	templateBuilder.Append(Utils.ObjectToStr(model.order_no));
	templateBuilder.Append("\r\n                        ");
	if (get_order_payment_status(model.id))
	{

	templateBuilder.Append("\r\n                            <a class=\"btn-pay\" href=\"");
	templateBuilder.Append(linkurl("payment","?action=confirm&order_no="+model.order_no));

	templateBuilder.Append("\">去付款</a>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </dd>\r\n                </dl>\r\n                <dl class=\"form-group\">\r\n                    <dt>订单状态：</dt>\r\n                    <dd>\r\n                        ");
	templateBuilder.Append(get_order_status(model.id).ToString());

	templateBuilder.Append("\r\n                    </dd>\r\n                </dl>\r\n                ");
	if (model.payment_status>0)
	{

	templateBuilder.Append("\r\n                <dl class=\"form-group\">\r\n                    <dt>支付方式：</dt>\r\n                    <dd>");
	templateBuilder.Append(get_payment_title(model.payment_id).ToString());

	templateBuilder.Append("</dd>\r\n                </dl>\r\n                ");
	}	//end for if

	if (model.express_status==2)
	{

	templateBuilder.Append("\r\n                <dl class=\"form-group\">\r\n                    <dt>发货单号：</dt>\r\n                    <dd>");
	templateBuilder.Append(get_express_title(model.express_id).ToString());

	templateBuilder.Append(" ");
	templateBuilder.Append(Utils.ObjectToStr(model.express_no));
	templateBuilder.Append("</dd>\r\n                </dl>\r\n                <dl class=\"form-group\">\r\n                    <dt>物流信息：</dt>\r\n                    <dd>\r\n                        ");
	templateBuilder.Append(Utils.ObjectToStr(expressdetail));
	templateBuilder.Append("\r\n                    </dd>\r\n                </dl>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n            </div>\r\n            <!--/订单概述-->\r\n            \r\n            <!--商品列表-->\r\n            <div class=\"table-wrap\">\r\n                <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"5\" class=\"ftable\">\r\n                    <tr>\r\n                        <th align=\"left\" colspan=\"2\">商品信息</th>\r\n                        <th width=\"10%\">单价</td>\r\n                        <th width=\"10%\">积分</th>\r\n                        <th width=\"10%\">数量</th>\r\n                        <th width=\"10%\">金额</th>\r\n                        <th width=\"10%\">积分</th>\r\n                    </tr>\r\n                    ");
	if (model.order_goods!=null)
	{

	foreach(YueBonSoft.Model.order_goods modelt in model.order_goods)
	{

	templateBuilder.Append("\r\n                    <tr>\r\n                        <td width=\"60\">\r\n                            <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",modelt.article_id));

	templateBuilder.Append("\">\r\n                                <img src=\"");
	templateBuilder.Append(get_article_img_url(modelt.channel_id, modelt.article_id).ToString());

	templateBuilder.Append("\" class=\"img\" />\r\n                            </a>\r\n                        </td>\r\n                        <td align=\"left\">\r\n                            <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",modelt.article_id));

	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.ObjectToStr(modelt.goods_title));
	templateBuilder.Append("</a>\r\n                            <p>");
	templateBuilder.Append(Utils.ObjectToStr(modelt.spec_text));
	templateBuilder.Append("</p>\r\n                        </td>\r\n                        <td align=\"center\">\r\n                            <s>￥");
	templateBuilder.Append(Utils.ObjectToStr(modelt.goods_price));
	templateBuilder.Append("</s>\r\n                            <p>￥");
	templateBuilder.Append(Utils.ObjectToStr(modelt.real_price));
	templateBuilder.Append("</p>\r\n                        </td>\r\n                        <td align=\"center\">\r\n                            ");
	if (modelt.point>0)
	{

	templateBuilder.Append("\r\n                                +\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                            ");
	templateBuilder.Append(Utils.ObjectToStr(modelt.point));
	templateBuilder.Append("\r\n                        </td>\r\n                        <td align=\"center\">");
	templateBuilder.Append(Utils.ObjectToStr(modelt.quantity));
	templateBuilder.Append("</td>\r\n                        <td align=\"center\">￥");
	templateBuilder.Append((modelt.real_price*modelt.quantity).ToString());

	templateBuilder.Append("</td>\r\n                        <td align=\"center\">");
	templateBuilder.Append((modelt.point*modelt.quantity).ToString());

	templateBuilder.Append("</td>\r\n                    </tr>\r\n                    ");
	}	//end for if

	}
	else
	{

	templateBuilder.Append("\r\n                    <tr>\r\n                        <td colspan=\"7\" align=\"center\">暂无记录</td>\r\n                    </tr>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                    <tr>\r\n                        <td colspan=\"7\" align=\"right\">\r\n                            <p>商品金额：<b class=\"red\">￥");
	templateBuilder.Append(Utils.ObjectToStr(model.real_amount));
	templateBuilder.Append("</b>&nbsp;&nbsp;+&nbsp;&nbsp;运费：<b class=\"red\">￥");
	templateBuilder.Append(Utils.ObjectToStr(model.express_fee));
	templateBuilder.Append("</b>&nbsp;&nbsp;+ &nbsp;&nbsp;支付手续费：<b class=\"red\">￥");
	templateBuilder.Append(Utils.ObjectToStr(model.payment_fee));
	templateBuilder.Append("</b>&nbsp;&nbsp;税费：<b class=\"red\">");
	templateBuilder.Append(Utils.ObjectToStr(model.invoice_taxes));
	templateBuilder.Append("</b></p>\r\n                            <p style=\"font-size:22px;\">应付总金额：<b class=\"red\">￥");
	templateBuilder.Append(Utils.ObjectToStr(model.order_amount));
	templateBuilder.Append("</b></p>\r\n                        </td>\r\n                    </tr>\r\n                </table>\r\n            </div>\r\n            <!--/商品列表-->\r\n            \r\n            <!--收货信息-->\r\n            <div class=\"form-box accept-box\">\r\n                <dl class=\"head form-group\">\r\n                    <dd>收货信息</dd>\r\n                </dl>\r\n                <dl class=\"form-group\">\r\n                    <dt>顾客姓名：</dt>\r\n                    <dd>");
	templateBuilder.Append(Utils.ObjectToStr(model.accept_name));
	templateBuilder.Append("</dd>\r\n                </dl>\r\n                <dl class=\"form-group\">\r\n                    <dt>送货地址：</dt>\r\n                    <dd>");
	templateBuilder.Append(Utils.ObjectToStr(model.area));
	templateBuilder.Append(" ");
	templateBuilder.Append(Utils.ObjectToStr(model.address));
	templateBuilder.Append(" ");
	templateBuilder.Append(Utils.ObjectToStr(model.post_code));
	templateBuilder.Append("</dd>\r\n                </dl>\r\n                <dl class=\"form-group\">\r\n                    <dt>联系电话：</dt>\r\n                    <dd>");
	templateBuilder.Append(Utils.ObjectToStr(model.mobile));
	templateBuilder.Append(" ");
	templateBuilder.Append(Utils.ObjectToStr(model.telphone));
	templateBuilder.Append("</dd>\r\n                </dl>\r\n                <dl class=\"form-group\">\r\n                    <dt>电子邮箱：</dt>\r\n                    <dd>");
	templateBuilder.Append(Utils.ObjectToStr(model.email));
	templateBuilder.Append("</dd>\r\n                </dl>\r\n                <dl class=\"form-group\">\r\n                    <dt>备注留言：</dt>\r\n                    <dd>");
	templateBuilder.Append(Utils.ObjectToStr(model.message));
	templateBuilder.Append("</dd>\r\n                </dl>\r\n                <dl class=\"form-group\">\r\n                    <dt>开具发票：</dt>\r\n                    <dd>\r\n                        ");
	if (model.is_invoice==1)
	{

	templateBuilder.Append("\r\n                            是\r\n                        ");
	}
	else
	{

	templateBuilder.Append("\r\n                            否\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </dd>\r\n                </dl>\r\n                ");
	if (model.is_invoice==1)
	{

	templateBuilder.Append("\r\n                <dl class=\"form-group\">\r\n                    <dt>发票抬头：</dt>\r\n                    <dd>\r\n                        ");
	templateBuilder.Append(Utils.ObjectToStr(model.invoice_title));
	templateBuilder.Append("\r\n                    </dd>\r\n                </dl>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n            </div>\r\n            <!--/收货信息-->\r\n            \r\n        </div>\r\n    </div>\r\n    <!--/页面左边-->\r\n</div>\r\n\r\n<!--页面底部-->\r\n");

	templateBuilder.Append("<div class=\"ecofootbg\">\r\n    <div class=\"met-footnav-eco\">\r\n        <div class=\"container\">\r\n            <div class=\"row mob-masonry\">\r\n                <div class=\"col-md-2 col-sm-4 col-xs-6 list ecoinfo text-left masonry-item\">\r\n                    <h4>关于延轩</h4>\r\n                    <ul>\r\n                        ");
	int ftabdr__loop__id=0;
	foreach(DataRow ftabdr in aboutList.Rows)
	{
		ftabdr__loop__id++;


	templateBuilder.Append("\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("content",Utils.ObjectToStr(ftabdr["call_index"])));

	templateBuilder.Append("\" target='_self' title=\"" + Utils.ObjectToStr(ftabdr["title"]) + "\">" + Utils.ObjectToStr(ftabdr["title"]) + "</a></li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n                <div class=\"col-md-2 col-sm-4 col-xs-6 list ecoinfo text-left masonry-item\">\r\n                    <h4>模具产品</h4>\r\n                    <ul>\r\n                        ");
	int ftgdcadr__loop__id=0;
	foreach(DataRow ftgdcadr in gdcaList.Rows)
	{
		ftgdcadr__loop__id++;


	templateBuilder.Append("\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("content",Utils.ObjectToStr(ftgdcadr["call_index"])));

	templateBuilder.Append("\" target='_self' title=\"" + Utils.ObjectToStr(ftgdcadr["title"]) + "\">" + Utils.ObjectToStr(ftgdcadr["title"]) + "</a></li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n\r\n                <div class=\"col-md-2 col-sm-4 col-xs-6 list ecoinfo text-left masonry-item\">\r\n                    <h4>新闻资讯</h4>\r\n                    <ul>\r\n                        ");
	foreach(DataRow fcdr in newscategoryList.Rows)
	{

	templateBuilder.Append("\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("news_list",Utils.ObjectToStr(fcdr["id"])));

	templateBuilder.Append("\" target='_self'  title=\"" + Utils.ObjectToStr(fcdr["title"]) + "\">" + Utils.ObjectToStr(fcdr["title"]) + "</a></li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n                <div class=\"col-md-2 col-sm-4 col-xs-6 list ecoinfo text-left masonry-item\">\r\n                    <h4>其他</h4>\r\n                    <ul>\r\n                        <li><a href=\"");
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
	templateBuilder.Append("/templates/yanxuanen");
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
