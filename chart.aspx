<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chart.aspx.cs" Inherits="final.chart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="echarts.js"></script>
    <style>
        .big_box {
            width: 1100px;
            height: 500px;
        }

        .left_box {
            width: 500px;
            height: 500px;
            float: left
        }

        .right_box {
            width: 600px;
            height: 500px;
            float: right
        }
    </style>
</head>

<body>

    <div style="height: 30px">
        <script>


            var aa = [0, 0, 0, 0, 0, 0, 0];

            <%List<YF.Model.Map> list = YF.BLL.Map.filter("select * from map where type='禁令标志'");%>
            aa[0] = <%=list.Count()%>;
            <%List<YF.Model.Map> list1 = YF.BLL.Map.filter("select * from map where type='警告标志'");%>
            aa[1] = <%=list1.Count()%>;
            <%List<YF.Model.Map> list2 = YF.BLL.Map.filter("select * from map where type='指示标志'");%>
            aa[2] = <%=list2.Count()%>;
            <%List<YF.Model.Map> list3 = YF.BLL.Map.filter("select * from map where type='指路标志'");%>
            aa[3] = <%=list3.Count()%>;
            <%List<YF.Model.Map> list4 = YF.BLL.Map.filter("select * from map where type='告示标志'");%>
            aa[4] = <%=list4.Count()%>;
            <%List<YF.Model.Map> list5 = YF.BLL.Map.filter("select * from map where type='旅游区标志'");%>
            aa[5] = <%=list5.Count()%>;
            <%List<YF.Model.Map> list6 = YF.BLL.Map.filter("select * from map where type='非公路交通标志'");%>
            aa[6] = <%=list6.Count()%>;
            sum = aa[0] + aa[1] + aa[2] + aa[3] + aa[4] + aa[5] + aa[6];
        </script>

    </div>
    <div class="big_box">
        <div class="left_box" id="main">
            <script type="text/javascript">
                var myChart = echarts.init(document.getElementById('main'));

                var option = {
                    legend: {
                        data: ['数量(个)'],
                        x: 'right'
                    },
                    title: {
                        text: '各类交通标志数量',
                        x: 'center',
                        textStyle: {
                            fontSize: 20
                        }
                    },
                    tooltip: {},
                    xAxis: {
                        type: "category",
                        data: ['禁令标志', '警告标志', '指示标志', '指路标志', '告示标志', '旅游区标志', '非公路交通标志'],
                        axisLabel: {
                            interval: 0,
                            rotate: 30,
                            textStyle: {
                                fontSize: "15",
                            },
                        },

                    },
                    yAxis: {
                        axisLabel: {
                            textStyle: {
                                fontSize: "13",
                            },
                        },
                    },
                    series: [
                        {
                            name: '数量(个)',
                            type: 'bar',
                            label: {
                                show: true,
                                position: 'top',
                            },
                            barWidth: 40,
                            barGap: 1,
                            data: aa
                            //data: [41, 19, 33, 225, 42, 15, 41]
                        },
                    ]
                };
                myChart.setOption(option);
            </script>
        </div>

        <div class="right_box" id="right">
            <script type="text/javascript">


                // 基于准备好的dom，初始化echarts实例
                var myChart = echarts.init(document.getElementById('right'));
                var pieData = [
                    {
                        name: '禁令标志',
                        value: aa[0]
                    },
                    {
                        name: '警告标志',
                        value: aa[1]
                    },
                    {
                        name: '指示标志',
                        value: aa[2]
                    },
                    {
                        name: '指路标志',
                        value: aa[3]
                    },
                    {
                        name: '告示标志',
                        value: aa[4]
                    },
                    {
                        name: '旅游区标志',
                        value: aa[5]
                    },
                    {
                        name: '非公路交通标志',
                        value: aa[6]
                    },
                ]
                var option = {
                    title: {
                        text: '各类交通标志占比',
                        x: 'center',
                        textStyle: {
                            fontSize: 20
                        }
                    },
                    graphic: {
                        type: 'text',
                        left: 'center',
                        top: 'center',
                        style: {
                            text: '标志总数：'+'\n\n'+sum+'个',
                            textAlign: 'center',
                            fontSize: 16

                        },
                        
                       
                    },
                    series: [
                        {
                            name: '数量(个)',
                            type: 'pie',
                            radius: [80,200],
                            label: {
                                show: true,
                                textStyle: {
                                    fontSize: "13",
                                },
                                formatter: function (arg) {
                                    console.log(arg);
                                    return arg.name + '\n' + arg.value + '个' + '\n' + arg.percent + "%";
                                }
                            },
                            //data: aa
                            data: pieData
                        },
                    ]
                };
                myChart.setOption(option);
            </script>
        </div>
    </div>


</body>
</html>
