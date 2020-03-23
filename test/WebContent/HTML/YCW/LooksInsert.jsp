<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Look Insert Test</title>
</head>
<body>
<h2>Look Insert Test</h2>
	<div>
		<form method="post" action="insertLooks.do" encType="multipart/form-data">
			<table>
				<tr>
					<td>이미지</td>
					<td><input type="file" id="image" name="image"></td>
				</tr>
				<tr>
					<td>상품 ID's</td>
					<td><input type="text" id="gnums" name="gnums" value="16000"></td>
				</tr>
				<tr>
					<td>상품ID's의 value는 "1-2-3-4-5" 처럼 숫자+"-"+숫자 형태로 입력</td>
				</tr>
				<tr>
					<td>작성자 ID</td>
					<td><input type="text" id="mid" name="mid" value="13000"></td>
				</tr>
				<tr>
					<td>룩공개여부</td>
					<td><select id="lopen" name="lopen">
							<option value="070">공개</option>
							<option value="071">비공개</option>
					</select></td>
				<tr>
					<td rowspan="1"><button>등록</button></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>