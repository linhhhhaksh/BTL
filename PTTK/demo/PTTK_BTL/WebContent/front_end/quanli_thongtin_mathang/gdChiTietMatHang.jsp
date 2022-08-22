<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.*,java.util.ArrayList,dao.MathangDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>gdChiTietMatHang</title>
<%@include file="../header.jsp" %>
</head>
<body>
<%
//lay id cua quan li
Thanhvien ql = (Thanhvien)session.getAttribute("quanli");
    if(ql==null){
       response.sendRedirect("doDangNhap.jsp?err=timeout");
    }

//lay chi tiet mat hang
	int id = Integer.parseInt(request.getParameter("id_mathang"));
	Mathang mh = new Mathang();
	mh.setId(id);
	
	MathangDAO dao = new MathangDAO();
	boolean kq = dao.checkmathang(mh);
	
%>
<h1>Chi Tiet Mat Hang</h1>
<table border="1" cellpadding="5">
		<thead>
			<td align="center">ID</td>
			<td align="center">Ten Mat Hang</td>
			<td align="center">Ma</td>
			<td align="center">Gia Ban</td>
			<td align="center">Gia Nhap</td>
			<td align="center">Nhan Hieu</td>
			<td align="center">Nha Cung Cap</td>
		</thead>
<%
	if(kq && mh.getId() == id){
		%>
		<tr>
			<td><%=mh.getId() %></td>
			<td><%=mh.getTenmathang() %></td>
			<td><%=mh.getMa() %></td>
			<td><%=mh.getGianban()%></td>
			<td><%=mh.getGianhap() %></td>
			<td><%=mh.getNhanhieu() %></td>
			<td><%=mh.getNhacungcap() %></td>
			
		</tr>
		<%
	}
		%>
		
	
</table>
<%
	session.setAttribute("tblMathangID", mh);
%>
<form action="gdSuaThongTinMatHang.jsp" method="get" style="margin: 10px" >
	<input type="submit" name="btnSuaMatHang" value="Sua Thong Tin">
</form>
<form action="doXoa.jsp" method="post" style="margin: 10px" >
	<input type="submit" name="btnXoaMatHang" value="Xoa Mat Hang">
</form>
<form action="" style="margin: 10px">
	<input type="button" onclick="javascript:history.go(-1)" name="btnQl_gdDSMH" value="Quay Lai">
</form>
</body>
</html>