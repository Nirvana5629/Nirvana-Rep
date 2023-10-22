<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index1.aspx.cs" Inherits="final.index1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="../Css/style.css" />
    <script type="text/javascript" src="../Js/jquery.js"></script>
    <script type="text/javascript" src="../Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="../Js/bootstrap.js"></script>
    <script type="text/javascript" src="../Js/ckform.js"></script>
    <script type="text/javascript" src="../Js/common.js"></script>



    <style type="text/css">
        body {
            padding-bottom: 40px;
        }

        .sidebar-nav {
            padding: 9px 0;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }
    </style>
</head>
<body>

    <table class="table table-bordered table-hover definewidth m10">
        <thead>
            <tr align="center">
                <th align="center">编码</th>
                <th>路线编号</th>
                <th>方向</th>
                <th>路段类型</th>
                <th>位置桩号</th>
                <th>标志类型</th>
<%--                <th>提升需求</th>
                <th>优化方案</th>--%>
                <th>纬度</th>
                <th>经度</th>
                <th>操作</th>
            </tr>
        </thead>
        <tr>
            <%string id = Request.QueryString["id"];
                   if (id != null)
                   {
                       YF.BLL.Map.del(id);
                       YF.JsHelper.AlertAndRedirect("删除成功！", "index1.aspx");

                   }List<YF.Model.Map> list = YF.BLL.Map.List(); %>
            <%for (int i = 0; i < list.Count; i++)
                { %>
            <td align="center"><%=list[i].Id %></td>
            <td align="center"><%=list[i].RouteNum %></td>
            <td align="center"><%=list[i].Direction %></td>
            <td align="center"><%=list[i].RouteType %></td>
            <td align="center"><%=list[i].PositionNum %></td>
            <td align="center"><%=list[i].Type %></td>
<%--            <td align="center"><%=list[i].IncreaseDemand %></td>
            <td align="center"><%=list[i].Optimazation %></td>--%>
            <td align="center"><%=list[i].Latitude %></td>
            <td align="center"><%=list[i].Longitude %></td>
            <td>  <a class="a"href="index1.aspx?id=<%=list[i].Id%>">删除</a> | <a class="a"href="sign_edit.aspx?id=<%=list[i].Id%>">编辑</a> </td>

            
        </tr>
        <%} %>
    </table>
</body>
</html>
<script>
    $(function () {
        
        $('#search').click(function () {

            window.location.href = "search.aspx";
        });

		$('#addnew').click(function(){

			window.location.href="add.aspx";
		 });


    });
</script>