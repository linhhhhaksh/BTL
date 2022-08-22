<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>gdNhanVienKho</title>
</head>
<body>
<% Thanhvien nvk = (Thanhvien)session.getAttribute("nvkho");
      if(nvk==null){
          response.sendRedirect("doDangNhap.jsp?err=timeout");
      }
      %>
<h1>Trang Chu Nhan Vien Kho</h1>
<p><i>Ho ten: <b><%= nvk.getHt().getHo() %> <%= nvk.getHt().getTendem() %> <%= nvk.getHt().getTen() %></b></i></p>
<p><i>Cap bac nhan vien: <b><%= nvk.getVaitro() %></b></i></p>
<form action="" style="margin: 20px">
	<input type="submit" name="btn_timkiem" value="Tim Kiem Mat Hang">
</form>
<form action="" style="margin: 20px">
	<input type="submit" name="btn_them" value="Them Mat Hang">
</form>
</body>
</html>