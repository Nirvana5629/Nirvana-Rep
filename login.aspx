<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="final.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>高速公路交通标志管理系统</title>
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
            padding-top: 180px;
            padding-bottom: 40px;
            background-color: #f5f5f5;
        }

        .form-signin {
            max-width: 300px;
            padding: 19px 29px 29px;
            margin: 0 auto 20px;
            background-color: #fff;
            border: 1px solid #e5e5e5;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
            -moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
            box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
        }

        .form-signin .form-signin-heading,
        .form-signin .checkbox {
            margin-bottom: 10px;
        }

        .form-signin input[type="text"],
        .form-signin input[type="password"] {
            font-size: 16px;
            height: auto;
            margin-bottom: 15px;
            padding: 7px 9px;
        }

    </style>  
</head>

<body background="IMG_6467(20230523-195943).JPG" style=" background-repeat:no-repeat ;background-size:cover;background-attachment: fixed;">
    
   <div class="container">

    <form runat="server" class="form-signin" method="post">
       
        <h2 class="form-signin-heading">登录系统</h2>
          <table >
                <tr>
                    <td class="input-block-level">账号:<td class="auto-style1">
                    <asp:TextBox ID="id" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="input-block-level">密码：</td><td class="auto-style1">
                    <asp:TextBox ID="password" runat="server" ></asp:TextBox>
                    </td>
                </tr>
            <tr>
                    <td >&nbsp;</td><td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" Text="登 录" OnClick="Button1_Click1" />
                    </td>
                </tr>
        </table>
          </form>
         </div>
      

               
  
    
    </body>
</html>
