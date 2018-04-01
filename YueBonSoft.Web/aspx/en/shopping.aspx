<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.shopping" ValidateRequest="false" %>
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

	templateBuilder.Append("<!doctype html>\r\n<html>\r\n<head>\r\n<meta charset=\"utf-8\">\r\n<title>确认订单 - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/validate.css\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/yanxuanen");
	templateBuilder.Append("/css/style.css\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/ui-dialog.css\" />\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.form.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/Validform_v5.3.2_min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/PCASClass.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/dialog-plus-min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/yanxuanen");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/yanxuanen");
	templateBuilder.Append("/js/cart.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n$(function(){\r\n	//初始化收货地址\r\n	initUserAddress(\"#userAddress\");\r\n	//初始化表单\r\n	AjaxInitForm('#orderForm', '#btnSubmit', 0);\r\n});\r\n</");
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
	templateBuilder.Append(linkurl("cart"));

	templateBuilder.Append("\">购物车</a>\r\n    </div>\r\n</div>\r\n<!--/当前位置-->\r\n\r\n<!--页面内容-->\r\n<div class=\"section\">\r\n    <div class=\"wrapper\">\r\n        <div class=\"bg-wrap\">\r\n            <!--购物车头部-->\r\n            <div class=\"cart-head clearfix\">\r\n                <h2><i class=\"iconfont icon-cart\"></i>我的购物车</h2>\r\n                <div class=\"cart-setp\">\r\n                    <ul>\r\n                        <li class=\"first active\">\r\n                            <div class=\"progress\">\r\n                                <span>1</span>\r\n                                放进购物车\r\n                            </div>\r\n                        </li>\r\n                        <li class=\"active\">\r\n                            <div class=\"progress\">\r\n                                <span>2</span>\r\n                                填写订单信息\r\n                            </div>\r\n                        </li>\r\n                        <li class=\"last\">\r\n                            <div class=\"progress\">\r\n                                <span>3</span>\r\n                                支付/确认订单\r\n                            </div>\r\n                        </li>\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n            <!--购物车头部-->\r\n            \r\n            <div class=\"cart-box\">\r\n                <h2 class=\"slide-tit\">\r\n                    <span>1、收货地址</span>\r\n                </h2>\r\n                \r\n                ");
	if (userModel!=null)
	{

	DataTable addrList = get_user_addr_book_list(0, "user_id="+userModel.id);

	templateBuilder.Append("<!--取得一个DataTable-->\r\n                    <ul id=\"userAddress\" class=\"address-list\">\r\n                        ");
	foreach(DataRow dr in addrList.Rows)
	{

	if (Utils.ObjectToStr(dr["is_default"])=="1")
	{

	templateBuilder.Append("\r\n                            <li class=\"selected\">\r\n                            ");
	}
	else
	{

	templateBuilder.Append("\r\n                            <li>\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                            <label>\r\n                                <input name=\"user_book_id\" type=\"radio\" value=\"" + Utils.ObjectToStr(dr["id"]) + "\" />\r\n                                <span>" + Utils.ObjectToStr(dr["area"]) + "" + Utils.ObjectToStr(dr["address"]) + " (" + Utils.ObjectToStr(dr["accept_name"]) + " 收)</span>\r\n                                <em>" + Utils.ObjectToStr(dr["mobile"]) + "</em>\r\n                            </label>\r\n                            <input name=\"user_accept_name\" type=\"hidden\" value=\"" + Utils.ObjectToStr(dr["accept_name"]) + "\" />\r\n                            <input name=\"user_area\" type=\"hidden\" value=\"" + Utils.ObjectToStr(dr["area"]) + "\" />\r\n                            <input name=\"user_address\" type=\"hidden\" value=\"" + Utils.ObjectToStr(dr["address"]) + "\" />\r\n                            <input name=\"user_mobile\" type=\"hidden\" value=\"" + Utils.ObjectToStr(dr["mobile"]) + "\" />\r\n                            <input name=\"user_telphone\" type=\"hidden\" value=\"" + Utils.ObjectToStr(dr["telphone"]) + "\" />\r\n                            <input name=\"user_email\" type=\"hidden\" value=\"" + Utils.ObjectToStr(dr["email"]) + "\" />\r\n                            <input name=\"user_post_code\" type=\"hidden\" value=\"" + Utils.ObjectToStr(dr["post_code"]) + "\" />\r\n                            </li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n                <form id=\"orderForm\" name=\"orderForm\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=order_save&site_id=");
	templateBuilder.Append(Utils.ObjectToStr(site.id));
	templateBuilder.Append("\">\r\n                <div class=\"form-box address-info\">\r\n                    <dl class=\"form-group\">\r\n                        <dt>收货人姓名：</dt>\r\n                        <dd>\r\n                            <input name=\"book_id\" id=\"book_id\" type=\"hidden\" value=\"0\" />\r\n                            <input name=\"accept_name\" id=\"accept_name\" type=\"text\" class=\"input\" value=\"\" datatype=\"s2-20\" sucmsg=\" \" />\r\n                            <span class=\"Validform_checktip\">*收货人姓名</span>\r\n                        </dd>\r\n                    </dl>\r\n                    <dl class=\"form-group\">\r\n                        <dt>所属地区：</dt>\r\n                        <dd>\r\n                            <select id=\"province\" name=\"province\" class=\"select\"></select>\r\n                            <select id=\"city\" name=\"city\" class=\"select\"></select>\r\n                            <select id=\"area\" name=\"area\" class=\"select\" datatype=\"*\" sucmsg=\" \"></select>\r\n                            <span class=\"Validform_checktip\">*请选择您所在的地区</span>\r\n                        </dd>\r\n                    </dl>\r\n                    <dl class=\"form-group\">\r\n                        <dt>详细地址：</dt>\r\n                        <dd>\r\n                            <input name=\"address\" id=\"address\" type=\"text\" class=\"input\" value=\"\" datatype=\"*2-100\" sucmsg=\" \" />\r\n    <span class=\"Validform_checktip\">*除上面所属地区外的详细地址</span>\r\n                        </dd>\r\n                    </dl>\r\n                    <dl class=\"form-group\">\r\n                        <dt>手机号码：</dt>\r\n                        <dd>\r\n                            <input name=\"mobile\" id=\"mobile\" type=\"text\" class=\"input\" value=\"\" datatype=\"m\" sucmsg=\" \" />\r\n                            <span class=\"Validform_checktip\">*收货人的手机号码</span>\r\n                        </dd>\r\n                    </dl>\r\n                    <dl class=\"form-group\">\r\n                        <dt>联系电话：</dt>\r\n                        <dd>\r\n                            <input name=\"telphone\" id=\"telphone\" type=\"text\" class=\"input\" value=\"\" />\r\n                            <span class=\"Validform_checktip\">收货人的联系电话，非必填</span>\r\n                        </dd>\r\n                    </dl>\r\n                    <dl class=\"form-group\">\r\n                        <dt>电子邮箱：</dt>\r\n                        <dd>\r\n                            <input name=\"email\" id=\"email\" type=\"text\" class=\"input\" value=\"\" />\r\n                            <span class=\"Validform_checktip\">方便通知订单状态，非必填</span>\r\n                        </dd>\r\n                    </dl>\r\n                    <dl class=\"form-group\">\r\n                        <dt>邮政编码：</dt>\r\n                        <dd>\r\n                            <input name=\"post_code\" id=\"post_code\" type=\"txt\" class=\"input code\" />\r\n                            <span class=\"Validform_checktip\">所在地区的邮政编码，非必填</span>\r\n                        </dd>\r\n                    </dl>\r\n                </div>\r\n                \r\n                <h2 class=\"slide-tit\">\r\n                    <span>2、支付方式</span>\r\n                </h2>\r\n                <ul class=\"item-box clearfix\">\r\n                    ");
	DataTable paymentList = get_payment_list(0, "site_id="+site.id);

	templateBuilder.Append(" <!--取得一个DataTable-->\r\n                    ");
	int dr1__loop__id=0;
	foreach(DataRow dr1 in paymentList.Rows)
	{
		dr1__loop__id++;


	decimal poundage_amount = get_payment_poundage_amount(Utils.StrToInt(Utils.ObjectToStr(dr1["id"]), 0),goodsTotal.real_amount);

	templateBuilder.Append("\r\n                        <li>\r\n                            <label>\r\n                            ");
	if (dr1__loop__id==(paymentList.Rows.Count))
	{

	templateBuilder.Append("\r\n                                <input name=\"payment_id\" type=\"radio\" onclick=\"paymentAmountTotal(this);\" value=\"" + Utils.ObjectToStr(dr1["id"]) + "\" datatype=\"*\" sucmsg=\" \" />\r\n                                <input name=\"payment_price\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(poundage_amount));
	templateBuilder.Append("\" />" + Utils.ObjectToStr(dr1["title"]) + "\r\n                            ");
	}
	else
	{

	templateBuilder.Append("\r\n                                <input name=\"payment_id\" type=\"radio\" onclick=\"paymentAmountTotal(this);\" value=\"" + Utils.ObjectToStr(dr1["id"]) + "\" />\r\n                                <input name=\"payment_price\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(poundage_amount));
	templateBuilder.Append("\" />" + Utils.ObjectToStr(dr1["title"]) + "\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                                <em>手续费：");
	templateBuilder.Append(Utils.ObjectToStr(poundage_amount));
	templateBuilder.Append("元</em>\r\n                            </label>\r\n                        </li>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                </ul>\r\n                \r\n                <h2 class=\"slide-tit\">\r\n                    <span>3、配送方式</span>\r\n                </h2>\r\n                <ul class=\"item-box clearfix\">\r\n                    ");
	DataTable expressList = get_express_list(0, "");

	templateBuilder.Append(" <!--取得一个DataTable-->\r\n                    ");
	int dr2__loop__id=0;
	foreach(DataRow dr2 in expressList.Rows)
	{
		dr2__loop__id++;


	templateBuilder.Append("\r\n                        <li>\r\n                            <label>\r\n                            ");
	if (dr2__loop__id==(expressList.Rows.Count))
	{

	templateBuilder.Append("\r\n                                <input name=\"express_id\" type=\"radio\" onclick=\"freightAmountTotal(this);\" value=\"" + Utils.ObjectToStr(dr2["id"]) + "\" datatype=\"*\" sucmsg=\" \" />\r\n                                <input name=\"express_price\" type=\"hidden\" value=\"" + Utils.ObjectToStr(dr2["express_fee"]) + "\" />" + Utils.ObjectToStr(dr2["title"]) + "\r\n                            ");
	}
	else
	{

	templateBuilder.Append("\r\n                                <input name=\"express_id\" type=\"radio\" onclick=\"freightAmountTotal(this);\" value=\"" + Utils.ObjectToStr(dr2["id"]) + "\" />\r\n                                <input name=\"express_price\" type=\"hidden\" value=\"" + Utils.ObjectToStr(dr2["express_fee"]) + "\" />" + Utils.ObjectToStr(dr2["title"]) + "\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                                <em>费用：" + Utils.ObjectToStr(dr2["express_fee"]) + "元</em>\r\n                            </label>\r\n                        </li>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                </ul>\r\n                \r\n                <h2 class=\"slide-tit\">\r\n                    <span>4、商品清单</span>\r\n                </h2>\r\n                <div class=\"line15\"></div>\r\n                <table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"8\" cellspacing=\"0\" class=\"cart-table\">\r\n                    <tr>\r\n                        <th colspan=\"2\" align=\"left\">商品信息</th>\r\n                        <th width=\"84\" align=\"left\">单价</th>\r\n                        <th width=\"84\" align=\"left\">优惠(元)</th>\r\n                        <th width=\"84\" align=\"center\">数量</th>\r\n                        <th width=\"104\" align=\"left\">金额(元)</th>\r\n                        <th width=\"84\" align=\"left\">积分</th>\r\n                        <th width=\"84\" align=\"center\">库存(件)</th>\r\n                    </tr>\r\n                    ");
	foreach(YueBonSoft.Model.cart_items modelt in goodsList)
	{

	templateBuilder.Append("\r\n                    <tr>\r\n                        <td width=\"68\">\r\n                            <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",modelt.article_id));

	templateBuilder.Append("\">\r\n                                <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.img_url));
	templateBuilder.Append("\" class=\"img\" />\r\n                            </a>\r\n                        </td>\r\n                        <td>\r\n                            <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",modelt.article_id));

	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.ObjectToStr(modelt.title));
	templateBuilder.Append("</a>\r\n                            <p class=\"stxt\">");
	templateBuilder.Append(Utils.ObjectToStr(modelt.spec_text));
	templateBuilder.Append("</p>\r\n                        </td>\r\n                        <td>\r\n                            <span class=\"red\">\r\n                                ￥");
	templateBuilder.Append(Utils.ObjectToStr(modelt.user_price));
	templateBuilder.Append("\r\n                            </span>\r\n                        </td>\r\n                        <td>\r\n                            <span class=\"red\">\r\n                                ￥");
	templateBuilder.Append((modelt.sell_price-modelt.user_price).ToString());

	templateBuilder.Append("\r\n                            </span>\r\n                        </td>\r\n                        <td align=\"center\">");
	templateBuilder.Append(Utils.ObjectToStr(modelt.quantity));
	templateBuilder.Append("</td>\r\n                        <td>\r\n                            <span class=\"red\">\r\n                                ￥");
	templateBuilder.Append((modelt.user_price*modelt.quantity).ToString());

	templateBuilder.Append("\r\n                            </span>\r\n                        </td>\r\n                        <td>\r\n                            ");
	if (modelt.point>0)
	{

	templateBuilder.Append("\r\n                                +\r\n                            ");
	}	//end for if

	templateBuilder.Append((modelt.point*modelt.quantity).ToString());

	templateBuilder.Append("\r\n                        </td>\r\n                        <td align=\"center\">\r\n                            ");
	templateBuilder.Append(Utils.ObjectToStr(modelt.stock_quantity));
	templateBuilder.Append("\r\n                        </td>\r\n                    </tr>\r\n                    ");
	}	//end for if

	if (goodsList.Count<1)
	{

	templateBuilder.Append("\r\n                    <tr>\r\n                        <td colspan=\"8\">\r\n                            <div class=\"msg-tips\">\r\n                                <div class=\"icon warning\"><i class=\"iconfont icon-tip\"></i></div>\r\n                                <div class=\"info\">\r\n                                    <strong>购物车没有商品！</strong>\r\n                                    <p>您的购物车为空，<a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">马上去购物</a>吧！</p>\r\n                                </div>\r\n                            </div>\r\n                        </td>\r\n                    </tr>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                </table>\r\n                <div class=\"line15\"></div>\r\n                \r\n                <h2 class=\"slide-tit\">\r\n                    <span>5、结算信息</span>\r\n                </h2>\r\n                <div class=\"buy-foot clearfix\">\r\n                    <div class=\"left-box\">\r\n                        <dl>\r\n                            <dd>\r\n                                <label><input name=\"is_invoice\" id=\"is_invoice\" type=\"checkbox\" value=\"1\" onclick=\"taxAmoutTotal(this);\" /> 是否开具发票</label>\r\n                                <input name=\"taxAmout\" id=\"taxAmout\" type=\"hidden\" value=\"");
	templateBuilder.Append(get_order_taxamount(goodsTotal.real_amount).ToString());

	templateBuilder.Append("\" />\r\n                            </dd>\r\n                        </dl>\r\n                        <dl id=\"invoiceBox\" style=\"display:none;\">\r\n                            <dt>发票抬头(100字符以内)</dt>\r\n                            <dd>\r\n                                <input name=\"invoice_title\" id=\"invoice_title\" type=\"text\" class=\"input\" />\r\n                            </dd>\r\n                        </dl>\r\n                        <dl>\r\n                            <dt>订单备注(100字符以内)</dt>\r\n                            <dd>\r\n                                <textarea name=\"message\" class=\"input\" style=\"height:35px;\"></textarea>\r\n                            </dd>\r\n                        </dl>\r\n                    </div>\r\n                    <div class=\"right-box\">\r\n                        <p>\r\n                            商品 <label class=\"price\">");
	templateBuilder.Append(Utils.ObjectToStr(goodsTotal.total_quantity));
	templateBuilder.Append("</label> 件&nbsp;&nbsp;&nbsp;&nbsp;\r\n                            商品金额：￥<label id=\"goodsAmount\" class=\"price\">");
	templateBuilder.Append(Utils.ObjectToStr(goodsTotal.real_amount));
	templateBuilder.Append("</label> 元&nbsp;&nbsp;&nbsp;&nbsp;\r\n                            总积分：<label class=\"price\">");
	templateBuilder.Append(Utils.ObjectToStr(goodsTotal.total_point));
	templateBuilder.Append("</label> 分\r\n                        </p>\r\n                        <p>\r\n                            运费：￥<label id=\"expressFee\" class=\"price\">0.00</label> 元 +\r\n                            支付手续费：￥<label id=\"paymentFee\" class=\"price\">0.00</label> 元 +\r\n                            税费：￥<label id=\"taxesFee\" class=\"price\">0.00</label> 元\r\n                        </p>\r\n                        <p class=\"txt-box\">\r\n                            应付总金额：￥<label id=\"totalAmount\" class=\"price\">");
	templateBuilder.Append(Utils.ObjectToStr(goodsTotal.real_amount));
	templateBuilder.Append("</label>\r\n                        </p>\r\n                        <p class=\"btn-box\">\r\n                            <a class=\"btn button\" href=\"");
	templateBuilder.Append(linkurl("cart"));

	templateBuilder.Append("\">返回购物车</a>\r\n                            ");
	if (goodsTotal.total_quantity>0)
	{

	templateBuilder.Append("\r\n                                <input id=\"btnSubmit\" name=\"btnSubmit\" type=\"submit\" value=\"确认提交\" class=\"btn submit\" />\r\n                            ");
	}
	else
	{

	templateBuilder.Append("\r\n                                <input id=\"btnSubmit\" name=\"btnSubmit\" type=\"button\" value=\"确认提交\" class=\"btn gray\" disabled=\"disabled\" />\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                        </p>\r\n                    </div>\r\n                </div>\r\n                </form>\r\n                \r\n            </div>\r\n            \r\n        </div>\r\n    </div>\r\n</div>\r\n<!--/页面内容-->\r\n\r\n<!--页面底部-->\r\n");

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
