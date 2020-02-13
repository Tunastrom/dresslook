<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="80%" border=0>
		<tr>
			<td align="center">상품 리스트</td>
		</tr>
	</table>
	<br>

	<table width="80%" border=1 cellspacing=0>
		<tr height=30 bgcolor="#FFFF99">
			<th>CODE</th>
			<th>FILENAME</th>
			<th>BLOBDATA</th>
		</tr>

		<c:forEach items="${list}" var="dto">
			<tr>
				<td>${dto.getName()}</td>
				<td><img src="${dto.stringImage }"></td>
				<td>${dto.getId()}</td>
				<td></td>
			</tr>
		</c:forEach>

		<c:if test="${empty list }">
			<tr>
				<td colspan="3">no data</td>
			</tr>
		</c:if>


	</table>
</body>
</html>