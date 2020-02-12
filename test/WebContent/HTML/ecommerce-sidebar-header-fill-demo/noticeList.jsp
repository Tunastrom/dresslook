<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noticeList.jsp</title>
</head>
<body>
	<div align="center">
		<br />
		<h1>댓글</h1>
		<div>
			<c:if test="${empty list }">
				<h2>댓글이 없습니다!</h2>
			</c:if>
		</div>
		<div>
			<c:if test="${!empty list }">
				<table border="1" class="table table-hover">
					<tr>
						<th>댓글번호</th>
						<th>게시글번호</th>
						<th>회원ID</th>
						<th>내용</th>
					</tr>
					<c:forEach var="dto" items="${list}">
					<tr>
						<td>${dto.a_num }</td>
						<td>${dto.c_num }</td>
						<td>${dto.m_id }</td>
						<td>${dto.contents }</td>
					</tr>				
					</c:forEach>
				</table>
			</c:if>
		</div>
	</div>
</body>
</html>