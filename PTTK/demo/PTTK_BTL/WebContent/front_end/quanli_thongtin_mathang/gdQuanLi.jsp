<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>gdQuanLi</title>
</head>
<body>
<h1>Trang Chu Quan Li</h1>
<%
//lay id cua quan li
Thanhvien ql = (Thanhvien)session.getAttribute("quanli");
      if(ql==null){
          response.sendRedirect("doDangNhap.jsp?err=timeout");
      }
      %>
<p><i>Ho ten: <b><%= ql.getHt().getHo()%> <%= ql.getHt().getTendem()%> <%= ql.getHt().getTen() %></b></i></p>
<p><i>Cap bac nhan vien: <b><%= ql.getVaitro() %></b></i></p>
<form action="gdDanhSachMatHang.jsp" method="post">
	<input type="submit" name="qlmathang" value="Quan Li Mat Hang Ban Kem">
</form>
<br>
<form action="">
	<input type="submit" name="qlxemthongke" value="Quan Li Xem Thong Ke">
</form>
<br>
<form action="">
	<input type="button" name="qlsanbong" value="Quan Li Thong Tin San">
</form>
</body>
</html>