<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.ArrayList,dao.*,model.*"%>
<%
	String username = (String)request.getParameter("username");
	String password = (String)request.getParameter("password");	
	Thanhvien tv = new Thanhvien();
	tv.setUsername(username);
	tv.setPassword(password);
	
	ThanhvienDAO dao = new ThanhvienDAO();
	boolean kq = dao.kiemtraDangNhap(tv);
	
	if(kq && (tv.getVaitro().equalsIgnoreCase("quanli"))){
        session.setAttribute("quanli", tv);
        response.sendRedirect("quanli_thongtin_mathang\\gdQuanLi.jsp");
    }else if(kq &&(tv.getVaitro().equalsIgnoreCase("nvkho"))){
        session.setAttribute("nvkho", tv);
        response.sendRedirect("nhaphang_tu_ncc\\gdNhanVienKho.jsp");
    }else{
        response.sendRedirect("gdDangNhap.jsp?err=fail");
    }
%>