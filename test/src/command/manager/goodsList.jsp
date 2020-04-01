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
		<DIV class='aside_menu'>
			<FORM name='frm2' method='post' action='goodsList.do'>
				<ASIDE style='float: right;'>
					<SELECT name='col'>
						<!-- 검색 컬럼 -->
						<OPTION value='none'>전체 목록</OPTION>
						<OPTION value='rname'>상품명</OPTION>
						<OPTION value='title'>브랜드</OPTION>
						<OPTION value='no'>상품번호</OPTION>
					</SELECT> <input type='text' name='word' value=''
						placeholder="특수문자는 사용할수 없습니다.">
					<button type='submit'>검색</button>
				</ASIDE>
			</FORM>
			<DIV class='menu_line' style='clear: both;'></DIV>
		</DIV>
		<form name="frm" id="frm" action="goodsRead.do" method="post">
			<input type="hidden" id="id" name="id">
			<table class="table table-hover" id="ttd">
				<tr>
					<th scope="col">상품번호</th>
					<th scope="col">상품명</th>
					<th scope="col">판매가</th>
					<th scope="col">공급가</th>
					<th scope="col">사이즈</th>
					<th scope="col">색상</th>
					<th scope="col">재고유무</th>
					<th scope="col">상품분류코드</th>
					<th scope="col">브랜드</th>
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