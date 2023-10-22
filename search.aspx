<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="final.searchh" %>

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
                    <td class="tableleft"align="center">请输入交通标志编号：</td><td>
                    <asp:TextBox ID="idd" runat="server" Width="300px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="查 找" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td><td>
                    &nbsp;</td>
                </tr>
                <tr>
                    <td  class="tableleft" align="center">路线编号：</td><td>
                    <asp:TextBox ID="routeNum" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td  class="tableleft" align="center">方向：</td><td>
                    <asp:TextBox ID="direction" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td  class="tableleft" align="center">路段类型：</td><td>
                    <asp:TextBox ID="routeType" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td  class="tableleft" align="center">位置桩号：</td><td>
                    <asp:TextBox ID="positionNum" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td  class="tableleft" align="center">标志类型</td><td>
                    <asp:TextBox ID="type" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td  class="tableleft" align="center">提升需求：</td><td>
                    <asp:TextBox ID="increaseDemand" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td  class="tableleft" align="center">优化方案：</td><td>
                    <asp:TextBox ID="optimazation" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td  class="tableleft" align="center">纬度：</td><td>
                    <asp:TextBox ID="latitude" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td  class="tableleft" align="center">经度：</td><td>
                    <asp:TextBox ID="longitude" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                    </td><td>
                        <asp:Button ID="Button2" runat="server" Text="删 除" OnClick="Button2_Click" />
                         
                        &nbsp;&nbsp;&nbsp;
                         
                        <asp:Button ID="Button3" runat="server" Text="修 改" OnClick="Button3_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
