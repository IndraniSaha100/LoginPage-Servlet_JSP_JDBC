<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String msg = (String) request.getAttribute("errorMsg");
	if (msg != null) {
	%>
	    <p style="color:red;"><%= msg %></p>
	<%
	}
	%>
	<form action="login" method="post">
		Enter username:<input type="text" name="uname"><br>
		Enter password:<input type="password" name="upass">
		<input type="submit" value="login">
	</form>
</body>
</html>