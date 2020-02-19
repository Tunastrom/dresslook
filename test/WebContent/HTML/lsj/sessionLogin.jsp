<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><!-- 승진이형 바보~ -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		if(session.getAttribute("id")==null||session.getAttribute("au")==null)
		{
			response.sendRedirect("memberLogin.jsp");
		}
	%>
</body>
</html>