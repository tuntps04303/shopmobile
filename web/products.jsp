    <%-- 
    Document   : products
    Created on : Sep 28, 2016, 4:43:46 PM
    Author     : Iris Nguyen
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="/head_footer/_header.jsp"></jsp:include>
    <center>
        <h1>Products</h1>
        <form action="ControllerProducts">
            Nhap ten SP: <input type="text" name="txtTenSP" value=""/>
            <input type="submit" name="action" value="Search"/>
        </form>
        <br/>
        <table border="1">
            <tr>
                <td>Code</td>
                <td>Name</td>
                <td>Price</td>
                <td>Edit</td>
                <td>Delete</td>
            </tr>
            <c:forEach var="rows" items="${listSP}">
                <form action="ControllerProducts">
                <tr>
                    <td>${rows.code}</td>
                    <td>${rows.name}</td>
                    <td>${rows.price}</td>
                    <c:url var="del" value="ControllerProducts">
                        <c:param name="action" value="Edit"/>
                        <c:param name="txtCode" value="${rows.code}"/>
                        <c:param name="txtName" value="${rows.name}"/>
                        <c:param name="txtPrice" value="${rows.price}"/>    
                    </c:url>
                    <td><a href="${del}">Edit</a></td>
                    <td>
                        <input type="hidden" name="txtCode" value="${rows.code}"/>
                        <input type="submit" name="action" value="Delete"/>
                    </td>
                </tr>    
                </form>
            </c:forEach>
        </table>
        <br/>
        <form action="ControllerProducts">
            <input type="submit" name="action" value="New"/>
        </form>
        </center>
    </body>
</html>
