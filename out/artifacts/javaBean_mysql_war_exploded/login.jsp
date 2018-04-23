<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录界面</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script>
        var is_error ='<%=request.getParameter("error")%>';
        if(is_error=='yes'){
            alert("用户名或密码不匹配！");
        }
    </script>
</head>
<body>
<h2>jsp、javabean、mysql实现登录功能</h2>
<form action="check.jsp" method=GET>
    <label for="username">用户名</label>
    <input type="text" name="username" placeholder="请输入用户名" required="required"/><br />
    <label for="password">密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
    <input type="password" name="password" placeholder="请输入密码" required="required"/><br />
    <input type="submit" name="submit" id="submit" value="提交" />
    <a href="register.html" id="register_text">注册</a>
</form>
</body>
</html>
