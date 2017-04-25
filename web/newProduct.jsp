<%-- 
    Document   : newProduct
    Created on : Oct 9, 2016, 2:14:03 PM
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
        <h1>New Product</h1>
        <form action="ControllerProducts">
            Code: <input type="text" name="txtCode" value=""/><br/>
            Name: <input type="text" name="txtName" value=""/><br/>
            Price: <input type="text" name="txtPrice" value=""/><br/>
            <input type="submit" name="action" value="Insert"/>
        </form>
    </center>
    </body>
</html>
