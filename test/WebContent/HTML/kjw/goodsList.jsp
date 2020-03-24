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
	<div>
	<span>
	<table width="80%" border=1 cellspacing=0>
		<tr height=30 bgcolor="#FFFF99">
			<th>CODE</th>
			<th>FILENAME</th>
			<th>BLOBDATA</th>
		</tr>
		<c:forEach items="${list1}" var="dto1">
			<tr>
				<td>${dto1.getG_num()}</td>
				<td>${dto1.getG_name()}</td>
				<td><img src="D:\dev\aaa\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\test\images${dto1.getG_fileName()}"></td>
			<tr>	
		</c:forEach>
		<c:if test="${empty list1}">
			<tr>
				<td colspan="3">no data</td>
			</tr>
		</c:if>
	</table>
	</span>
	<span>
	<table width="80%" border=1 cellspacing=0>
		<tr>
			<th>Code</th>
			<th>Img_type</th>
			<th>Filename</th>
		</tr>
		<c:forEach items="${list2}" var="dto2">
		<tr>
			<td>${dto2.getG_num()}</td>
			<td>${dto2.getImg_type()}</td>
			<td><img src="D:\dev\aaa\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\test\images${dto2.getGd_fileName()}"></td>
		</tr>
		</c:forEach>
		<c:if test="${empty list2}">
			<tr>
				<td colspan="3">no data</td>
			</tr>
		</c:if>
	</table>
	</span>
	</div>
</body>
</html>