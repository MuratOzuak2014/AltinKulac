<%-- 
    Document   : GirisForm
    Created on : 02.Mar.2014, 19:45:17
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <style type="text/css">
        body
        { 
            background: url(Yuzme_02.jpg) no-repeat center center fixed; 
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }
    </style>
</head>
<body>   
    <form method="POST" action="login_control.jsp">
        <table style="margin: 0 auto;">
            <tr>
                <td>E-mail : </td>
                <td><input type="text" name="email" /></td>
            </tr>
            <tr>
                <td>Password : </td>
                <td><input type="password" name="password" /></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Login" style="float:right;" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
