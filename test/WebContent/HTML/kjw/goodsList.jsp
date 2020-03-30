<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function transData(n) {
	frm.id.value = n;
	frm.submit();
}

</script>
</head>
<body>
	<div align="center" id="dv">
		<br />
		<h2>상품 관리</h2>
		<br><br><br><br>
		<form name="frm" id="frm" action="goodsRead.do" method="post">
			<input type="hidden" id="id" name="id">
			<table class="table table-hover" id="ttd">
				<tr>
					<th scope="col">상품번호</th>
					<th scope="col">상 품 명</th>
					<th scope="col">판 매 가</th>
					<th scope="col">공 급 가</th>
					<th scope="col">사 이 즈</th>
					<th scope="col">색 상</th>
					<th scope="col">재고유무</th>
					<th scope="col">상품분류코드</th>
					<th scope="col">브 랜 드</th>
					<th scope="col">상품이미지</th>
				</tr>
				<c:forEach var="dto" items="${list}">
					<tr onmouseover="this.style.backgroundColor='#FFFF99'"
						onmouseout="this.style.backgroundColor=''"
						onclick="transData(${dto.g_num })">
						<td>${dto.g_num }</td>
						<td>${dto.g_name }</td>
						<td>${dto.g_price }</td>
						<td>${dto.s_price }</td>
						<td>${dto.g_size }</td>
						<td>${dto.color }</td>
						<td>${dto.g_inven }</td>
						<td>${dto.g_code }</td>
						<td>${dto.maker }</td>
						<td><img alt=""
							src="${pageContext.request.contextPath}/upload/goodsImg/${dto.g_fileName}"
							width="100" height="100"></td>
					</tr>
				</c:forEach>
			</table>
			<input type="submit" value="상품등록하기" formaction="goodsInsert.do">
		</form>
		
	</div>
</body>
</html>