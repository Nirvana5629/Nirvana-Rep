<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="encoding.aspx.cs" Inherits="final.encoding" %>

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

<body >
    <form runat="server"  method="post" class="definewidth m20">
        <div>
    <table class="table table-bordered table-hover definewidth m10">
                <tr>
                    <td class="tableleft">路线编号：</td><td class="auto-style1">
                    <asp:TextBox ID="routeNum" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tableleft">位置桩号：</td><td class="auto-style1">
                    <asp:TextBox ID="positionNum" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tableleft">方向：</td><td class="auto-style1">
                    <asp:DropDownList ID="direction_d" runat="server">
                        <asp:ListItem Value="1">上行</asp:ListItem>
                        <asp:ListItem Value="2">下行</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="tableleft">路段类型：</td><td class="auto-style1">
                    <asp:DropDownList ID="routeType_d" runat="server">
                        <asp:ListItem Value="11">一般互通立交路段</asp:ListItem>
                        <asp:ListItem Value="21">枢纽互通立交路段</asp:ListItem>
                        <asp:ListItem Value="31">服务区或停车区路段</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="tableleft">支撑物类型：</td><td class="auto-style1">
                    <asp:DropDownList ID="zhicheng_d" runat="server">
                        <asp:ListItem Value="1">单柱式</asp:ListItem>
                        <asp:ListItem Value="2">多柱式</asp:ListItem>
                        <asp:ListItem Value="3">单悬臂式</asp:ListItem>
                        <asp:ListItem Value="4">双悬臂式</asp:ListItem>
                        <asp:ListItem Value="5">门架式</asp:ListItem>
                        <asp:ListItem Value="6">附在车道上方</asp:ListItem>
                        <asp:ListItem Value="7">附着在路边的结构上</asp:ListItem>
                        <asp:ListItem Value="9">其他</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="tableleft">标志类型：</td><td class="auto-style1">
                    <asp:DropDownList ID="type_d" runat="server">
                        <asp:ListItem Value="11">警告标志</asp:ListItem>
                        <asp:ListItem Value="12">禁令标志</asp:ListItem>
                        <asp:ListItem Value="13">指示标志</asp:ListItem>
                        <asp:ListItem Value="14">指路标志</asp:ListItem>
                        <asp:ListItem Value="15">旅游区标志</asp:ListItem>
                        <asp:ListItem Value="16">告示标志</asp:ListItem>
                        <asp:ListItem Value="99">其他标志</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="tableleft">标志形状：</td><td class="auto-style1">
                    <asp:DropDownList ID="shape" runat="server">
                        <asp:ListItem Value="1">正等边三角形</asp:ListItem>
                        <asp:ListItem Value="2">倒等边三角形</asp:ListItem>
                        <asp:ListItem Value="3">圆形</asp:ListItem>
                        <asp:ListItem Value="4">八角形</asp:ListItem>
                        <asp:ListItem Value="5">叉形</asp:ListItem>
                        <asp:ListItem Value="6">矩形</asp:ListItem>
                        <asp:ListItem Value="7">锥形</asp:ListItem>
                        <asp:ListItem Value="8">六边形</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="tableleft">反光膜类型：</td><td class="auto-style1">
                    <asp:DropDownList ID="fanguang" runat="server">
                        <asp:ListItem Value="1">一级反光膜</asp:ListItem>
                        <asp:ListItem Value="2">二级反光膜</asp:ListItem>
                        <asp:ListItem Value="3">三级反光膜</asp:ListItem>
                        <asp:ListItem Value="4">四级反光膜</asp:ListItem>
                        <asp:ListItem Value="5">五级反光膜</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="tableleft">使用寿命：</td><td class="auto-style1">
                    <asp:TextBox ID="service" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tableleft">安装年份：</td><td class="auto-style1">
                    <asp:TextBox ID="year" runat="server" Width="300px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="编 码" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td >&nbsp;</td><td class="auto-style1">
                    &nbsp;</td>
                </tr>
                <tr>
                    <td class="tableleft">编码：</td><td class="auto-style1">
                    <asp:TextBox ID="id" runat="server" Width="300px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
