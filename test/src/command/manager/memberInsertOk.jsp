<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div>
			<br />
			<c:choose>
				<c:when test="${pass == 0 }">
					<h1>회원가입에 실패하였습니다.</h1>
					<button type="button" onclick="location.href='/memberInsert.do'">확인</button>
				</c:when>
				<c:otherwise>
					<h1>회원가입에 성공하였습니다.</h1>
					<button type="button" onclick="location.href='login.do'">확인</button>
				</c:otherwise>
			</c:choose>
		</div>

	</div>
</body>
</html>