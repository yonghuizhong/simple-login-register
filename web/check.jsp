<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="user" class="com.usertable"></jsp:useBean>
<jsp:useBean id="userservice" class="com.userservice"></jsp:useBean>
<jsp:setProperty name="user" property="*"/>
<%
    if (userservice.checkUser(user))  //如果输入的用户在数据库中，则显示“成功”
        response.sendRedirect("hello.html");
    else
        response.sendRedirect("login.jsp?error=yes");
%>
</body>
</html>