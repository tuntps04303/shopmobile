<%-- 
<a href="${pageContext.request.contextPath}/userInfo">Customers</a>
<a href="ControllerProduct?action=ShowAll">Products</a>
    Document   : _menu
    Created on : Sep 16, 2016, 9:35:59 PM
    Author     : Tu Ech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>    
<div style="padding: 5px;">
   <a href="${pageContext.request.contextPath}/index.jsp">Home</a>
   |
   <a href="${pageContext.request.contextPath}/admin/products.jsp">Products</a>
   |
   <a href="${pageContext.request.contextPath}/admin/customer.jsp">Customers</a>
   |
   
   <a href="${pageContext.request.contextPath}/admin/ControllerCustomers?action=Logout">
        <%
            if (session.getAttribute("USER") != null){
                out.print("Logout");
            }else{
                out.print("Login");
            }    
        %>
   </a> 
</div>  
