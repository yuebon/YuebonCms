<%@ Page Language="C#" AutoEventWireup="true" Inherits="YueBonSoft.Web.UI.Page.index" ValidateRequest="false" %>
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

	templateBuilder.Append("<!doctype html>\r\n<html>\r\n<head>\r\n    <title>");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_title));
	templateBuilder.Append("</title>\r\n    <meta name=\"renderer\" content=\"webkit\">\r\n    <meta charset=\"utf-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui\">\r\n    <meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n    <meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/css/bootstrap.min.css\" />\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/css/bootstrap-extend.min.css\" />\r\n    <link href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/fontawesome/css/font-awesome.min.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/flagicon/css/flag-icon.min.css\" rel=\"stylesheet\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/swiper/css/swiper.min.css\" />\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/owlcarousel/assets/owl.carousel.min.css\" />\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/css/style.css\" />\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/css/banner.css\" />\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/js/bootstrap.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/js/breakpoints.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/js/isotope.pkgd.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.lazyload.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/swiper/js/swiper.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/owlcarousel/owl.carousel.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">\r\n        $(document).ready(function () {\r\n            var swiper = new Swiper('.swiper-container', {\r\n                pagination: {\r\n                    el: '.swiper-pagination',\r\n                    clickable: true,\r\n                },\r\n                navigation: {\r\n                    nextEl: '.swiper-button-next',\r\n                    prevEl: '.swiper-button-prev',\r\n                },\r\n                slidesPerView: 1,\r\n                paginationClickable: true,\r\n                spaceBetween: 30,\r\n                loop: true\r\n            });\r\n\r\n            Breakpoints();\r\n            if ($(\".met-index-service .services-box\").length && $(\".met-index-service .services-box img[data-original]\").lazyload({\r\n                threshold: 300,\r\n                effect: \"fadeIn\"\r\n            }),\r\n                $(\".met-index-product\").length && scrollFun($(\".met-index-product\"), 300,\r\n                    function () {\r\n                        $(\".met-index-product .owl-carousel\").owlCarousel({\r\n                            loop: !0,\r\n                            margin: 10,\r\n                            nav: !0,\r\n                            lazyLoad: !0,\r\n                            dots: !1,\r\n                            navText: ['<i class=\"fa fa-angle-left\"></i>', '<i class=\"fa fa-angle-right\"></i>'],\r\n                            autoplay: !0,\r\n                            autoplayTimeout: 1000,\r\n                            autoplayHoverPause: !0,\r\n                            responsive: {\r\n                                0: {\r\n                                    items: 1\r\n                                },\r\n                                767: {\r\n                                    items: 1\r\n                                },\r\n                                970: {\r\n                                    items: 2\r\n                                },\r\n                                1024: {\r\n                                    items: 3\r\n                                },\r\n                                1200: {\r\n                                    items: 4\r\n                                }\r\n                            }\r\n                        })\r\n                    }),\r\n                $(\".met-index-cases\").length && scrollFun($(\".met-index-cases\"), 300,\r\n                    function () {\r\n                        $(\".met-index-cases .owl-carousel\").owlCarousel({\r\n                            loop: !0,\r\n                            margin: 30,\r\n                            nav: !0,\r\n                            lazyLoad: !0,\r\n                            dots: !1,\r\n                            navText: ['<i class=\"fa fa-angle-left\"></i>', '<i class=\"fa fa-angle-right\"></i>'],\r\n                            autoplay: !0,\r\n                            autoplayTimeout: 3e3,\r\n                            autoplayHoverPause: !0,\r\n                            responsive: {\r\n                                0: {\r\n                                    items: 1\r\n                                },\r\n                                767: {\r\n                                    items: 1\r\n                                },\r\n                                970: {\r\n                                    items: 2\r\n                                },\r\n                                1024: {\r\n                                    items: 3\r\n                                },\r\n                                1200: {\r\n                                    items: 3\r\n                                }\r\n                            }\r\n                        })\r\n                    }));\r\n\r\n\r\n            if ($(\".met-index-case\").length) {\r\n                Breakpoints.get(\"xs\").on({\r\n                    enter: function () {\r\n                        if (!$(\".met-index-case .nav-tabs\").parent().hasClass(\"swiper-container\")) {\r\n                            $(\".met-index-case .nav-tabs\").addClass(\"swiper-wrapper\").wrap('<div class=\"swiper-container\"></div>').find(\">li\").addClass(\"swiper-slide\").css(\"width\", \"auto\");\r\n                            new Swiper(\".swiper-container\", {\r\n                                slidesPerView: \"auto\"\r\n                            });\r\n                            $(\".met-index-case .nav-tabs\").width(sonWidthSum(\".met-index-case .nav-tabs>li\") + 5)\r\n                        }\r\n                    }\r\n                });\r\n                var t = \".met-index-case .blocks\",\r\n                    e = \".met-index-case .nav-tabs li\";\r\n                $(t + \" [data-original]\").lazyload({\r\n                    threshold: 300,\r\n                    effect: \"fadeIn\",\r\n                    skip_invisible: !0\r\n                }),\r\n                    IsotopeNum(t, e),\r\n                    removeImageSize(t + \" [data-original]\",\r\n                        function () {\r\n                            $(e + \".active a\").trigger(\"click\")\r\n                        })\r\n            }\r\n        })\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body id=\"index\" class=\"yue-navfixed\">\r\n<!--[if lte IE 8]>\r\n    <div class=\"text-center padding-top-50 padding-bottom-50 bg-blue-grey-100\">\r\n    <p class=\"browserupgrade font-size-18\">你正在使用一个<strong>过时</strong>的浏览器。请<a href=\"http://browsehappy.com/\" target=\"_blank\">升级您的浏览器</a>，以提高您的体验。</p>\r\n    </div>\r\n<![endif]-->\r\n    \r\n<div id=\"page\">\r\n<!--页面头部-->\r\n");

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


	templateBuilder.Append("\r\n<!--/页面头部-->\r\n<div class=\"swiper-container\">\r\n    <div class=\"swiper-wrapper \">\r\n        <div class=\"swiper-slide\">\r\n            <img src=\"/upload/201804/01/201804011146171347.jpg\" sizes=\"(max-width: 767px) 767px\"  data-height='0|0|0'/>\r\n            <div class=\"banner-text p-0\" met-imgmask>\r\n                <div class='container'>\r\n                    <div class='banner-text-con'>\r\n                        <div>\r\n                            <h4 class=\"animation-slide-top font-weight-500\" style=\"color:#ffffff\">Know You More</h4>\r\n                            <p class=\"animation-slide-bottom\" style='color:#ffffff'>懂你，总会多一点</p>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"swiper-slide\"><img src=\"/upload/201804/01/201804011145448828.jpg\" /></div>\r\n    </div>\r\n    <!-- Add Pagination -->\r\n    <div class=\"swiper-pagination\"></div>\r\n    <!-- Add Arrows -->\r\n    <div class=\"swiper-button-next\"></div>\r\n    <div class=\"swiper-button-prev\"></div>\r\n</div>\r\n    <div class=\"met-index-service met-index-body\">\r\n        <div class=\"container services-bg\">\r\n            <h3 class=\"animation-slide-top appear-no-repeat\" data-plugin=\"appear\" data-animate=\"slide-top\" data-repeat=\"false\"><a href=\"#\" title=\"我们的产品\" target='_self'>主要服务行业</a></h3>\r\n            <p class=\"desc animation-fade appear-no-repeat\" data-plugin=\"appear\" data-animate=\"fade\" data-repeat=\"false\">我们为不同行业提供专业的产品以及服务</p>\r\n            <div class=\"row\">\r\n                <div class=\"col-lg-6 col-md-12 animation-slide-top\" data-plugin=\"appear\" data-animate=\"slide-bottom\" data-repeat=\"false\">\r\n                    <a href=\"/goods/40.html\" title=\"汽车行业配套产品\" target='_self'>\r\n                        <div class=\"services-box\">\r\n                            <img data-original=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/images/qiche.jpg\" src=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/images/qiche.jpg\" title=\"汽车行业配套产品\" alt=\"汽车行业配套产品\">\r\n                            <div class=\"content\">\r\n                                <h4>汽车行业配套产品</h4>\r\n                                <p>延轩模具在汽车行业配套产品有中控、脚踏板、仪表盘、安全带扣、方向盘等相关模具。</p>\r\n                            </div>\r\n                        </div>\r\n                    </a>\r\n                    <a href=\"/goods/42.html\" title=\"管路产品\" target='_self'>\r\n                        <div class=\"services-box\">\r\n                            <img data-original=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/images/guanlu.jpg\" src=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/images/guanlu.jpg\" title=\"管路产品\" alt=\"管路产品\">\r\n                            <div class=\"content\">\r\n                                <h4>管路产品</h4>\r\n                                <p>延轩模具在管路产品设计、制造管件模具，为客户提供最具有竞争力的管件模具</p>\r\n                            </div>\r\n                        </div>\r\n                    </a>\r\n                </div>\r\n                <div class='col-lg-6 col-md-12'>\r\n                    <a href=\"/goods/41.html\" title=\"家电产品\" target='_self'>\r\n                        <div class=\"services-box\">\r\n                            <img data-original=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/images/jiadian.jpg\" src=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/images/jiadian.jpg\" title=\"家电产品\" alt=\"家电产品\">\r\n                            <div class=\"content\">\r\n                                <h4>家电产品</h4>\r\n                                <p>延轩模具在家电行业配套产品有电视机部件、电吹风、空气净化器部件等模具</p>\r\n                            </div>\r\n                        </div>\r\n                    </a>\r\n                    <a href=\"/goods/52.html\" title=\"电子产品\" target='_self'>\r\n                        <div class=\"services-box\">\r\n                            <img data-original=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/images/thumb_002.jpg\" src=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/images/thumb_002.jpg\" title=\"电子产品\" alt=\"电子产品\">\r\n                            <div class=\"content\">\r\n                                <h4>电子产品</h4>\r\n                                <p>延轩模具在电子产品配套产品有铝型材机箱外壳、铝型材散热器、钣金机箱、机柜、塑胶外壳、铝合金及塑胶密封箱等</p>\r\n                            </div>\r\n                        </div>\r\n                    </a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"met-index-product met-index-body\">\r\n        <div class=\"container\">\r\n            <h3 class=\"animation-slide-top appear-no-repeat\" data-plugin=\"appear\" data-animate=\"slide-top\" data-repeat=\"false\"><a href=\"/goods/53.html\" title=\"主要模具\" target='_self'>主要模具</a></h3>\r\n            <p class=\"desc animation-slide-top appear-no-repeat\" data-plugin=\"appear\" data-animate=\"fade\" data-repeat=\"false\">我们有丰富的模具，为客户提供优质模具产品。</p>\r\n            <div class=\"row\">\r\n                <div class=\"col-md-12\">\r\n                    <ul class=\"owl-carousel  animation-slide-bottom\" data-animate=\"slide-bottom\">\r\n                        ");
	DataTable redList = get_article_list("goods", 53, 10, "status=0 and is_red=1");

	int reddr__loop__id=0;
	foreach(DataRow reddr in redList.Rows)
	{
		reddr__loop__id++;


	templateBuilder.Append("\r\n                        <li class=\"project-item \">\r\n                            <a href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(reddr["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(reddr["title"]) + "\" target='_self'>\r\n                                <div class=\"project-img\">\r\n                                    <img class=\"owl-lazy\" data-src=\"" + Utils.ObjectToStr(reddr["img_url"]) + "\" src=\"" + Utils.ObjectToStr(reddr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(reddr["title"]) + "\" class=\"cover-image\">\r\n                                </div>\r\n                                <div class=\"project-intro\">\r\n                                    <h4 class=\"project-title\">" + Utils.ObjectToStr(reddr["title"]) + "</h4>\r\n                                    <div class=\"project-descr\">" + Utils.ObjectToStr(reddr["zhaiyao"]) + "</div>\r\n                                </div>\r\n                            </a>\r\n                        </li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"met-index-case met-index-body\">\r\n        <div class=\"container\">\r\n            <h3 class=\"animation-slide-top appear-no-repeat\" data-plugin=\"appear\" data-animate=\"slide-top\" data-repeat=\"false\"><a href=\"/goods.html\" title=\"热门产品\" target='_self'>热门产品</a></h3>\r\n            <p class=\"desc animation-slide-top appear-no-repeat\" data-plugin=\"appear\" data-animate=\"fade\" data-repeat=\"false\">我们公司的热门模具产品</p>\r\n        </div>\r\n        <ul class=\"nav nav-tabs animation-fade appear-no-repeat\" data-plugin=\"appear\" data-animate=\"fade\" data-repeat=\"false\">\r\n            <li class=\"active\">\r\n                <a href=\"#caselist\" title=\"全部\" data-toggle=\"tab\" data-num='5' data-filter=\"*\">全部</a>\r\n            </li>\r\n            <li>\r\n                <a href=\"#caselist\" title=\"汽车行业配套产品\" data-toggle=\"tab\" data-filter=\"list_40\">汽车行业配套产品</a>\r\n            </li>\r\n            <li>\r\n                <a href=\"#caselist\" title=\"家电产品\" data-toggle=\"tab\" data-filter=\"list_41\">家电产品</a>\r\n            </li>\r\n            <li>\r\n                <a href=\"#caselist\" title=\"管路产品\" data-toggle=\"tab\" data-filter=\"list_42\">管路产品</a>\r\n            </li>\r\n            <li>\r\n                <a href=\"#caselist\" title=\"电子产品\" data-toggle=\"tab\" data-filter=\"list_52\">电子产品</a>\r\n            </li>\r\n        </ul>\r\n\r\n        <ul class=\"blocks no-space blocks-xlg-5 blocks-md-5 blocks-sm-3 blocks-xs-2\" id=\"caselist\">\r\n            ");
	DataTable hotList = get_article_list("goods", 10, "status=0 and is_hot=1 and category_id in(40,41,42,52)");

	int hotdr__loop__id=0;
	foreach(DataRow hotdr in hotList.Rows)
	{
		hotdr__loop__id++;


	templateBuilder.Append("\r\n            <li data-type=\"list_" + Utils.ObjectToStr(hotdr["category_id"]) + "\" class=\"project-item\">\r\n                <div class=\"widget widget-shadow\">\r\n                    <figure class=\"widget-header cover\">\r\n                        <a href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(hotdr["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(hotdr["title"]) + "\" target='_self'>\r\n                            <div class=\"project-img\">\r\n                                <img data-original=\"" + Utils.ObjectToStr(hotdr["img_url"]) + "\" src=\"" + Utils.ObjectToStr(hotdr["img_url"]) + "\"  alt=\"" + Utils.ObjectToStr(hotdr["title"]) + "\" width=\"400\" height=\"350\" class=\"cover-image\">\r\n                            </div>\r\n                            <div class=\"project-intro\">\r\n                                <h4 class=\"project-title\">" + Utils.ObjectToStr(hotdr["title"]) + "</h4>\r\n                                <div class=\"project-descr\">" + Utils.ObjectToStr(hotdr["zhaiyao"]) + "</div>\r\n                            </div>\r\n                        </a>\r\n                    </figure>\r\n                </div>\r\n            </li>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n    </div>\r\n\r\n    <div class=\"met-index-about met-index-body\">\r\n        <div class=\"container-fluid\">\r\n            <div class=\"left_side animation-slide-top\" data-animate=\"slide-top\" data-bg=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/images/1479211597.jpg\" bg-repeat=\"false\" style='background-image: url(\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/images/1479211597.jpg\");'>\r\n                <div class=\"we_are_opacity\">\r\n                    <div class=\"we_are_border\">\r\n                        <h2>关于我们</h2>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class=\"right_side animation-slide-top\" data-animate=\"slide-top\" data-plugin=\"appear\" data-repeat=\"false\">\r\n                <div class=\"we_are_deatails\">\r\n                    <h2><a href=\"about/1-cn.html\" title=\"公司简介\" target='_self'>公司简介</a></h2>\r\n                    <p>\r\n                    <p>上海延轩精密模具有限公司成立于2011年8月，是一家专业制造各类精密塑料模具的企业，一直致力于汽车产品，电脑周边产品，家电产品及电子产品设计与制造。</p>\r\n                    <p>本公司本着品质第一，客户满意为质量方针，利用雄厚的技术基础，多年的模具制造经验，精良的生产工艺，先进的加工设备，积极探索市场，追求卓越品质。秉承“稳定，和谐，热忱，效率”的精神。品质意识的不断提高的今天，公司不断引进先进的技术和机械设备。广纳技术人才，力求在模具技术上持续创新，使公司不断进步和持续发展，市场只提供机会，品质才是公司赖以生存的命脉。我司始终如一坚持“选择我们，共同受益”的经营理念。</p>\r\n\r\n                    <p>我们将始终坚持：\"质量第一、客户至上、严守信誉、服务社会\"的宗旨，为中国模具事业的发展做出贡献。</p>\r\n                    <p><strong>我们的愿景：</strong>创造模具行业卓越品牌。</p>\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"met-index-bottomcontact met-index-body\">\r\n        <div class=\"container\">\r\n            <div class=\"row\">\r\n                <div class=\"partner col-lg-12 col-md-12\">\r\n                    <h3 class=\"animation-slide-top appear-no-repeat\" data-plugin=\"appear\" data-animate=\"slide-top\" data-repeat=\"false\"><a href=\"hezuo/list-39-cn.html\" title=\"合作伙伴\" target='_self'>合作伙伴</a></h3>\r\n                    <p class=\"desc animation-slide-top appear-no-repeat\" data-plugin=\"appear\" data-animate=\"fade\" data-repeat=\"false\"> 欢迎更多的公司成为我们的合作伙伴</p>\r\n                    <div class=\"row\">\r\n                        <ul class=\"partnerli\">\r\n                            ");
	DataTable hotPartnerList = get_article_list("partner", 30, "status=0 and is_hot=1");

	int prdr__loop__id=0;
	foreach(DataRow prdr in hotPartnerList.Rows)
	{
		prdr__loop__id++;


	templateBuilder.Append("\r\n                            <li class=\"col-lg-1 col-md-2  col-sm-2 col-xs-3\"><a href=\"#\" title=\"" + Utils.ObjectToStr(prdr["title"]) + "\" target='_self' class=\"met-img\"><img src=\"" + Utils.ObjectToStr(prdr["img_url"]) + "\" title=\"" + Utils.ObjectToStr(prdr["title"]) + "\" alt=\"" + Utils.ObjectToStr(prdr["title"]) + "\"></a></li>\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"met-index-cases met-index-body\" data-bg=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/images/cases_bg.jpg\" style=\"background-image:url(");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/images/cases_bg.jpg);\" bg-repeat=\"false\">\r\n        <div class=\"container\">\r\n            <div class=\"owl-carousel\" data-plugin=\"appear\" data-animate=\"fade\" data-repeat=\"false\">\r\n                ");
	DataTable redCaseList = get_article_list("case", 9, "status=0 and is_red=1");

	int casedr__loop__id=0;
	foreach(DataRow casedr in redCaseList.Rows)
	{
		casedr__loop__id++;


	templateBuilder.Append("\r\n                <div class=\"item\">\r\n                    <div class=\"testimonials\">\r\n                        <div class=\"testimonials-content\">\r\n                            <h3>" + Utils.ObjectToStr(casedr["title"]) + "</h3>\r\n                            <p>" + Utils.ObjectToStr(casedr["zhaiyao"]) + "</p>\r\n                        </div>\r\n                        <div class=\"testimonials-author\">\r\n                            <img class=\"owl-lazy\" data-src=\"" + Utils.ObjectToStr(casedr["img_url"]) + "\" src=\"" + Utils.ObjectToStr(casedr["img_url"]) + "\" title=\"" + Utils.ObjectToStr(casedr["title"]) + "\" alt=\"" + Utils.ObjectToStr(casedr["title"]) + "\" height=\"350\">\r\n                            <span class=\"t-mgr30\">" + Utils.ObjectToStr(casedr["source"]) + " </span>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <div class=\"met-index-news met-index-body\">\r\n        <div class=\"container\">\r\n            <h3 class=\"animation-slide-top appear-no-repeat\" data-plugin=\"appear\" data-animate=\"slide-top\" data-repeat=\"false\"><a href=\"");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("\" title=\"新闻中心\" target='_self'>新闻中心</a></h3>\r\n            <p class=\"desc animation-slide-top appear-no-repeat\" data-plugin=\"appear\" data-animate=\"fade\" data-repeat=\"false\">最新行业资讯和延轩动态</p>\r\n\r\n            <div class=\"row\">\r\n                ");
	DataTable newsList = get_article_list("news", 3, "status=0");

	int newsdr__loop__id=0;
	foreach(DataRow newsdr in newsList.Rows)
	{
		newsdr__loop__id++;


	templateBuilder.Append("\r\n                <div class=\"col-lg-4 col-md-4 col-sm-12 col-xs-12 single-blog-post\" data-plugin=\"appear\" data-animate=\"slide-bottom\" data-repeat=\"false\">\r\n                    <div class=\"img-holder\">\r\n                        <img class=\"cover-image\" data-original=\"" + Utils.ObjectToStr(newsdr["img_url"]) + "\" src=\"" + Utils.ObjectToStr(newsdr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(newsdr["title"]) + "\" title=\"" + Utils.ObjectToStr(newsdr["title"]) + "\" width=\"370\" height=\"200\">\r\n                        <div class=\"overlay\">\r\n                            <a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(newsdr["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(newsdr["title"]) + "\" target='_self'>\r\n                                <div class=\"overlays\">\r\n                                </div>\r\n                            </a>\r\n                        </div>\r\n                    </div>\r\n                    <ul>\r\n                        <li><span>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(newsdr["add_time"])).ToString("yyyy-MM-dd"));

	templateBuilder.Append("</span></li>\r\n                        <li><p><i class=\"icon wb-eye margin-right-5\" aria-hidden=\"true\"></i>" + Utils.ObjectToStr(newsdr["click"]) + "</p></li>\r\n                    </ul>\r\n                    <a href=\"news/75-cn.html\" title=\"" + Utils.ObjectToStr(newsdr["title"]) + "\" target='_self'><h2>" + Utils.ObjectToStr(newsdr["title"]) + "</h2></a>\r\n                    <p>" + Utils.ObjectToStr(newsdr["zhaiyao"]) + "</p>\r\n                </div>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n<!--页面底部-->\r\n");

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


	templateBuilder.Append("\r\n<!--/页面底部-->\r\n\r\n</div>\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
