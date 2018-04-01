<%@ Page Language="C#" AutoEventWireup="true" Inherits="YueBonSoft.Web.UI.Page.index" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="YueBonSoft.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by YueBoncms Template Engine at 2018-04-01 13:46:52.
		本页面代码由YueBoncms模板引擎生成于 2018-04-01 13:46:52. 
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
	templateBuilder.Append("/css/style.css\" />\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
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

	templateBuilder.Append("\" title=\"网站首页\" class=\"link active\">首页</a></li>\r\n                    <li class=\"dropdown margin-left-30 ecodropdown\">\r\n                        <a class=\"dropdown-toggle link animation-slide-top\"\r\n                            data-toggle=\"dropdown\" data-hover=\"dropdown\"\r\n                            href=\"");
	templateBuilder.Append(linkurl("solutions"));

	templateBuilder.Append("\"\r\n                            aria-expanded=\"false\"\r\n                            role=\"button\" title=\"产品&解决方案\">产品&解决方案<span class=\"caret\"></span></a>\r\n                        <ul class=\"dropdown-menu dropdown-menu-right bullet\" role=\"menu\">\r\n                            ");
	DataTable solutionscategoryList = get_category_child_list("solutions",0);

	foreach(DataRow cadr in solutionscategoryList.Rows)
	{

	templateBuilder.Append("\r\n                            <li><a class=\"animation-slide-top\" href=\"");
	templateBuilder.Append(linkurl("solutions",Utils.ObjectToStr(cadr["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(cadr["title"]) + "\">" + Utils.ObjectToStr(cadr["title"]) + "</a></li>\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                        </ul>\r\n                    </li>\r\n                    <li class=\"dropdown margin-left-30 ecodropdown\">\r\n                        <a class=\"dropdown-toggle link animation-slide-top\"\r\n                            data-toggle=\"dropdown\" data-hover=\"dropdown\"\r\n                            href=\"");
	templateBuilder.Append(linkurl("service"));

	templateBuilder.Append("\"\r\n                            aria-expanded=\"false\"\r\n                            role=\"button\" title=\"服务\">服务<span class=\"caret\"></span></a>\r\n                        <ul class=\"dropdown-menu dropdown-menu-right bullet\" role=\"menu\">\r\n                            ");
	DataTable servicecategoryList = get_category_child_list("service",0);

	foreach(DataRow cadr in servicecategoryList.Rows)
	{

	templateBuilder.Append("\r\n                            <li><a class=\"animation-slide-top\" href=\"");
	templateBuilder.Append(linkurl("service",Utils.ObjectToStr(cadr["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(cadr["title"]) + "\">" + Utils.ObjectToStr(cadr["title"]) + "</a></li>\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                        </ul>\r\n                    </li>\r\n                    <li class=\"margin-left-30\"><a href=\"");
	templateBuilder.Append(linkurl("case"));

	templateBuilder.Append("\" title=\"案例\" class=\"link animation-slide-top\">案例</a></li>\r\n                    \r\n                    <li class=\"dropdown margin-left-30 ecodropdown\">\r\n                        <a class=\"dropdown-toggle link animation-slide-top\"\r\n                            data-toggle=\"dropdown\" data-hover=\"dropdown\"\r\n                            href=\"");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("\"\r\n                            aria-expanded=\"false\"\r\n                            role=\"button\"\r\n                            title=\"新闻资讯\">新闻<span class=\"caret\"></span></a>\r\n                        <ul class=\"dropdown-menu dropdown-menu-right bullet\" role=\"menu\">\r\n                            <li class=\"visible-xs-block\"><a href=\"");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("\" title=\"全部\">全部</a></li>\r\n                            ");
	DataTable newscategoryList = get_category_child_list("news",0);

	foreach(DataRow hdcdr in newscategoryList.Rows)
	{

	templateBuilder.Append("\r\n                            <li><a class=\"animation-slide-top\" href=\"");
	templateBuilder.Append(linkurl("news_list",Utils.ObjectToStr(hdcdr["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(hdcdr["title"]) + "\">" + Utils.ObjectToStr(hdcdr["title"]) + "</a></li>\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                        </ul>\r\n                    </li>\r\n                    <li class=\"dropdown margin-left-30 ecodropdown\">\r\n                        <a class=\"dropdown-toggle link animation-slide-top\" data-toggle=\"dropdown\" data-hover=\"dropdown\"\r\n                           href=\"");
	templateBuilder.Append(linkurl("content","about"));

	templateBuilder.Append("\" \r\n                        aria-expanded=\"false\"\r\n                            role=\"button\" title=\"关于我们\">关于<span class=\"caret\"></span></a>\r\n                        <ul class=\"dropdown-menu dropdown-menu-right bullet\" role=\"menu\">\r\n                            ");
	DataTable aboutList = get_article_list("content", 10,"status=0");

	int abdr__loop__id=0;
	foreach(DataRow abdr in aboutList.Rows)
	{
		abdr__loop__id++;


	templateBuilder.Append("\r\n                            <li><a class=\"animation-slide-top\" href=\"");
	templateBuilder.Append(linkurl("content",Utils.ObjectToStr(abdr["call_index"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(abdr["title"]) + "\">" + Utils.ObjectToStr(abdr["title"]) + "</a></li>\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                            <li class=\"margin-left-30\"><a href=\"");
	templateBuilder.Append(linkurl("jobs"));

	templateBuilder.Append("\" title=\"加入我们\" class=\"link animation-slide-top\">加入我们</a></li>\r\n                        </ul>\r\n                    </li>\r\n                    <!--<li class=\"margin-left-0\"><a href=\"");
	templateBuilder.Append(linkurl("down"));

	templateBuilder.Append("\" title=\"资料下载\" class=\"link animation-slide-top\">资料下载</a></li>-->\r\n                    <li class=\"margin-left-30\" ><a href=\"");
	templateBuilder.Append(linkurl("content","contact"));

	templateBuilder.Append("\" title=\"联系\" class=\"link animation-slide-top\">联系</a></li>\r\n                </ul>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</nav>\r\n\r\n");


	templateBuilder.Append("\r\n<!--/页面头部-->\r\n<div class=\"swiper-container\">\r\n    <div class=\"swiper-wrapper \">\r\n        <div class=\"swiper-slide\">\r\n            <img src=\"/upload/201804/01/201804011146171347.jpg\" sizes=\"(max-width: 767px) 767px\"  data-height='0|0|0'/>\r\n            <div class=\"banner-text p-0\" met-imgmask>\r\n                <div class='container'>\r\n                    <div class='banner-text-con'>\r\n                        <div>\r\n                            <h4 class=\"animation-slide-top font-weight-500\" style=\"color:#ffffff\">Know You More</h4>\r\n                            <p class=\"animation-slide-bottom\" style='color:#ffffff'>懂你，总会多一点</p>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"swiper-slide\"><img src=\"/upload/201804/01/201804011145448828.jpg\" /></div>\r\n    </div>\r\n    <!-- Add Pagination -->\r\n    <div class=\"swiper-pagination\"></div>\r\n    <!-- Add Arrows -->\r\n    <div class=\"swiper-button-next\"></div>\r\n    <div class=\"swiper-button-prev\"></div>\r\n</div>\r\n    <div class=\"met-index-service met-index-body\">\r\n        <div class=\"container services-bg\">\r\n            <h3 class=\"animation-slide-top appear-no-repeat\" data-plugin=\"appear\" data-animate=\"slide-top\" data-repeat=\"false\"><a href=\"#\" title=\"产品&解决方案\" target='_self'>产品&解决方案</a></h3>\r\n            <p class=\"desc animation-fade appear-no-repeat\" data-plugin=\"appear\" data-animate=\"fade\" data-repeat=\"false\">我们为不同行业提供专业的产品&解决方案</p>\r\n            <div class=\"row\">\r\n                <div class=\"col-lg-6 col-md-12 animation-slide-top\" data-plugin=\"appear\" data-animate=\"slide-bottom\" data-repeat=\"false\">\r\n                    <a href=\"/solutions/54.html\" title=\"生产制造\" target='_self'>\r\n                        <div class=\"services-box\">\r\n                            <img data-original=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/images/qiche.jpg\" src=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/images/qiche.jpg\" title=\"汽车行业配套产品\" alt=\"汽车行业配套产品\">\r\n                            <div class=\"content\">\r\n                                <h4>生产制造</h4>\r\n                                <p>越邦科技为生产制造企业提供财务、供应链、智能制造、仓储等系列IT解决方案和产品。</p>\r\n                            </div>\r\n                        </div>\r\n                    </a>\r\n                    <a href=\"/solutions/52.html\" title=\"物流运输\" target='_self'>\r\n                        <div class=\"services-box\">\r\n                            <img data-original=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/images/guanlu.jpg\" src=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/images/guanlu.jpg\" title=\"管路产品\" alt=\"管路产品\">\r\n                            <div class=\"content\">\r\n                                <h4>物流运输</h4>\r\n                                <p>为第三方物流仓储企业提供整套完整信息化解决方案，产品有仓储管理系统（WMS）、订单软件（OMS）、运输管理系统（TMS）产品，</p>\r\n                            </div>\r\n                        </div>\r\n                    </a>\r\n                </div>\r\n                <div class='col-lg-6 col-md-12'>\r\n                    <a href=\"/solutions/56.html\" title=\"协同效率\" target='_self'>\r\n                        <div class=\"services-box\">\r\n                            <img data-original=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/images/jiadian.jpg\" src=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/images/jiadian.jpg\" title=\"家电产品\" alt=\"家电产品\">\r\n                            <div class=\"content\">\r\n                                <h4>协同效率</h4>\r\n                                <p>提供协同办公软件（OA）、客户关系管理软件（CRM)、建筑工程管理系统</p>\r\n                            </div>\r\n                        </div>\r\n                    </a>\r\n                    <a href=\"/solutions/55.html\" title=\"互联网基础服务\" target='_self'>\r\n                        <div class=\"services-box\">\r\n                            <img data-original=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/images/thumb_002.jpg\" src=\"");
	templateBuilder.Append("/templates/yuebon");
	templateBuilder.Append("/images/thumb_002.jpg\" title=\"电子产品\" alt=\"电子产品\">\r\n                            <div class=\"content\">\r\n                                <h4>互联网基础服务</h4>\r\n                                <p>为各类企业提供域名、虚拟主机、云服务器、IT安全等互联网基础服务产品</p>\r\n                            </div>\r\n                        </div>\r\n                    </a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <div class=\"met-index-about met-index-body\">\r\n        <div class=\"container-fluid\">\r\n            <div class=\"left_side animation-slide-top\" data-animate=\"slide-top\" data-bg=\"");
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

	templateBuilder.Append("<div class=\"ecofootbg\">\r\n    <div class=\"met-footnav-eco\">\r\n        <div class=\"container\">\r\n            <div class=\"row mob-masonry\">\r\n                <div class=\"col-md-2 col-sm-4 col-xs-6 list ecoinfo text-left masonry-item\">\r\n                    <h4>关于</h4>\r\n                    <ul>\r\n                        ");
	int ftabdr__loop__id=0;
	foreach(DataRow ftabdr in aboutList.Rows)
	{
		ftabdr__loop__id++;


	templateBuilder.Append("\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("content",Utils.ObjectToStr(ftabdr["call_index"])));

	templateBuilder.Append("\" target='_self' title=\"" + Utils.ObjectToStr(ftabdr["title"]) + "\">" + Utils.ObjectToStr(ftabdr["title"]) + "</a></li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("jobs"));

	templateBuilder.Append("\" target='_self' title=\"加入我们\">加入我们</a></li>\r\n                    </ul>\r\n                </div>\r\n                <div class=\"col-md-2 col-sm-4 col-xs-6 list ecoinfo text-left masonry-item\">\r\n                    <h4>产品&解决方案</h4>\r\n                    <ul>\r\n                        ");
	int ftcadr__loop__id=0;
	foreach(DataRow ftcadr in solutionscategoryList.Rows)
	{
		ftcadr__loop__id++;


	templateBuilder.Append("\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("solutions",Utils.ObjectToStr(ftcadr["call_index"])));

	templateBuilder.Append("\" target='_self' title=\"" + Utils.ObjectToStr(ftcadr["title"]) + "\">" + Utils.ObjectToStr(ftcadr["title"]) + "</a></li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n\r\n                <div class=\"col-md-2 col-sm-4 col-xs-6 list ecoinfo text-left masonry-item\">\r\n                    <h4>新闻</h4>\r\n                    <ul>\r\n                        ");
	foreach(DataRow fcdr in newscategoryList.Rows)
	{

	templateBuilder.Append("\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("news_list",Utils.ObjectToStr(fcdr["id"])));

	templateBuilder.Append("\" target='_self'  title=\"" + Utils.ObjectToStr(fcdr["title"]) + "\">" + Utils.ObjectToStr(fcdr["title"]) + "</a></li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n                <div class=\"col-md-1 col-sm-4 col-xs-6 list ecoinfo text-left masonry-item\">\r\n                    <h4>其他</h4>\r\n                    <ul>\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("case"));

	templateBuilder.Append("\" target='_self' title=\"案例\">案例</a></li>\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("down"));

	templateBuilder.Append("\" target='_self' title=\"资料下载\">资料下载</a></li>\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("feedback"));

	templateBuilder.Append("\" target='_self' title=\"留言反馈\">留言反馈</a></li>\r\n                    </ul>\r\n                </div>\r\n                <div class=\"col-md-3 col-sm-4 col-xs-12 list  text-left masonry-item\">\r\n                    <h4>联系我们</h4>\r\n                    <ul class=\"contact-info\">\r\n                        <li><i class=\"icon fa-map-marker\"></i>");
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
	templateBuilder.Append("</li>\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <div class=\"met-links text-center\">\r\n        <div class=\"container\">\r\n            <ol class=\"breadcrumb\">\r\n                <li>友情链接 :</li>\r\n                ");
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
	templateBuilder.Append("</p>\r\n            <div class=\"powered_by_metinfo\">Powered by YuebonInfo 3.0</div>\r\n        </div>\r\n    </footer>\r\n</div>\r\n<div class=\"modal fade modal-3d-flip-vertical\" id=\"site-navbar-search\" aria-hidden=\"true\" role=\"dialog\" tabindex=\"-1\">\r\n    <div class=\"modal-dialog modal-center modal-lg\">\r\n        <div class=\"modal-content\">\r\n            <div class=\"modal-body\">\r\n                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\r\n                    <span aria-hidden=\"true\">×</span>\r\n                </button>\r\n                <div class=\"container\">\r\n                    <div class=\"row\">\r\n                        <div class=\"search\">\r\n                            <form role=\"search\">\r\n                                <div class=\"form-group\">\r\n                                    <div class=\"input-search\">\r\n                                        <input id=\"keywords\" class=\"form-control\" name=\"keywords\" onkeydown=\"if(event.keyCode==13){SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');return false};\" placeholder=\"输入关健字\" type=\"text\">\r\n                                        <button type=\"button\" onclick=\"SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');\" class=\"input-search-btn\"><i class=\"icon fa-search\" aria-hidden=\"true\"></i></button>\r\n                                    </div>\r\n                                </div>\r\n                            </form>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n<button type=\"button\" class=\"btn btn-icon btn-primary btn-squared met-scroll-top hide\"><i class=\"icon fa-chevron-up\" aria-hidden=\"true\"></i></button>\r\n");


	templateBuilder.Append("\r\n<!--/页面底部-->\r\n\r\n</div>\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
