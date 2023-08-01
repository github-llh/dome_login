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
      <a>第三方绑定</a>
</center>
</body>
</html>
