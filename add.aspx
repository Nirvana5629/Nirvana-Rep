<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="final.add" %>

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
 <form runat="server"  method="post" class="definewidth m20">
        <div>
    <table class="table table-bordered table-hover definewidth m10">
                <tr>
                    <td class="tableleft">编码:</td><td class="auto-style1">
                    <asp:TextBox ID="id" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tableleft">路线编号：</td><td class="auto-style1">
                    <asp:TextBox ID="routeNum" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tableleft">方向：</td><td class="auto-style1">
                    <asp:TextBox ID="direction" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tableleft">路段类型：</td><td class="auto-style1">
                    <asp:TextBox ID="routeType" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tableleft">位置桩号：</td><td class="auto-style1">
                    <asp:TextBox ID="positionNum" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tableleft">标志类型：</td><td class="auto-style1">
                    <asp:TextBox ID="type" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tableleft">提升需求：</td><td class="auto-style1">
                    <asp:TextBox ID="increaseDemand" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tableleft">优化方案：</td><td class="auto-style1">
                    <asp:TextBox ID="optimazation" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tableleft">纬度：</td><td class="auto-style1">
                    <asp:TextBox ID="latitude" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tableleft">经度：</td><td class="auto-style1">
                    <asp:TextBox ID="longitude" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td><td >
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添 加" />
                    &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                </table>
        </div>
    </form>
    
</html>
