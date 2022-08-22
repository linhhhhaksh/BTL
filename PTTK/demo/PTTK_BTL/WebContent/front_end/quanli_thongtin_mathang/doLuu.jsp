<%@page import="dao.MathangDAO"%>
<%@page import="model.Mathang"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	Mathang mh = (Mathang) session.getAttribute("tblMathangID");
	String name = (String)request.getParameter("txtName");
	String ma = (String) request.getParameter("txtMa");
	float giaban = Float.parseFloat(request.getParameter("txtGiaBan"));
	float gianhap = Float.parseFloat(request.getParameter("txtGiaNhap"));
	String nhacungcap = (String) request.getParameter("txtNhaCungCap");
	String nhanhieu = (String)request.getParameter("txtNhanHieu");
	mh.setTenmathang(name);
	mh.setMa(ma);
	mh.setGianban(giaban);
	mh.setGianhap(gianhap);
	mh.setNhacungcap(nhacungcap);
	mh.setNhanhieu(nhanhieu);
	
	MathangDAO dao = new MathangDAO();
	boolean kq = dao.luuSuaTTMH(mh);
	
	
		
		
	if(kq == true){
    	response.sendRedirect("gdDanhSachMatHang.jsp");
	}
 %>
