<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>gdChonLoaiTK</title>
<%@include file="../header.jsp" %>
</head>
<body>
<h1>Chon Loai Thong Ke</h1>
<form action="">
	<button onclick="openPage('gdChonLoaiTkMH.jsp')" style="margin: 10px">Thong Ke Mat Hang</button>
</form>
<form action="">
	<input type="submit" name="btn_TKDT" value="Thong Ke Doanh Thu" style="margin: 10px">
</form>
<form action="">
	<input type="submit" name="btn_TKCSVC" value="Thong Ke Co So Vat Chat" style="margin: 10px">
</form>
</body>
</html>