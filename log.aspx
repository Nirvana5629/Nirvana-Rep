<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="log.aspx.cs" Inherits="final.log" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>高速公路交通标志管理系统</title>
<link href="Css/style1.css" rel="stylesheet" type="text/css" />

<script language="JavaScript" src="Js/jquery.js"></script>
<%--<script src="js/cloud.js" type="text/javascript"></script>--%>

<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
});  
</script> 
    
</head>
   <body background="images/bg.png" style=" background-repeat:no-repeat ;background-size:cover;background-attachment: fixed;">

<%--           <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  --%>


<div class="logintop">    
    <span>欢迎登录高速公路交通标志管理界面平台</span>    
    <ul>
    <li><a href="#">回首页</a></li>
    <li><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    </ul>    
    </div>
    
    <div class="loginbody">
    
    <span class="systemlogo"></span> 
       
    <div class="loginbox">
    
        <form runat="server" class="form-signin" method="post">
          <table >

              </table>

    <ul>
    <li><input name="" type="text" class="loginuser" value="admin" id="id" onclick="JavaScript:this.value=''"/></li>
    <li><input name="" type="text" class="loginpwd" value="密码" id="password" onclick="JavaScript:this.value=''"/></li>
    <li><input name="" type="button" class="loginbtn" value="登录"  id="log"  /><label><input name="" type="checkbox" value="" checked="checked" />记住密码</label><label><a href="#">忘记密码？</a></label></li>
    
    </ul>
            </form>

    </div>  
    </div>    
</body>
</html>

<script>
    $(function () {
        $('#log').click(function () {
            var a1 = $("#id").val();
            var a2 = $("#password").val();
   
            if (a1 == "5629" && (a2 == "0719")) {
                window.location.href = "index.html";
            }
            else {
                alert("登陆失败！");
            }
                

        });


    });
</script>