<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lilinhan
  Date: 2023/8/1
  Time: 10:00
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
      <table border="1" style="text-align: center">
            <tr>
                  <td>编号</td>
                  <td>用户名</td>
                  <td>密码</td>
                  <td>盐</td>
                  <td>giteeId</td>
                  <td>昵称</td>
                  <td>头像地址</td>
            </tr>
            <c:forEach items="${user}" var="u">
                  <tr>
                        <td>${u.id}</td>
                        <td>${u.name}</td>
                        <td>${u.pwd}</td>
                        <td>${u.salt}</td>
                        <td>${u.giteeId}</td>
                        <td>${u.nickName}</td>
                        <td>${u.avatarUrl}</td>
                  </tr>
            </c:forEach>
      </table>
</center>
</body>
</html>
