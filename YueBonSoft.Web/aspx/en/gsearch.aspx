<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_list" ValidateRequest="false" %>
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
	const int pagesize = 20;

	templateBuilder.Append("<!doctype html>\r\n<html>\r\n<head>\r\n<meta charset=\"utf-8\">\r\n<title>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_keywords));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_description));
	templateBuilder.Append("\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/pagination.css\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/yanxuanen");
	templateBuilder.Append("/css/style.css\" />\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/yanxuanen");
	templateBuilder.Append("/js/jquery.flexslider-min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/yanxuanen");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body id=\"goods\">\r\n<!--页面头部-->\r\n");

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
	string category_nav = get_category_menu("goods_list", category_id);

	templateBuilder.Append("\r\n<div class=\"section\">\r\n    <div class=\"location\">\r\n        <span>当前位置：</span>\r\n        <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a> &gt;\r\n        <a href=\"");
	templateBuilder.Append(linkurl("goods"));

	templateBuilder.Append("\">购物商城</a>\r\n        ");
	templateBuilder.Append(Utils.ObjectToStr(category_nav));
	templateBuilder.Append("\r\n    </div>\r\n</div>\r\n<!--/当前位置-->\r\n\r\n<!--C#代码-->\r\n");
	    string orderby="add_time desc,id asc";
	    string strBy=DTRequest.GetQueryString("orderby");
	    if(strBy=="click"){
	        orderby="click desc";
	    }else if(strBy=="min"){
	        orderby="sell_price asc";
	    }else if(strBy=="max"){
	        orderby="sell_price desc";
	    }
	    string strwhere="status=0";
	    int minPrice=DTRequest.GetQueryInt("min_price",0);
	    if(minPrice>0){
	        strwhere+="and sell_price>="+minPrice;
	    }
	    int maxPrice=DTRequest.GetQueryInt("max_price",0);
	    if(maxPrice>0){
	        strwhere+="and sell_price<="+maxPrice;
	    }
	    Dictionary<string,string> dicSpecIds=new Dictionary<string,string>();
	    for (int i = 0; i < Request.QueryString.AllKeys.Length; i++)
	    {
	        string paramKey=Request.QueryString.GetKey(i).ToString();
	        int paramValue=Utils.StrToInt(Request.QueryString[i].ToString(),0);
	        if(paramKey.StartsWith("s_") && paramValue>0)
	        {
	            dicSpecIds.Add(paramKey,paramValue.ToString());
	        }
	    }
	

	templateBuilder.Append("\r\n<!--/C#代码-->\r\n\r\n<!--/分类导航-->\r\n<div class=\"section\">\r\n    <div class=\"wrapper clearfix\">\r\n        <div class=\"screen-box\">\r\n            <!--分类-->\r\n            <dl>\r\n                <dt>分类：</dt>\r\n                <dd>\r\n                ");
	if (category_id==0)
	{

	templateBuilder.Append("\r\n                    <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch"));

	templateBuilder.Append("\">全部</a>\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("gsearch"));

	templateBuilder.Append("\">全部</a>\r\n                ");
	}	//end for if

	DataTable categoryList = get_category_child_list(channel,0);

	foreach(DataRow cdr in categoryList.Rows)
	{

	if (category_id==Utils.StrToInt(Utils.ObjectToStr(cdr["id"]), 0))
	{

	templateBuilder.Append("\r\n                        <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+Utils.ObjectToStr(cdr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr["title"]) + "</a>\r\n                    ");
	}
	else
	{

	templateBuilder.Append("\r\n                        <a href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+Utils.ObjectToStr(cdr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr["title"]) + "</a>\r\n                    ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n                </dd>\r\n            </dl>\r\n            <!--/分类-->\r\n            \r\n            <!--规格-->\r\n            ");
	DataTable specList = get_article_category_spec(model.id);

	foreach(DataRow dr1 in specList.Rows)
	{

	templateBuilder.Append("\r\n            <dl>\r\n                <dt>" + Utils.ObjectToStr(dr1["title"]) + "：</dt>\r\n                <dd>\r\n                ");
	DataTable subList = get_article_spec_child(Utils.StrToInt(Utils.ObjectToStr(dr1["id"]), 0));

	string tempKey = "s_"+Utils.ObjectToStr(dr1["id"]);

	if (!dicSpecIds.ContainsKey(tempKey))
	{

	templateBuilder.Append("\r\n                    <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby="+strBy+get_article_spec_param(dicSpecIds,"s_"+Utils.ObjectToStr(dr1["id"])+"=0")));

	templateBuilder.Append("\">全部</a>\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby="+strBy+get_article_spec_param(dicSpecIds,"s_"+Utils.ObjectToStr(dr1["id"])+"=0")));

	templateBuilder.Append("\">全部</a>\r\n                ");
	}	//end for if

	foreach(DataRow dr2 in subList.Rows)
	{

	if (dicSpecIds.ContainsValue(Utils.ObjectToStr(dr2["id"])))
	{

	templateBuilder.Append("\r\n                    <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby="+strBy+get_article_spec_param(dicSpecIds,"s_"+Utils.ObjectToStr(dr1["id"])+"="+Utils.ObjectToStr(dr2["id"]))));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr2["title"]) + "</a>\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby="+strBy+get_article_spec_param(dicSpecIds,"s_"+Utils.ObjectToStr(dr1["id"])+"="+Utils.ObjectToStr(dr2["id"]))));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr2["title"]) + "</a>\r\n                ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n                </dd>\r\n            </dl>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n            <!--/规格-->\r\n            \r\n            <!--价格-->\r\n            <dl>\r\n                <dt>价格：</dt>\r\n                <dd>\r\n                ");
	if (minPrice==0&&maxPrice==0)
	{

	templateBuilder.Append("\r\n                    <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&orderby="+strBy+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">全部</a>\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&orderby="+strBy+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">全部</a>\r\n                ");
	}	//end for if

	if (minPrice==0&&maxPrice==100)
	{

	templateBuilder.Append("\r\n                    <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price=0&max_price=100&orderby="+strBy+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">0-100元</a>\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price=0&max_price=100&orderby="+strBy+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">0-100元</a>\r\n                ");
	}	//end for if

	if (minPrice==101&&maxPrice==500)
	{

	templateBuilder.Append("\r\n                    <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price=101&max_price=500&orderby="+strBy+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">101-500元</a>\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price=101&max_price=500&orderby="+strBy+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">101-500元</a>\r\n                ");
	}	//end for if

	if (minPrice==501&&maxPrice==1000)
	{

	templateBuilder.Append("\r\n                    <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price=501&max_price=1000&orderby="+strBy+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">501-1000元</a>\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price=501&max_price=1000&orderby="+strBy+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">501-1000元</a>\r\n                ");
	}	//end for if

	if (minPrice==1001&&maxPrice==2000)
	{

	templateBuilder.Append("\r\n                    <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price=1001&max_price=2000&orderby="+strBy+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">1001-2000元</a>\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price=1001&max_price=2000&orderby="+strBy+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">1001-2000元</a>\r\n                ");
	}	//end for if

	if (minPrice==2000&&maxPrice==0)
	{

	templateBuilder.Append("\r\n                    <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price=2000&orderby="+strBy+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">2000以上</a>\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price=2000&orderby="+strBy+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">2000以上</a>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n                </dd>\r\n            </dl>\r\n            <!--/价格-->\r\n        </div>\r\n        \r\n        <div class=\"sort-box\">\r\n        ");
	if (strBy==""||strBy=="time")
	{

	templateBuilder.Append("\r\n            <a class=\"first selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby=time"+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">上架时间</a>\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n            <a class=\"first\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby=time"+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">上架时间</a>\r\n        ");
	}	//end for if

	if (strBy=="click")
	{

	templateBuilder.Append("\r\n            <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby=click"+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">按人气</a>\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n            <a href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby=click"+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">按人气</a>\r\n        ");
	}	//end for if

	if (strBy=="max")
	{

	templateBuilder.Append("\r\n            <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby=max"+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">价格从高到低</a>\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n            <a href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby=max"+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">价格从高到低</a>\r\n        ");
	}	//end for if

	if (strBy=="min")
	{

	templateBuilder.Append("\r\n            <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby=min"+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">价格从低到高</a>\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n            <a href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby=min"+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">价格从低到高</a>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n        </div>\r\n    \r\n    </div>\r\n</div>\r\n<!--/分类导航-->\r\n\r\n<!--商品列表-->\r\n<div class=\"section\">\r\n    <div class=\"wrapper clearfix\">\r\n        <ul class=\"img-list\">\r\n        <!--取得数据-->\r\n        ");
	DataTable goodsList = get_article_list(channel,category_id,dicSpecIds,pagesize,page,strwhere,orderby,out totalcount);

	templateBuilder.Append("\r\n        <!--分页页码-->\r\n        ");
	 pagelist = Utils.OutPageList(pagesize, page, totalcount, linkurl("gsearch", "?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby="+strBy+"&page=__id__"+get_article_spec_param(dicSpecIds,"")), 8);

	foreach(DataRow dr in goodsList.Rows)
	{

	templateBuilder.Append("\r\n            <li>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">\r\n                    <div class=\"img-box\">\r\n                        ");
	if (Utils.ObjectToStr(dr["is_red"])=="1")
	{

	templateBuilder.Append("\r\n                            <div class=\"abs-txt\">推荐</div>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                        <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" />\r\n                    </div>\r\n                    <div class=\"info\">\r\n                        <h3>" + Utils.ObjectToStr(dr["title"]) + "</h3>\r\n                        <p class=\"price\"><b>¥" + Utils.ObjectToStr(dr["sell_price"]) + "</b>元</p>\r\n                        <p>\r\n                            <strong>库存 " + Utils.ObjectToStr(dr["stock_quantity"]) + "</strong>\r\n                            <span>市场价：<s>" + Utils.ObjectToStr(dr["market_price"]) + "</s></span>\r\n                        </p>\r\n                    </div>\r\n                </a>\r\n            </li>\r\n        ");
	}	//end for if

	if (goodsList.Rows.Count==0)
	{

	templateBuilder.Append("\r\n            <div class=\"nodata\">暂时无法找到您想要的商品！</div>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n        \r\n        <!--页码列表-->\r\n        <div class=\"page-box\" style=\"margin:15px 0 0;\">\r\n            <div class=\"digg\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("</div>\r\n        </div>\r\n        <!--/页码列表-->\r\n    </div>\r\n\r\n</div>\r\n<!--/商品列表-->\r\n\r\n<!--页面底部-->\r\n");

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
