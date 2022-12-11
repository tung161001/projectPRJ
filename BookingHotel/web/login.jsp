<%-- 
    Document   : login.jsp
    Created on : Dec 11, 2022, 4:12:19 AM
    Author     : thang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="login" method="post">
            <input type="text" name="username"/>
            <br><input type="password" name="password"/>
            <br><button>LOGIN</button>
            <br><a href="register">i don't have account!</a>
            <span>${error}</span>
        </form>
    </body>
</html>
