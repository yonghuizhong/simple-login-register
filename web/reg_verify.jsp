<%@ page import="com.conn" %>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Connection con = new conn().getCon(); // 建立连接
    String username = request.getParameter("q");
    String sql = "select * from usertable where username=?";
    PreparedStatement pstmt = con.prepareStatement(sql);
    pstmt.setString(1, username);
    ResultSet rs = pstmt.executeQuery();
    if (rs.next()){
        out.println("用户名"+rs.getString("username")+"已注册！");
        rs.close();
        pstmt.close();
        con.close();
    }
    else {
        rs.close();
        pstmt.close();
        con.close();
    }
%>
</body>
</html>
