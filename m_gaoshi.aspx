<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="m_gaoshi.aspx.cs" Inherits="final.m_gaoshi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript" src="https://api.map.baidu.com/api?v=1.0&&type=webgl&ak=3dy0BL7Pv40nj1R17PyqgaeKlAg1dj04"></script>
    <style type="text/css">
        html {
            height: 100%
        }

        body {
            height: 100%;
            margin: 0px;
            padding: 0px
        }

        #container {
            height: 100%
        }

        .a:link{color:#000000;text-decoration:none}
        .a:visited{color:#000000;text-decoration:none}
        .a:hover{color:#000000;font-size:110%;text-decoration:none}

        .auto-style2 {
            width: 118px;
        }
        .menu {
            height: 30px;
            width: 1172px;
            background-color:azure
        }
        .auto-style4 {
            width: 124px;
        }
        .title {
            height: 30px;
            width: 1172px;
            background-color:lightblue;
            font-size:110%  
        }
        .auto-style5 {
            width: 181px;
        }
        </style>
</head>
<body>
    
    <div id="container">
       <script>
           var map = new BMapGL.Map("container");
           var point = new BMapGL.Point(108.55720552194575, 34.2882371917);
           map.centerAndZoom(point, 15);
           map.enableScrollWheelZoom(true);
           map.addControl(new BMapGL.ScaleControl());
           map.addControl(new BMapGL.ZoomControl());
           var 警告标志 = new BMapGL.Icon("images/三角.png", new BMapGL.Size(25, 20));
           var 禁令标志 = new BMapGL.Icon("images/圆.png", new BMapGL.Size(20, 20));
           var 指示标志 = new BMapGL.Icon("images/蓝.png", new BMapGL.Size(25, 12.5));
           var 指路标志 = new BMapGL.Icon("images/绿.png", new BMapGL.Size(25, 12.5));
           var 旅游区标志 = new BMapGL.Icon("images/棕.png", new BMapGL.Size(25, 12.5));
           var 告示标志 = new BMapGL.Icon("images/白.png", new BMapGL.Size(25, 12.5));
           var 非公路交通标志 = new BMapGL.Icon("images/橙.png", new BMapGL.Size(25, 12.5));

             <% 
            List<YF.Model.Map> list = YF.BLL.Map.List();
             %>
            <%for (int i = 0; i<list.Count ;i++)
                {%>
           var p = new BMapGL.Point(<%=list[i].Longitude %>+0.011,<%=list[i].Latitude %>+0.004);

           if (<%=list[i].Type%> == 告示标志) {
               var marker = new BMapGL.Marker(p, { icon: 告示标志 })
               map.addOverlay(marker);
           }
           else{
                var marker = new BMapGL.Marker(p, { icon: 非公路交通标志})
               // map.addOverlay(marker);
           }

           marker.addEventListener('click', function () {
               var opts = {
                   width: 280,
                   height: 230,
                   title: "标志详细信息："
               }
               var ap = new BMapGL.Point(<%=list[i].Longitude %>+0.011,<%=list[i].Latitude %>+0.004);
               var content = '<div>编  码：' + '<%=list[i].Id%>' + '</div>' +
                   '<div>路线编号：' + '<%=list[i].RouteNum%>' + '</div>' +
                   '<div>方  向  ：' + '<%=list[i].Direction%>' + '</div>' +
                   '<div>路段类型：' + '<%=list[i].RouteType%>' + '</div>' +
                   '<div>位置桩号：' + '<%=list[i].PositionNum%>' + '</div>' +
                   '<div>标志类型：' + '<%=list[i].Type%>' + '</div>' +
                   '<div>坐  标  ：' + <%=list[i].Longitude%> + ' , ' +<%=list[i].Latitude%> + '</div>' +
                   '<div>提升需求：' + '<%=list[i].IncreaseDemand%>' + '</div>' +
                   '<div>优化方案：' + '<%=list[i].Optimazation%>' + '</div>';
               var infoWindow = new BMapGL.InfoWindow(content, opts);
               map.openInfoWindow(infoWindow, ap);
           });
            <%}%>       
       </script>
    </div>
</body>
</html>
