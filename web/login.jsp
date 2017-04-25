<%-- 
    Document   : login
    Created on : Sep 28, 2016, 4:43:26 PM
    Author     : Iris Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>Login</h1>
        <form action="ControllerCustomers">
            Username: <input type="text" name="txtUser" value=""/><br/>
            Password: <input type="password" name="txtPass" value=""/><br/>
            <input type="submit" name="action" value="Login"/>
            <input type="reset" name="Reset" value="Reset"/>
        </form>
    </center>
    </body>
</html>
