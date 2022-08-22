<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>gdThemMatHang</title>
<%@include file="../header.jsp" %>
</head>
<body>
<h1>Them Mat Hang</h1>
<form action="doThem.jsp">
	<table>
		<tr>
			<td align="center">ID</td>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>	
			<td align="center">Ten Mat Hang</td>
			<td><input type="text" name="ten"></td>
		</tr>
		<tr>
			<td align="center">Ma</td>
			<td><input type="text" name="ma"></td>
		</tr>
		<tr>	
			<td align="center">Gia Ban</td>
			<td><input type="text" name="GiaBan"></td>
		</tr>
		<tr>
			<td align="center">Gia Nhap</td>
			<td><input type="text" name="GiaNhap"></td>
		</tr>
		<tr>
			<td align="center">Nhan Hieu</td>
			<td><input type="text" name="NhanHieu"></td>
		</tr>
		<tr>
			<td align="center">Nha Cung Cap</td>
			<td><input type="text" name="NhaCungCap"></td>
		</tr>
	</table>
	<input style="margin-top: 30px" type="submit" value="Them mat hang">
	<input style="margin-top: 30px; margin-left: 10px" type="reset" value="Reset">
</form>
	<button style="margin-top: 30px; margin-left: 10px" onclick="openPage('gdDanhSachMatHang.jsp')">Quay Lai</button>
</body>
</html>