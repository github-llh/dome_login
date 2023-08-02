<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lilinhan
  Date: 2023/8/1
  Time: 19:31
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
      <form action="/list.do" method="post">
            <table border="1" style="text-align: center">
                  <tr>
                        <td colspan="8">
                              订单编号：<input type="text" name="num" value="${query.num}">
                              订单来源：
                              <select name="sid">
                                    <option value="">--请选择--</option>
                                    <c:forEach items="${source}" var="s">
                                          <option value="${s.id}" ${query.sid==s.id?"selected":""}>${s.name}</option>
                                    </c:forEach>
                              </select>
                              订单分类：
                              <select name="cid">
                                    <option value="">--请选择--</option>
                                    <c:forEach items="${classIfy}" var="c">
                                          <option value="${c.id}" ${query.cid==c.id?"selected":""}>${c.name}</option>
                                    </c:forEach>
                              </select>
                              排序：
                              <select name="orderName">
                                    <option value="">--请选择--</option>
                                    <option value="price" ${query.orderNum=="price"?"selected":""}>价格</option>
                                    <option value="id" ${query.orderNum=="id"?"selected":""}>编号</option>
                              </select>
                              <select name="orderType">
                                    <option value="">--请选择--</option>
                                    <option value="asc" ${query.orderType=="asc"?"selected":""}>正序</option>
                                    <option value="desc" ${query.orderType=="desc"?"selected":""}>倒序</option>
                              </select>
                              <button>查询</button>
                        </td>
                  </tr>
                  <tr>
                        <td>订单编号</td>
                        <td>创建人</td>
                        <td>价格</td>
                        <td>支付方式</td>
                        <td>商品来源</td>
                        <td>商品分类</td>
                        <td>商品状态</td>
                        <td>操作</td>
                  </tr>
                  <c:forEach items="${pageInfo.list}" var="o">
                        <tr>
                              <td>${o.orderNum}</td>
                              <td>${o.uname}</td>
                              <td>${o.price}</td>
                              <td>${o.payType}</td>
                              <td>${o.sname}</td>
                              <td>${o.status==0?"未支付":"已完成"}</td>
                              <td>${o.cname}</td>
                              <td><a>删除</a></td>
                        </tr>
                  </c:forEach>
                  <td colspan="8">
                         <button name="pageNum" value="1">首页</button>
                         <button name="pageNum" value="${pageInfo.prePage==1?1:pageInfo.prePage}">上一页</button>
                         <button name="pageNum" value="${pageInfo.pageNum}">${pageInfo.pageNum}</button>
                        <button name="pageNum" value="${pageInfo.nextPage==0?pageInfo.pages:pageInfo.nextPage}">
                         下一页
                         </button>
                         <button name="pageNum" value="${pageInfo.pages}">尾页</button>
                         总条数：${pageInfo.total}条
                  </td>
            </table>
      </form>
</center>
</body>
</html>
