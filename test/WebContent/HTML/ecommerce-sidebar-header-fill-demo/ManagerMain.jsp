<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자</title>
</head>
<body>
	<div align="center" id="Mmember"class="card-body">
	<br />
		<h1>회원관리</h1>
		<table border="1" class="table table-bordered">
			<tr>
				<th>id</th>
				<th>이 름</th>
				<th>패스워드</th>
				<th>생일</th>
				<!-- <th>가입일자</th>-->
				<th>주 소1</th>
				<th>주 소2</th>
				<th>우편번호</th>
				<th>연 락 처</th>
				<th>등 급</th>
				<th>상 태</th>
				<th>적립금</th>
				<th>성 별</th>
				<th>최근 접속일</th>
			</tr>
			<c:forEach var="dto" items="${list}">
			<tr>
				<td>${dto.m_id }</td>
				<td>${dto.m_name }</td>
				<td>${dto.m_pwd }</td>
				<td>${dto.m_birth }</td>
				<!-- <td>${dto.eDate }</td>-->
				<td>${dto.m_addr }</td>
				<td>${dto.m_addr1 }</td>
				<td>${dto.m_zip }</td>
				<td>${dto.m_phone }</td>
				<td>${dto.m_grade }</td>
				<td>${dto.m_status }</td>
				<td>${dto.m_point }</td>
				<td>${dto.m_sex }</td>
				<td>${dto.recent_connection }</td>
			</tr>				
			</c:forEach>
		</table>
	</div>
	<div align="center" id="Mseller" class="table table-bordered"><h2>판매자 관리</h2>
	<table border="1">
			<tr>
				<th>판매자id</th>
				<th>패스워드</th>
				<th>가입일자</th>
				<th>회사명</th>
				<th>이메일</th>
				<th>사업자번호</th>
				<th>담당자 번호</th>
				<th>우편번호</th>
				<th>주소1</th>
				<th>주소2</th>
				<th>판매자 등급</th>
			</tr>
			<c:forEach var="dto" items="${list}">
			<tr>
				<td>${dto.s_id }</td>
				<td>${dto.s_name }</td>
				<td>${dto.eDate }</td>
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
	<div align="center" id="Mgoods" class="table table-bordered"><h2>상품관리</h2>
		<table border="1">
			<tr>
				<th>상품번호</th>
				<th>상품명</th>
				<th>판매가</th>
				<th>공급가</th>
				<th>사이즈</th>
				<th>색상</th>
				<th>재고유무</th>
				<th>판매자ID</th>
				<th>제조사</th>
				<th>상품이미지</th>
				<th>상품정보</th>
				<th>상품분류코드</th>
				<th>성별분류코드</th>
				<th>진열 우선 순위</th>
				<th>상품상태</th>
			</tr>
			<c:forEach var="dto" items="${list}">
			<tr>
				<td>${dto.g_num }</td>
				<td>${dto.g_name }</td>
				<td>${dto.g_price }</td>
				<td>${dto.s_price }</td>
				<td>${dto.g_size }</td>
				<td>${dto.color }</td>
				<td>${dto.g_inven }</td>
				<td>${dto.s_id }</td>
				<td>${dto.maker }</td>
				<td>${dto.g_image }</td>
				<td>${dto.g_info }</td>
				<td>${dto.g_code }</td>
				<td>${dto.g_sex }</td>
				<td>${dto.g_prior }</td>
				<td>${dto.g_status }</td>
			</tr>				
			</c:forEach>
		</table>
	</div>
	
</body>
</html>