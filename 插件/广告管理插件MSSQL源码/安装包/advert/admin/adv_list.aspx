<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adv_list.aspx.cs" Inherits="YueBonSoft.Web.Plugin.Advert.admin.adv_list" %>
<%@ Import namespace="YueBonSoft.Common" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,initial-scale=1.0,user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<title>广告位管理</title>
<link rel="stylesheet" type="text/css" href="../../../scripts/artdialog/ui-dialog.css" />
<link rel="stylesheet" type="text/css" href="../../../css/pagination.css" />
<link rel="stylesheet" type="text/css" href="../../../<%=sysConfig.webmanagepath %>/skin/icon/iconfont.css" />
<link rel="stylesheet" type="text/css" href="../../../<%=sysConfig.webmanagepath %>/skin/default/style.css" />
<script type="text/javascript" charset="utf-8" src="../../../scripts/jquery/jquery-1.11.2.min.js"></script>
<script type="text/javascript" charset="utf-8" src="../../../scripts/artdialog/dialog-plus-min.js"></script>
<script type="text/javascript" charset="utf-8" src="../../../<%=sysConfig.webmanagepath %>/js/laymain.js"></script>
<script type="text/javascript" charset="utf-8" src="../../../<%=sysConfig.webmanagepath %>/js/common.js"></script>
</head>

<body class="mainbody">
<form id="form1" runat="server">
<!--导航栏-->
<div class="location">
  <a href="javascript:history.back(-1);" class="back"><i class="iconfont icon-up"></i><span>返回上一页</span></a>
  <a href="../../../<%=sysConfig.webmanagepath %>/center.aspx" class="home"><i class="iconfont icon-home"></i><span>首页</span></a>
  <i class="arrow iconfont icon-arrow-right"></i>
  <span>插件管理</span>
  <i class="arrow iconfont icon-arrow-right"></i>
  <span>广告管理</span>
  <i class="arrow iconfont icon-arrow-right"></i>
  <span>广告位列表</span>
</div>
<!--/导航栏-->

<!--工具栏-->
<div id="floatHead" class="toolbar-wrap">
  <div class="toolbar">
    <div class="box-wrap">
      <a class="menu-btn"><i class="iconfont icon-more"></i></a>
      <div class="l-list">
        <ul class="icon-list">
          <li><a href="adv_edit.aspx?action=<%=DTEnums.ActionEnum.Add %>"><i class="iconfont icon-close"></i><span>新增</span></a></li>
          <li><a href="javascript:;" onclick="checkAll(this);"><i class="iconfont icon-check"></i><span>全选</span></a></li>
          <li><asp:LinkButton ID="lbtnDelete" runat="server" OnClientClick="return ExePostBack('lbtnDelete');" onclick="lbtnDelete_Click"><i class="iconfont icon-delete"></i><span>删除</span></asp:LinkButton></li>
        </ul>
        <div class="menu-list">
          <div class="rule-single-select">
            <asp:DropDownList ID="ddlProperty" runat="server" CssClass="select2" AutoPostBack="True" onselectedindexchanged="ddlProperty_SelectedIndexChanged">
                <asp:ListItem Value="">所有类别</asp:ListItem>
                <asp:ListItem Value="1">文字</asp:ListItem>
                <asp:ListItem Value="2">图片</asp:ListItem>
                <asp:ListItem Value="3">幻灯片</asp:ListItem>
                <asp:ListItem Value="4">动画</asp:ListItem>
                <asp:ListItem Value="5">视频</asp:ListItem>
                <asp:ListItem Value="6">代码</asp:ListItem>
                <asp:ListItem Value="7">新幻灯片</asp:ListItem>
            </asp:DropDownList>
          </div>
        </div>
      </div>
      <div class="r-list">
        <asp:TextBox ID="txtKeywords" runat="server" CssClass="keyword" />
        <asp:LinkButton ID="lbtnSearch" runat="server" CssClass="btn-search" onclick="lbtnSearch_Click"><i class="iconfont icon-search"></i></asp:LinkButton>
      </div>
    </div>
  </div>
</div>
<!--/工具栏-->

<!--列表-->
<div class="table-container">
<asp:Repeater ID="rptList" runat="server">
<HeaderTemplate>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="ltable">
  <tr>
    <th width="6%">选择</th>
    <th align="left">名称</th>
    <th width="12%" align="left">所属站点</th>
    <th width="6%" align="left">类型</th>
    <th width="8%">数量</th>
    <th width="10%" align="left">价格</th>
    <th width="10%" align="left">尺寸</th>
    <th width="10%" align="left">链接目标</th>
    <th width="15%" align="left">添加时间</th>
    <th width="12%">操作</th>
  </tr>
</HeaderTemplate>
<ItemTemplate>
  <tr>
    <td align="center">
      <asp:CheckBox ID="chkId" CssClass="checkall" runat="server" />
      <asp:HiddenField ID="hidId" Value='<%#Eval("id")%>' runat="server" />
    </td>
    <td><a href="adv_edit.aspx?action=<%=DTEnums.ActionEnum.Edit %>&id=<%#Eval("id")%>"><%#Eval("title")%></a></td>
    <td><%#new YueBonSoft.BLL.sites().GetTitle(int.Parse(Eval("site_id").ToString()))%></td>
    <td><%#GetTypeName(Eval("type").ToString())%></td>
    <td align="center"><%#Eval("view_num")%></td>
    <td><%#Eval("price")%>元/月</td>
    <td><%#Eval("view_width")%>×<%#Eval("view_height")%></td>
    <td><%#Eval("target")%></td>
    <td><%#string.Format("{0:g}",Eval("add_time"))%></td>
    <td align="center">
      <a href="bar_list.aspx?aid=<%#Eval("id")%>">内容</a>&nbsp;
      <a href="adv_view.aspx?id=<%#Eval("id")%>">调用</a>&nbsp;
      <a href="adv_edit.aspx?action=<%=DTEnums.ActionEnum.Edit %>&id=<%#Eval("id")%>">编辑</a>
    </td>
  </tr>
</ItemTemplate>
<FooterTemplate>
  <%#rptList.Items.Count == 0 ? "<tr><td align=\"center\" colspan=\"10\">暂无记录</td></tr>" : ""%>
</table>
</FooterTemplate>
</asp:Repeater>
</div>
<!--/列表-->

<!--内容底部-->
<div class="line20"></div>
<div class="pagelist">
  <div class="l-btns">
    <span>显示</span><asp:TextBox ID="txtPageNum" runat="server" CssClass="pagenum" onkeydown="return checkNumber(event);"
                OnTextChanged="txtPageNum_TextChanged" AutoPostBack="True"></asp:TextBox><span>条/页</span>
  </div>
  <div id="PageContent" runat="server" class="default"></div>
</div>
<!--/内容底部-->

</form>
</body>
</html>
