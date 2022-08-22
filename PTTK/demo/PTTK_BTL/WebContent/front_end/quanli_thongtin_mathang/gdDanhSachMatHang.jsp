<%@page import="dao.MathangDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>gdDanhSachMatHang</title>
<%@include file="../header.jsp" %>
</head>
<body>
<%
//lay id cua quan li
Thanhvien ql = (Thanhvien)session.getAttribute("quanli");
      if(ql==null){
          response.sendRedirect("doDangNhap.jsp?err=timeout");
      }
//lay danh sach mat hang

ArrayList<Mathang> mh = (new MathangDAO()).getMathang();


%>
<h1>Danh Sach Mat Hang Ban Kem</h1>

	<table border="1" cellpadding="5">
		<thead>
			<td>ID</td>
			<td>Ten Mat Hang</td>
			<td>Nhan Hieu</td>
			<td>Nha Cung Cap</td>
			<td>Chon</td>
		</thead>
<%
if(mh != null)
	for(int i = 0; i < mh.size(); i++){%>
		<tr>
			<td><%= mh.get(i).getId() %></td>
			<td><%= mh.get(i).getTenmathang() %></td>
			<td><%= mh.get(i).getNhanhieu() %></td>
			<td><%= mh.get(i).getNhacungcap() %></td>
			<td><form action="gdChiTietMatHang.jsp" method="post">
					<input type="hidden" name="id_mathang" value="<%=mh.get(i).getId()%>">
					<input type="submit" value="Xem chi tiet">
				</form>
			</td>
		</tr>		
	<%}
%>
	</table>

<button style="margin-top: 30px" onclick="openPage('gdThemMatHang.jsp')">Them mat hang</button>
<button style="margin-top: 30px" onclick="openPage('gdQuanLi.jsp')">Quay Lai Trang Chu</button>
</body>
</html>