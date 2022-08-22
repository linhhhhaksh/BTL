<%@page import="dao.MathangDAO"%>
<%@page import="model.Mathang"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
	Mathang mh = new Mathang();
	int id = Integer.parseInt((String)request.getParameter("id"));
	String ten = (String)request.getParameter("ten");
	String ma = (String)request.getParameter("ma");
	float giaban = Float.parseFloat((String)request.getParameter("GiaBan"));
	float gianhap = Float.parseFloat((String)request.getParameter("GiaNhap"));
	String nhanhieu = (String)request.getParameter("NhanHieu");
	String nhacungcap = (String)request.getParameter("NhaCungCap");
	
	mh.setId(id);
	mh.setTenmathang(ten);
	mh.setMa(ma);
	mh.setGianban(giaban);
	mh.setGianhap(gianhap);
	mh.setNhanhieu(nhanhieu);
	mh.setNhacungcap(nhacungcap);
	
	MathangDAO dao = new MathangDAO();
	boolean kq = dao.addMH(mh);
	if(kq == true){
		response.sendRedirect("gdDanhSachMatHang.jsp");
	}
	else{ 
		response.sendRedirect("gdThemMatHang.jsp");
	}
%>