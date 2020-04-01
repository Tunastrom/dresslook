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
	<div align="center">
	<br>
		<h2>회원정보수정</h2>
		<br>
		<form name="frm" action="memberUpdate.do" method="post">
			<input type="hidden" name="join" value="${dto.m_join }">
			<table class="table table-hover">
				<tr>
					<td>회원ID :</td>
					<td>${dto.m_id }<input type="hidden" name="id"
						value="${dto.m_id }"></td>
				</tr>
				<tr>
					<td>비밀번호 :</td>
					<td><input type="password" name="pwd" value="${dto.m_pwd }"></td>
				</tr>
				<tr>
					<td>이 름 :</td>
					<td><input type="text" name="name" value="${dto.m_name }"></td>
				</tr>
				<tr>
					<td>E-Mail :</td>
					<td><input type="text" name="mail" value="${dto.m_email }"></td>
				</tr>
				<tr>
					<td>생년월일 :</td>
					<td><input type="text" name="birth" value="${dto.m_birth }">
				</tr>
				<tr>
					<td>연 락 처 :</td>
					<td><input type="text" name="phone" value="${dto.m_phone }">
				</tr>
				<tr>
					<td>우편번호 :</td>
					<td><input type="text" name="zip" value="${dto.m_zip }"></td>
				</tr>
				<tr>
					<td>주 소 :</td>
					<td><input type="text" name="add1" value="${dto.m_add1 }"></td>
				</tr>
				<tr>
					<td>상세 주소 :</td>
					<td><input type="text" name="add2" value="${dto.m_add2 }"></td>
				</tr>
				<tr>
					<td>상태정보 :</td>
					<td><select id="status" name="status">
							<option value="60">일반</option>
							<option value="61">휴면</option>
							<option value="62">탈퇴</option>
							<option value="63">제제</option>
					</select> 현재상태 ${dto.m_status }</td>
				</tr>
				<tr>
					<td>포 인 트 :</td>
					<td><input type="text" name="point" value="${dto.m_point }"></td>
				</tr>
				<tr>
					<td>성 별 :</td>
					<td><select id="sex" name="sex">
							<option value="50">남자</option>
							<option value="51">여자</option>
					</select> 현재성별 ${dto.m_sex }</td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="수정">
						<input type="button" value="취소"
						onclick="location.href='/test/memberlist.do'"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>