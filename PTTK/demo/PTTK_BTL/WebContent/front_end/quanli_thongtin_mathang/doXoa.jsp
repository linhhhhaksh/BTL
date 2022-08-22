<%@page import="dao.MathangDAO"%>
<%@page import="model.Mathang"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	Mathang mh = (Mathang)session.getAttribute("tblMathangID");
	MathangDAO dao = new MathangDAO();
	boolean kq = dao.xoaMH(mh);
	
	if(kq == true){
		
		response.sendRedirect("gdDanhSachMatHang.jsp");
	}
%>