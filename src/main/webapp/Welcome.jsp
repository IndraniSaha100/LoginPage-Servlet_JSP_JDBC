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
	response.setHeader("cache-control","no-cache,no-store,must-revalidate");
	
	if(session.getAttribute("uname")==null){
		response.sendRedirect("Login.jsp");
	} 
%>
	<h1>Hello ${uname}<br></h1>
	<h2>Welcome to the community<br></h2>
	Click the below icon for video
	<h4><a href="Videos.jsp">VIDEO</a></h4>
	
	<form action="logout" >
	 <input type="submit" value="LOGOUT">
	</form>
</body>
</html>