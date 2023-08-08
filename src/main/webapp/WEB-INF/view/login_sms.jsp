<%--
  Created by IntelliJ IDEA.
  User: lilinhan
  Date: 2023/8/1
  Time: 10:23
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
	<div style="width: 500px;height: 500px;text-align: left">
		<span style="color: red">${error}</span>
		<form action="/phoneLogin.do" method="post">
			手机号：<input type="text" name="phone"><button type="button" onclick="send()">点击发送</button><br>
			短信验证码：<input type="text" name="pwd"><br>
			图片验证码：<input type="text" name="pic"><img src="http://localhost:8080/code.do" onclick="this.src=this.src+'?time='+new Date().getTime()" style="width: 60px;height: 40px"><br>
			<button>登录</button>
		</form>
	</div>
</center>

<script>
    function send() {
        let val = $("[name=phone]").val();

        $.post(
            "/send.do?phone="+val,
            function (data){
                if(data){
                    alert("发送成功");
                }
            }
        )
    }
</script>
</body>
</html>
