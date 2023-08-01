<%--
  Created by IntelliJ IDEA.
  User: lilinhan
  Date: 2023/8/1
  Time: 14:41
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
      <span style="color: red">${error}</span>
      <form action="/register.do" method="post">
            用户名：<input type="text" name="name"><br>
            密码：<input type="text" name="pwd"><br>
            <button>注册</button>
            <a href="/gotoEasyLogin.do">返回登录</a>
      </form>
</center>
</body>
</html>
