<%-- 
    Document   : editKhachhang
    Created on : Oct 19, 2016, 6:41:59 PM
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
        <h1>Edit Khach Hang</h1>
    
        <form action="ControllerKhachhang">
            MaKH: ${SP.maKhachHang}<br/>
            Mat Khau: <input type="text" name="txtMatKhau" value="${SP.matKhau}"/><br/>
            Ho Va Ten: <input type="text" name="txtHoVaTen" value="${SP.hoVaTen}"/><br/>
            Email: <input type="text" name="txtEmail" value="${SP.email}"/><br/>
            Dien Thoai:<input type="text" name="txtDienThoai" value="${SP.dienThoai}"/><br/>
            <input type="hidden" name="txtMaKH" value="${SP.maKhachHang}"/>
            <input type="submit" name="action" value="Update"/>
        </form>
    </center>
    </body>
</html>