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

	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//http 1.
	response.setHeader("pragma", "no-cache");//http 1.0
	response.setHeader("expires", "0");//proxies	
	if(session.getAttribute("username")==null)
	{
		response.sendRedirect("login.jsp");
	}
	%>
	
	
	welcome  ${username}......
	
	<a href="vidoes.jsp">videos</a>
	
<br>
<br>

<form action="Logout">
<input type="submit" value="Logout">

</form>
</body>
</html>