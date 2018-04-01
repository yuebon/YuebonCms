<%@ Page Language="C#" AutoEventWireup="true" Inherits="YueBonSoft.Web.UI.Page.article_list" ValidateRequest="false" %>
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

	base.channel = "lineselect";
	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const int pagesize = 20;

	templateBuilder.Append("<!DOCTYPE html>\r\n<!--HTML5 doctype-->\r\n<html>\r\n<head>\r\n<meta charset=\"utf-8\">\r\n<meta name=\"viewport\" content=\"width=device-width,initial-scale=1,user-scalable=0\">\r\n<title>物流专线查询-");
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
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/PCASClass.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body id=\"news\" ontouchstart>\r\n<div class=\"page\">\r\n    <!--页面头部-->\r\n    <div class=\"header\">\r\n        <a class=\"back\" href=\"javascript:history.back();\">\r\n            <i class=\"iconfont icon-arrow-left\"></i>\r\n        </a>\r\n        <h3>专线查询</h3>\r\n        <div class=\"right\"> \r\n            <a class=\"weui-cell_access weui-cell_link\" hrhref=\"javascript:;\" onclick=\"showDialogBox('#category-box');\">\r\n                <i class=\"iconfont icon-search\"></i>\r\n            </a>\r\n        </div>\r\n    </div>\r\n    <!--/页面头部-->\r\n  \r\n    <!--页面内容-->\r\n    <div class=\"page__bd\">\r\n        <!--资讯列表-->\r\n        <div class=\"weui-panel weui-panel_access\" style=\"margin-top:10px;\">\r\n            <div class=\"weui-panel__hd\">\r\n                <a href=\"javascript:void(0);\" style=\"width:45%;float:left;position:relative;\" id=\"starAddress\">始发地选择</a>\r\n                <a href=\"javascript:void(0);\" style=\"width:45%;float:right;position:relative;\" id=\"endAddress\">目的地选择</a>\r\n            </div>\r\n            <div class=\"weui-panel__hd\">");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</div>\r\n            <div class=\"weui-panel__bd\">\r\n                <div class=\"text-list\">\r\n                    <ul>\r\n                        <!--取得一个分页DataTable-->\r\n                        ");
	DataTable newsList = get_article_list(channel, category_id, pagesize, page, "status=0", out totalcount, out pagelist, "lineselect", category_id, "__id__");

	foreach(DataRow dr in newsList.Rows)
	{

	string category_title = get_category_title(Utils.StrToInt(Utils.ObjectToStr(dr["category_id"]), 0),"专线");

	templateBuilder.Append("\r\n                        <li>\r\n                            <a href=\"");
	templateBuilder.Append(linkurl("lineselect_show",Utils.ObjectToStr(dr["id"]),"1"));

	templateBuilder.Append("\">\r\n                                ");
	if (Utils.ObjectToStr(dr["img_url"])!="")
	{

	templateBuilder.Append("\r\n                                <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" width=\"120\" height=\"120\" border=\"0\" />\r\n                                ");
	}	//end for if

	templateBuilder.Append("\r\n                                <h2>" + Utils.ObjectToStr(dr["companyname"]) + "<font color=\"green\">(点击查看详情)</font></h2>\r\n                                <p class=\"intro\">" + Utils.ObjectToStr(dr["mainexpressline"]) + "</p>\r\n\r\n                            </a>\r\n                            <p class=\"intro\">" + Utils.ObjectToStr(dr["lineselectcustomertitle1"]) + "：<a href=\"tel:" + Utils.ObjectToStr(dr["lineselectcustomervalue1"]) + "\">" + Utils.ObjectToStr(dr["lineselectcustomervalue1"]) + "</a></p>\r\n                            <p class=\"intro\">" + Utils.ObjectToStr(dr["lineselectcustomertitle2"]) + "：<a href=\"tel:{dr[lineselectcustomervalue2]\">" + Utils.ObjectToStr(dr["lineselectcustomervalue2"]) + "</a></p>\r\n                            <p class=\"intro\">" + Utils.ObjectToStr(dr["lineselectcustomertitle3"]) + "：" + Utils.ObjectToStr(dr["lineselectcustomervalue3"]) + "</p>\r\n                            <p class=\"intro\">\r\n                                <span><i class=\"iconfont icon-view\"></i>浏览" + Utils.ObjectToStr(dr["click"]) + "次</span>\r\n                                <span><i class=\"iconfontx icon-redo\"></i>转发" + Utils.ObjectToStr(dr["ForwardNum"]) + "次</span>\r\n                                <span><i class=\"iconfontx icon-pengyouquan\"></i>分享" + Utils.ObjectToStr(dr["sharenum"]) + "次</span>\r\n                            </p>\r\n                        </li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!--/资讯列表-->\r\n        \r\n        <!--分页页码-->\r\n        <div class=\"page-list\">\r\n            ");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("\r\n        </div>\r\n        <!--/分页页码-->\r\n    \r\n        <!--版权信息-->\r\n        ");

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


	templateBuilder.Append("\r\n        <!--/底部导航-->\r\n    </div>\r\n    <!--/页面内容-->\r\n</div>\r\n\r\n<!--类别容器-->\r\n<div id=\"category-box\" class=\"dialog-wrap\">\r\n    <div class=\"dialog-box\">\r\n        <div class=\"header\">\r\n            <a class=\"back\" href=\"javascript:;\" onclick=\"closeDialogBox('#category-box');\">\r\n                <i class=\"iconfont icon-arrow-left\"></i>\r\n            </a>\r\n            <h3>专线查询</h3>\r\n        </div>\r\n        <ul class=\"navbar\">\r\n            <li>\r\n                <div>\r\n                    <select class=\"weui-select\" name=\"select2\">\r\n                        <option value=\"\">目的地区域选择</option>\r\n                        <option value=\"1\">上海</option>\r\n                        <option value=\"2\">昆山</option>\r\n                    </select>\r\n                    <select class=\"weui-select\" name=\"select2\">\r\n                        <option value=\"0\">目的地区域选择</option>\r\n                        <option value=\"1\">上海</option>\r\n                        <option value=\"2\">昆山</option>\r\n                    </select>\r\n                </div>\r\n                <div class=\"weui-search-bar\" id=\"searchBar\">\r\n                    <form class=\"weui-search-bar__form\">\r\n                        <div class=\"weui-search-bar__box\">\r\n                            <i class=\"weui-icon-search\"></i>\r\n                            <input type=\"search\" class=\"weui-search-bar__input\" id=\"searchInput\" placeholder=\"请输入公司名称、到达城市\" required />\r\n                            <a href=\"javascript:\" class=\"weui-icon-clear\" id=\"searchClear\"></a>\r\n                        </div>\r\n                        <label class=\"weui-search-bar__label\" id=\"searchText\">\r\n                            <i class=\"weui-icon-search\"></i>\r\n                            <span>搜索</span>\r\n                        </label>\r\n                    </form>\r\n                    <a href=\"javascript:\" class=\"weui-search-bar__cancel-btn\" id=\"searchCancel\">取消</a>\r\n                </div>\r\n            </li>\r\n            <li>\r\n                <h3><a href=\"");
	templateBuilder.Append(linkurl("lineselect"));

	templateBuilder.Append("\">全部</a></h3> \r\n            </li>\r\n            ");
	DataTable categoryList1 = get_category_child_list(channel, 0);

	foreach(DataRow cdr1 in categoryList1.Rows)
	{

	templateBuilder.Append("\r\n            <li>\r\n                <h3><a href=\"");
	templateBuilder.Append(linkurl("lineselect",Utils.ObjectToStr(cdr1["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr1["title"]) + "</a></h3> \r\n                <p>\r\n                ");
	DataTable categoryList2 = get_category_child_list(channel, Utils.StrToInt(Utils.ObjectToStr(cdr1["id"]), 0));

	foreach(DataRow cdr2 in categoryList2.Rows)
	{

	templateBuilder.Append("\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("lineselect",Utils.ObjectToStr(cdr2["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr2["title"]) + "</a>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n                </p>\r\n            </li>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n    </div>\r\n   \r\n</div>\r\n     <div>\r\n        <select id=\"txtProvince\" name=\"txtProvince\" class=\"select\"></select>\r\n        <select id=\"txtCity\" name=\"txtCity\" class=\"select\"></select>\r\n        <select id=\"txtArea\" name=\"txtArea\" class=\"select\"></select>\r\n    </div>\r\n    <script type=\"text/javascript\">\r\n        $(function () {\r\n            $('#starAddress').on('focus', function () {\r\n                weui.picker([{\r\n                    label: '上海',\r\n                    value: '上海'\r\n                },{\r\n                    label: '昆山',\r\n                    value: '昆山'\r\n                }], {\r\n                        onChange: function (result) {\r\n                            console.log(result);\r\n                        },\r\n                        onConfirm: function (result) {\r\n                            console.log(result);\r\n                        }\r\n                    });\r\n            });\r\n            //初始化地区\r\n            var mypcas = new PCAS(\"txtProvince,所属省份\", \"txtCity,所属城市\", \"txtArea,所属地区\");\r\n            \r\n            $('#endAddress').on('focus', function () {\r\n                weui.picker([{\r\n                    label: '上海',\r\n                    value: '上海'\r\n                }, {\r\n                    label: '昆山',\r\n                    value: '昆山'\r\n                }], {\r\n                        onChange: function (result) {\r\n                            console.log(result);\r\n                        },\r\n                        onConfirm: function (result) {\r\n                            console.log(result);\r\n                        }\r\n                    });\r\n            });\r\n        var $searchBar = $('#searchBar'),\r\n            $searchText = $('#searchText'),\r\n            $searchInput = $('#searchInput'),\r\n            $searchClear = $('#searchClear'),\r\n            $searchCancel = $('#searchCancel');\r\n\r\n        \r\n        function cancelSearch(){\r\n            //hideSearchResult();\r\n            $searchBar.removeClass('weui-search-bar_focusing');\r\n            $searchText.show();\r\n        }\r\n\r\n        $searchText.on('click', function(){\r\n            $searchBar.addClass('weui-search-bar_focusing');\r\n            $searchInput.focus();\r\n        });\r\n        $searchInput\r\n            .on('blur', function () {\r\n                if(!this.value.length) cancelSearch();\r\n            })\r\n            .on('input', function(){\r\n                if(this.value.length) {\r\n                    //$searchResult.show();\r\n                } else {\r\n                   // $searchResult.hide();\r\n                }\r\n            })\r\n        ;\r\n        $searchClear.on('click', function(){\r\n            //hideSearchResult();\r\n            $searchInput.focus();\r\n        });\r\n        $searchCancel.on('click', function(){\r\n            cancelSearch();\r\n            $searchInput.blur();\r\n        });\r\n    });\r\n</");
	templateBuilder.Append("script>\r\n\r\n<!--类别容器-->\r\n\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
