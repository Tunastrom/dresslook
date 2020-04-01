<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원정보수정</h1>
	<form name="frm" action="sellerUpdate.do" method="post">
		<table class="table table-hover">
			<tr>
				<td>회원ID :</td>
				<td>${dto.s_id }<input type="hidden" name="id" value="${dto.s_id }"></td>
			</tr>
			<tr>
				<td>비밀번호 :</td>
				<td><input type="password" name="pwd" value="${dto.s_pwd }"></td>
			</tr>
			<tr>
				<td>상  호 :</td>
				<td><input type="text" name="name" value="${dto.s_cname }"></td>
			</tr>
			<tr>
				<td>E-Mail :</td>
				<td><input type="text" name="mail" value="${dto.s_email }"></td>
			</tr>
			<tr>
				<td>사업자번호 :</td>
				<td><input type="text" name="birth" value="${dto.c_number }">
			</tr>
			<tr>
				<td>연 락 처 :</td>
				<td><input type="text" name="phone" value="${dto.s_phone }">
			</tr>
			<tr>
				<td>우편번호 :</td>
				<td><input type="text" name="zip" value="${dto.s_zip }"></td>
			</tr>
			<tr>
				<td>주 소 :</td>
				<td><input type="text" name="add1" value="${dto.s_addr1 }"></td>
			</tr>
			<tr>
				<td>상세 주소 :</td>
				<td><input type="text" name="add2" value="${dto.s_addr2 }"></td>
			</tr>
			<tr>
				<td>판매자등급 : </td>
				<td><select id="grade" name="grade">
						<option value="42">normal</option>
						<option value="43">bronze</option>
						<option value="44">silver</option>
						<option value="45">gold</option>
						<option value="46">diamond</option>
						<option value="47">vip</option>
				</select> 현재상태 ${dto.s_grade }</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input type="submit" value="수정">
				<input type="reset" value="초기화"> 
				<input type="button" value="취소" onclick="location.href='/test/SellerList.do'"></td>
			</tr>
		</table>
	</form>
</body>
</html>