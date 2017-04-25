<%-- 
    Document   : _header
    Created on : Sep 16, 2016, 9:34:47 PM
    Author     : Tu Ech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div style="background: #33cc00; height: 55px; padding: 5px;">
  <div style="float: left">
     <h1>MobileShop</h1>
  </div>
 
  <div style="float: right; padding: 10px; text-align: right;">
 
     <!-- User store in session with attribute: loginedUser -->
     Hello: <b>${sessionScope.USER}</b>
   <br/>
 
  </div>
 
</div>
