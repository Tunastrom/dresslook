<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매자 관리</title>

</head>
<body>
	<div align="center" id="Mseller" class="table table-hover"><h2>판매자 관리</h2>
	<table border="1">
			<tr>
				<th scope="col">판매자id</th>
				<th scope="col">패스워드</th>
				<th scope="col">가입일자</th>
				<th scope="col">회사명</th>
				<th scope="col">이메일</th>
				<th scope="col">사업자번호</th>
				<th scope="col">담당자 번호</th>
				<th scope="col">우편번호</th>
				<th scope="col">주소1</th>
				<th scope="col">주소2</th>
				<th scope="col">판매자 등급</th>
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