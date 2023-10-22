<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="filter.aspx.cs" Inherits="final.filter" %>

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
             <div>
                <table class="table table-bordered table-hover definewidth m10">
                <tr align="center"  font-size:70%><td class="tableleft">
                    路段编号：</td><td >
                        <asp:TextBox ID="rn" runat="server"></asp:TextBox>
                    </td>
                    <td >
                        <asp:Button ID="Button1" runat="server" Text="筛 选" OnClick="Button1_Click" style="height: 32px" />
                    </td>
                </tr>
                <tr align="center"  font-size:70%><td class="tableleft">
                    路段类型：</td><td >
                        <asp:TextBox ID="rt" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="Button3" runat="server" Text="显 示" OnClick="Button3_Click" />
                    </td>
                </tr>
                <tr align="center"  font-size:70%><td class="tableleft">
                        方 向 ：</td><td >
                        <asp:TextBox ID="drt" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr align="center"  font-size:70%><td class="tableleft">
                        标志类型：</td><td >
                        <asp:TextBox ID="st" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr align="center"  font-size:70%><td >
                        &nbsp;</td><td >
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                </table>
        </div>
        </div>
        <asp:GridView ID="GridView1" runat="server" Font-Size="X-Small" HeaderStyle-BackColor="#f2f2f2" RowStyle-HorizontalAlign="Center">

               <Columns >
                <asp:BoundField Datafield="id" HeaderText="编码"/>
                <asp:BoundField Datafield="RouteNum" HeaderText="路线编号"/>
                <asp:BoundField Datafield="Direction" HeaderText="方向"/>
                <asp:BoundField Datafield="RouteType" HeaderText="路段类型"/>
                <asp:BoundField Datafield="PositionNum" HeaderText="位置桩号"/>
                <asp:BoundField Datafield="Type" HeaderText="标志类型"/>
                <asp:BoundField Datafield="IncreaseDemand" HeaderText="提升需求"/>
                <asp:BoundField Datafield="Optimazation" HeaderText="优化方案"/>
                <asp:BoundField Datafield="Latitude" HeaderText="纬度"/>
                <asp:BoundField Datafield="Longitude" HeaderText="经度"/>
            </Columns>
        </asp:GridView>

    </form>
    </body>
</html>
