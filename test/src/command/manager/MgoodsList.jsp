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
			<FORM name='frm2' method='post' action='mGoodsList.do'>
				<ASIDE style='float: right;'>
					<SELECT name='col'>
						<!-- 검색 컬럼 -->
						<OPTION value='none'>전체 목록</OPTION>
						<OPTION value='rname'>상품명</OPTION>
						<OPTION value='title'>브랜드</OPTION>
						<OPTION value='no'>상품번호</OPTION>
						<OPTION value='sid'>판매자ID</OPTION>
					</SELECT> <input type='text' name='word' value=''
						placeholder="특수문자는 사용할수 없습니다.">
					<button type='submit'>검색</button>
				</ASIDE>
			</FORM>
			<DIV class='menu_line' style='clear: both;'></DIV>
		</DIV>
		<form name="frm" id="frm" action="mGoodsRead.do" method="post">
			<input type="hidden" id="id" name="id">
			<table class="table table-hover" id="ttd">
				<tr>
					<th scope="col">상품번호</th>
					<th scope="col">판매자ID</th>
					<th scope="col">상 품 명</th>
					<th scope="col">판 매 가</th>
					<th scope="col">공 급 가</th>
					<th scope="col">사 이 즈</th>
					<th scope="col">색 상</th>
					<th scope="col">재고유무</th>
					<th scope="col">상품분류코드</th>
					<th scope="col">브 랜 드</th>
					<th scope="col">상품이미지</th>
					<th scope="col">상품 삭제</th>
					<th scope="col">상품정보수정</th>
				</tr>
				<c:forEach var="dto" items="${list}">
					<tr>
						<td>${dto.g_num }</td>
						<td>${dto.s_id }</td>
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
						<td><button id="del" name="del" value="${dto.s_id}"
								formaction="mDeleteOne.do">상품삭제</button></td>
						<td><button id="id" name="id" value="${dto.g_num}"
								onclick="transData(${dto.g_num})">수정하기</button></td>
					</tr>
				</c:forEach>
			</table>
			
		</form>
		
	</div>