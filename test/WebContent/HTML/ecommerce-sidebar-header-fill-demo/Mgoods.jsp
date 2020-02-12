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
	<div align="center" id="Mgoods" class="table table-hover"><h2>상품관리</h2>
		<table border="1">
			<tr>
				<th scope="col">상품번호</th>
				<th scope="col">상품명</th>
				<th scope="col">판매가</th>
				<th scope="col">공급가</th>
				<th scope="col">사이즈</th>
				<th scope="col">색상</th>
				<th scope="col">재고유무</th>
				<th scope="col">판매자ID</th>
				<th scope="col">제조사</th>
				<th scope="col">상품이미지</th>
				<th scope="col">상품정보</th>
				<th scope="col">상품분류코드</th>
				<th scope="col">성별분류코드</th>
				<th scope="col">진열 우선 순위</th>
				<th scope="col">상품상태</th>
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