<%--
  Created by IntelliJ IDEA.
  User: lilinhan
  Date: 2023/8/1
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<html>
<head>
      <title>Title</title>
      <link href="css/bootstrap.min.css" rel="stylesheet">
      <script type="text/javascript" src="js/jquery-3.5.1.js"></script>
      <%--echart线图、柱状图、饼图等各种图型库 cdn--%>
      <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/echarts.min.js"></script>
      <%--jquery cdn--%>
      <script type="text/javascript" src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.1/jquery.js"></script>
</head>
<body>
<center>
      <a href="gotoEasyLogin.do">普通登录</a>
      <a href="gotoSmsLogin.do">短信登录</a>
      <a href="https://gitee.com/oauth/authorize?client_id=130d9618bac29926edb690502c938adec33aca70be5f2bc2d90c79d7a13bb875&redirect_uri=http://localhost:8080/callback.do&response_type=code">第三方登录</a>
      <a>第三方绑定</a><br>

      楼盘状态：
      <select name="status">
            <option value="">--请选择--</option>
            <option value="1">在售</option>
            <option value="2">停工</option>
            <option value="3">入住</option>
      </select>
      <button onclick="zhu()">柱状图（按城市分类）</button>
      <button disabled>最高变色柱状图</button>
      <button>折线图</button>
      <button onclick="bing()">饼状图（南丁格尔）</button>
</center>

<div style="width: 100%;height: 100%">
      <div id="t1" style="width: 300px;height: 350px;float: left"></div>
      <div id="t2" style="width: 700px;height: 700px;float: left"></div>
      <div id="t3" style="width: 300px;height: 350px;float: left"></div>
      <div id="t4" style="width: 300px;height: 350px;float: right"></div>
</div>

<script>
    function zhu() {
        let val = $("[name=status]").val();

        $.post(
            "/zhu.do",
            {status:val},
            function (data){
                console.log(data)

                let xArray = [];
                let yArray = [];
                for (let i = 0; i < data.length; i++)  {
                    xArray.push(data[i].xdata);
                    yArray.push(data[i].ydata);
                }

                var chartDom = document.getElementById('t1');
                var myChart = echarts.init(chartDom);
                var option;

                option = {
                    xAxis: {
                        type: 'category',
                        data: yArray
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [
                        {
                            data: xArray,
                            type: 'bar',
                            showBackground: true,
                            backgroundStyle: {
                                color: 'rgba(180, 180, 180, 0.2)'
                            }
                        }
                    ]
                };

                option && myChart.setOption(option);
            }
        )
    }

    function bing(){
        let val = $("[name=status]").val();

        $.post(
            "/bing.do",
            {status:val},
            function (data){
                var chartDom = document.getElementById('t2');
                var myChart = echarts.init(chartDom);
                var option;

                option = {
                    legend: {
                        top: 'bottom'
                    },
                    toolbox: {
                        show: true,
                        feature: {
                            mark: { show: true },
                            dataView: { show: true, readOnly: false },
                            restore: { show: true },
                            saveAsImage: { show: true }
                        }
                    },
                    series: [
                        {
                            name: 'Nightingale Chart',
                            type: 'pie',
                            radius: [50, 250],
                            center: ['25%', '25%'],
                            roseType: 'area',
                            itemStyle: {
                                borderRadius: 8
                            },
                            data: data
                        }
                    ]
                };

                option && myChart.setOption(option);
            }
        )
    }
</script>
</body>
</html>
