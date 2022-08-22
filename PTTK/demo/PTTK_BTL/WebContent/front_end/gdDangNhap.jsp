<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>gdDangNhap</title>
</head>
<body>
 <%
      if(request.getParameter("err") !=null && request.getParameter("err").equalsIgnoreCase("timeout")){
          %> <h4>Het phien lam viec, hay dang nhap lai!</h4><%
      }else if(request.getParameter("err") !=null && request.getParameter("err").equalsIgnoreCase("fail")){
          %> <h4 style="color: red">Sai ten dang nhap/mat khau!!</h4><%
      }
      %>
<form name="dangnhap" action="doDangNhap.jsp" method="post">
	<h1>Dang Nhap</h1>
	<table border="1" cellpadding="5" cellspacing="2">
		<tr>
			<td>UserName</td>
			<td><input type="text" name="username" id="username"></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="password" id="password"></td>
		</tr>
	</table>
	<br>
	<input type="submit" name="btnSubmit" value="DangNhap">
</form>
</body>
</html>