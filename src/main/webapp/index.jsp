<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2021/7/25
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String bastPath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort()+
            request.getContextPath()+"/";
%>
<html>
<head>
    <title>Title</title>
<%--    <base href="http://localhost:8080/ch06_path/">--%>
    <base href="<%=bastPath%>">
</head>
<body>
    <p>拦截器的使用-多个拦截器使用时的拦截顺序</p>
    <form action="some.do" method="post">
        姓名：<input type="text" name="name"><br/>
        年龄：<input type="text" name="age"><br/>
        <input type="submit" value="提交请求"><br/>
    </form>
</body>
</html>

