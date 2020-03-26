<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div>
			<form method="post" action="GoodsEdit.do"
				encType="multipart/form-data">
				<table border="1">
					<tr>
						<td>상품명</td>
						<td>${dto[0].g_name }</td>
					</tr>
					<tr>
						<td>판매가</td>
						<td>${dto[0].g_price }원</td>
					</tr>
					<tr>
						<td>공급가</td>
						<td>${dto[0].s_price }원</td>
					</tr>
					<tr>
						<td>사이즈</td>
						<td>${dto[0].g_size }</td>
					</tr>
					<tr>
						<td>색상</td>
						<td>${dto[0].color }</td>
					</tr>
					<tr>
						<td>재고유무</td>
						<td>${dto[0].g_inven }</td>
					</tr>
					<tr>
						<td>제조사</td>
						<td>${dto[0].maker }</td>
					</tr>
					<tr>
						<td>상품이미지</td>
						<td><img alt=""
							src="${pageContext.request.contextPath}/images/goodsImg/${dto[0].g_fileName}"
							width="100" height="100"></td>
					</tr>
					<tr>
						<td>상품정보</td>
						<td>${dto[0].g_info }</td>
					</tr>
					<tr>
						<td>상품분류코드</td>
						<td>${dto[0].g_code }</td>
					</tr>
					<tr>
						<td>성별분류코드</td>
						<td>${dto[0].g_sex }</td>
					</tr>
					<tr>
						<td>진열우선순위</td>
						<td>${dto[0].g_prior}</td>
					</tr>
					<tr>
						<td>상품상태</td>
						<td>${dto[0].g_status}</td>
					</tr>
				</table>
			</form>
		</div>
		<div>
			<br />
			<button type="button" onclick="location.href='GoodsEdit.do'">상품
				수정</button>
			&nbsp;
			<button type="button" onclick="location.href='GoodsDelete.do'">상품
				삭제</button>
			&nbsp;
		</div>
		<br />
		<button type="button" onclick="location.href='goodsList.do'">목록가기</button>
	</div>


</body>
</html>