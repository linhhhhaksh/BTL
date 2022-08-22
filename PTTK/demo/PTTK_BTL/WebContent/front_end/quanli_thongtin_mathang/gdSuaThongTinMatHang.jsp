<%@page import="model.Mathang"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>gdSuaThongTinMatHang</title>
</head>
<body>
<%
	//lay ma cua mat hang can sua
	Mathang editmh = (Mathang)session.getAttribute("tblMathangID");
%>
<h1>Sua Thong Tin Mat Hang</h1>
<form action="doLuu.jsp" method="post">
	<table border="1">
		<tr>
			<td align="center">ID</td>
			<td align="center"><%=editmh.getId() %><p style="color: red">(K cho sua ID dau nhe ^^)</td>
		</tr>
		<tr>
			<td align="center">Ten Mat Hang</td>
			<td align="center"><input type="text" name="txtName" value="<%= editmh.getTenmathang() %>"></td>
		</tr>
		<tr>
			<td align="center">Ma</td>
			<td align="center"><input type="text" name="txtMa" value="<%=editmh.getMa() %>"></td>
		</tr>
		
		
		<tr>
			<td align="center">Gia Ban</td>
			<td align="center"><input type="text" name="txtGiaBan" value="<%= editmh.getGianban() %>"></td>
		</tr>
		<tr>
			<td align="center">Gia Nhap</td>
			<td align="center"><input type="text" name="txtGiaNhap" value="<%=editmh.getGianhap() %>"></td>
		</tr>
		<tr>
			<td align="center">Nha Cung Cap</td>
			<td align="center"><input type="text" name="txtNhaCungCap" value="<%=editmh.getNhacungcap() %>"></td>
		</tr>
		<tr>
			<td align="center">Nhan Hieu</td>
			<td align="center"><input type="text" name="txtNhanHieu" value="<%=editmh.getNhanhieu() %>"></td>
		</tr>
	</table>
<% 
	session.setAttribute("tblMathangID", editmh);
%>
	<input type="submit" name="btnSave" value="Luu" style="margin-top: 30px; margin-left: 50px">
	<input type="reset" name="btnReset" value="Reset" style="margin-top: 30px">
</form>
</body>
</html>