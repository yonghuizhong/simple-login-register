<%@ page import="com.conn" %>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="user" class="com.usertable"></jsp:useBean>
<jsp:setProperty name="user" property="*"/>
<%
    Connection conn = new conn().getCon(); // 建立连接
    String username = user.getUsername();
    String password = user.getPassword();
    System.out.println("用户名" + username + "  密码" + password);
    String sql = "insert into usertable(username , password) values('" + username + "','" + password + "')";
    Statement stmt = conn.createStatement();
    try {
        stmt.execute(sql);
        System.out.println("插入成功");
        response.sendRedirect("hello.html");
    }catch (SQLException e)
    {
        e.printStackTrace();
        System.out.println("插入失败");
    }
    stmt.close();
    conn.close();
%>
</body>
</html>
