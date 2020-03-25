<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 목록</title>

</head>
<body>
	<div align="center" id="Mseller" class="table table-hover"><h2>주문 목록</h2>
	<table border="1">
			<tr>
				<th scope="col">구매id</th>
				<th scope="col">이름</th>
				<th scope="col">연락처</th>
				<th scope="col">주문번호</th>
				<th scope="col">상품번호</th>
				<th scope="col">수량</th>
				<th scope="col">우편번호</th>
				<th scope="col">주소1</th>
				<th scope="col">주소2</th>
			</tr>
			<c:forEach var="dto" items="${list}">
			<tr>
				<td>${dto.s_id }</td>
				<td>${dto.s_name }</td>
				<td>${dto.eDate }</td><!-- 가입일자 컬럼 확인 요망 -->
				<td>${dto.c_name }</td>
				<td>${dto.s_email }</td>
				<td>${dto.s_number }</td>
				<td>${dto.s_phone }</td>
				<td>${dto.s_zip }</td>
				<td>${dto.s_addr1 }</td>
				<td>${dto.s_addr2 }</td>
				<td>${dto.s_grade }</td>
			</tr>				
			</c:forEach>
		</table>
	</div>
</body>
</html>