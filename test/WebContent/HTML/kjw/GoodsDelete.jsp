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
		<c:choose>
			<c:when test="${pass == 0 }">
				<div>
					<h1>상품 삭제를 실패하였습니다.</h1>
				</div>
				<div>
					<button type="button" onclick="location.href='goodsRead.do'">확인</button>
				</div>
			</c:when>
			<c:otherwise>
				<div>
					<h1>상품 삭제를 성공하였습니다.</h1>
				</div>
				<div>
					<button type="button" onclick="location.href='goodsList.do'">확인</button>
				</div>
			</c:otherwise>
		</c:choose>

	</div>
</body>
</html>