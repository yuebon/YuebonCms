﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_show" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="YueBonSoft.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by YueBoncms Template Engine at 2018-01-20 13:24:11.
		本页面代码由YueBoncms模板引擎生成于 2018-01-20 13:24:11. 
	*/

	base.channel = "goods";
	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!doctype html>\r\n<html>\r\n<head>\r\n<meta charset=\"utf-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui\">\r\n    ");
	string category_title = get_category_title(model.category_id,"购物商城");

	string strTitle = model.title;

	if (model.seo_title!="")
	{

	 strTitle = model.seo_title;

	}	//end for if

	templateBuilder.Append("\r\n    <title>");
	templateBuilder.Append(Utils.ObjectToStr(strTitle));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n    <meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_keywords));
	templateBuilder.Append("\" />\r\n    <meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_description));
	templateBuilder.Append("\" />\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/yanxuanen");
	templateBuilder.Append("/css/bootstrap.min.css\" />\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/yanxuanen");
	templateBuilder.Append("/css/bootstrap-extend.min.css\" />\r\n    <link href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/fontawesome/css/font-awesome.min.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/flagicon/css/flag-icon.min.css\" rel=\"stylesheet\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/swiper/css/swiper.min.css\" />\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/yanxuanen");
	templateBuilder.Append("/css/style.css\" />\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/yanxuanen");
	templateBuilder.Append("/js/bootstrap.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/yanxuanen");
	templateBuilder.Append("/js/breakpoints.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/yanxuanen");
	templateBuilder.Append("/js/isotope.pkgd.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.lazyload.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/swiper/js/swiper.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/yanxuanen");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body id=\"goods\" class=\"met-navfixed\">\r\n<!--页面头部-->\r\n");

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


	templateBuilder.Append("\r\n<!--/页面头部-->\r\n\r\n<!--当前位置-->\r\n");
	string category_nav = get_category_menu("goods_list", model.category_id);

	templateBuilder.Append("\r\n<div class=\"met-position  pattern-show\">\r\n    <div class=\"container\">\r\n        <div class=\"row\">\r\n            <ol class=\"breadcrumb\">\r\n                <li>\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\" title=\"首页\">\r\n                        <i class=\"icon fa-home\" aria-hidden=\"true\"></i>首页\r\n                    </a>\r\n                </li>\r\n                <li class=\"dropdown\">\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("goods"));

	templateBuilder.Append("\"\r\n                        title=\"产品展示\"\r\n                        class=\"dropdown-toggle\"\r\n                        data-toggle=\"dropdown\"\r\n                        aria-expanded=\"false\">产品展示<i class=\"caret\"></i></a>\r\n                    <ul class=\"dropdown-menu bullet\">\r\n                        <!--<li><a href=\"");
	templateBuilder.Append(linkurl("goods"));

	templateBuilder.Append("\" title=\"全部\">全部</a></li>-->\r\n                        ");
	DataTable categoryList = get_category_child_list(channel,0);

	foreach(DataRow cdr in categoryList.Rows)
	{

	templateBuilder.Append("\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("goods_list",Utils.ObjectToStr(cdr["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(cdr["title"]) + "\">" + Utils.ObjectToStr(cdr["title"]) + "</a></li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </li>\r\n                <li class=\"dropdown\">\r\n                    ");
	templateBuilder.Append(Utils.ObjectToStr(category_nav));
	templateBuilder.Append("\r\n                </li>\r\n            </ol>\r\n        </div>\r\n    </div>\r\n</div>\r\n<!--/当前位置-->\r\n<div class=\"page met-showproduct pagetype1 animsition\">\r\n    <div class=\"met-showproduct-head\">\r\n	    <div class=\"container\">\r\n		    <div class=\"row\">\r\n			    <div class=\"col-md-7\">\r\n                    <div class=\"swiper-container gallery-top\">\r\n                        <ul class=\"swiper-wrapper\">\r\n                            ");
	if (model.albums!=null)
	{

	foreach(YueBonSoft.Model.article_albums modelt in model.albums)
	{

	templateBuilder.Append("\r\n                            <li class=\"swiper-slide\"><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.original_path));
	templateBuilder.Append("\" /></li>\r\n                            ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n                        </ul>\r\n                        <!-- Add Arrows -->\r\n                        <div class=\"swiper-button-next swiper-button-black\"></div>\r\n                        <div class=\"swiper-button-prev swiper-button-black\"></div>\r\n                    </div>\r\n                    <div class=\"swiper-container gallery-thumbs\">\r\n                        <ul class=\"swiper-wrapper\">                            \r\n                            ");
	if (model.albums!=null)
	{

	foreach(YueBonSoft.Model.article_albums modelt in model.albums)
	{

	templateBuilder.Append("\r\n                            <li class=\"swiper-slide\"><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.thumb_path));
	templateBuilder.Append("\" /></li>\r\n                            ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n                        </ul>\r\n                    </div>\r\n			    </div>\r\n			    <div class=\"visible-xs-block visible-sm-block height-20\"></div>\r\n			    <div class=\"col-md-5 product-intro\">\r\n				    <h1>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</h1>\r\n				    <p class=\"description\">");
	templateBuilder.Append(Utils.ObjectToStr(model.zhaiyao));
	templateBuilder.Append("</p>\r\n				    \r\n				    <div class=\"tools\">\r\n                        <!--分享-->\r\n                        ");

	templateBuilder.Append("  <!-- JiaThis Button BEGIN --> \r\n  <div id=\"ckepop\">\r\n      <span class=\"jiathis_txt\">分享到：</span>\r\n      <a class=\"jiathis_button_tqq\">腾讯</a>\r\n      <a class=\"jiathis_button_tsina\">新浪</a>\r\n      <a class=\"jiathis_button_renren\">人人网</a>\r\n      <a class=\"jiathis_button_email\">邮件</a>\r\n      <a class=\"jiathis_button_copy\">网址</a> \r\n      <a href=\"http://www.jiathis.com/share/?uid=90225\" class=\"jiathis jiathis_txt jiathis_separator jtico jtico_jiathis\" target=\"_blank\">更多</a> \r\n      <a class=\"jiathis_counter_style\"></a> \r\n  </div> \r\n  <!-- JiaThis Button END -->\r\n  <script type=\"text/javascript\">var jiathis_config={data_track_clickback:true};</");
	templateBuilder.Append("script> \r\n  <script type=\"text/javascript\" src=\"http://v2.jiathis.com/code/jia.js?uid=1336353133859589\" charset=\"utf-8\"></");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n                        <!--/分享-->\r\n                    </div>\r\n			    </div>\r\n		    </div>\r\n	    </div>\r\n    </div>\r\n    <div class=\"met-showproduct-body\">\r\n		<div class=\"container\">\r\n			<div class=\"row no-space\">\r\n				<div class=\"col-md-9 product-content-body\">\r\n					<div class=\"row\">\r\n					<div class=\"panel product-detail\">\r\n						<div class=\"panel-body\">\r\n							<ul class=\"nav nav-tabs nav-tabs-line met-showproduct-navtabs affix-nav\">\r\n								<li class=\"active\"><a data-toggle=\"tab\" href=\"#product-details\" data-get=\"product-details\">商品介绍</a></li>\r\n								<!--<li><a data-toggle=\"tab\" href=\"#product-content1\" data-get=\"product-content1\">商品评论</a></li>-->\r\n							</ul>\r\n							<div class=\"tab-content\">\r\n								<div class=\"tab-pane met-editor lazyload clearfix animation-fade active\" id=\"product-details\">\r\n									<div>");
	templateBuilder.Append(Utils.ObjectToStr(model.content));
	templateBuilder.Append("</div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n\r\n					</div>\r\n				</div>\r\n\r\n				<!--右侧开始-->\r\n				<div class=\"col-md-3\">\r\n				<div class=\"row\">\r\n					<div class=\"panel product-hot\">\r\n						<div class=\"panel-body\">\r\n						<h4 class=\"example-title\">热门推荐</h4>\r\n							<div class=\"row\">\r\n                                ");
	DataTable redGoods = get_article_list(channel, model.category_id, 4, "status=0 and is_red=1");

	foreach(DataRow dr in redGoods.Rows)
	{

	templateBuilder.Append("\r\n								<div class=\"product-hot-list col-md-12 col-sm-4 col-xs-4 text-center margin-bottom-10\">\r\n									<a href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" target=\"_blank\" class=\"img\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">\r\n										<img data-original=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" class=\"img-responsive\"  alt=\"" + Utils.ObjectToStr(dr["title"]) + "\">\r\n									</a>\r\n									<a href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" target=\"_blank\" class=\"txt\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a>\r\n								</div>\r\n                                ");
	}	//end for if

	templateBuilder.Append("\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				</div>\r\n				<!--右侧结束-->\r\n\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<!--页面底部-->\r\n");

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


	templateBuilder.Append("\r\n<!--/页面底部-->\r\n    <style type=\"text/css\">\r\n        .swiper-container{\r\n            width: 100%;\r\n            margin-left: auto;\r\n            margin-right: auto;\r\n        }\r\n        .swiper-slide{\r\n            background-size: cover;\r\n            background-position: center;\r\n         }\r\n        .gallery-top{\r\n            width: 100% !important;\r\n            border:1px #f3f3f3 solid;\r\n        }\r\n        .gallery-thumbs{\r\n            box-sizing: border-box;\r\n            padding: 10px 0;\r\n        }\r\n        .gallery-thumbs .swiper-slide{\r\n            width:20%;\r\n            opacity: 0.4;\r\n            border:1px #f3f3f3 solid;\r\n        }\r\n         .gallery-top  .swiper-slide>img, .gallery-thumbs .swiper-slide>img{\r\n             width:100%;\r\n        }\r\n        .gallery-thumbs .swiper-slide-active {\r\n            opacity: 1;\r\n        }\r\n    </style>\r\n    <script type=\"text/javascript\">\r\n    var galleryTop = new Swiper('.gallery-top', {\r\n      spaceBetween: 10,\r\n      loop:true,\r\n      loopedSlides: 5, //looped slides should be the same\r\n      navigation: {\r\n        nextEl: '.swiper-button-next',\r\n        prevEl: '.swiper-button-prev',\r\n      },\r\n    });\r\n    var galleryThumbs = new Swiper('.gallery-thumbs', {\r\n      spaceBetween: 10,\r\n      slidesPerView: 4,\r\n      touchRatio: 0.2,\r\n      loop: true,\r\n      loopedSlides: 5, //looped slides should be the same\r\n      slideToClickedSlide: true,\r\n    });\r\n    galleryTop.controller.control = galleryThumbs;\r\n    galleryThumbs.controller.control = galleryTop;\r\n\r\n    </");
	templateBuilder.Append("script>\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>