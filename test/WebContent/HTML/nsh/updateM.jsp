<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="dao.MemberDao"%>
<%@ page import="dto.MemberDto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		MemberDto dto = (MemberDto) request.getAttribute("dto");
		if (dto != null) {
	%>
	<h1>회원정보수정</h1>
	<!--memberupdate.do-->
	<form name="frm" action="" method="post">
		<table class="table table-hover">
			<tr>
				<td>최근 접속일 :</td>
				<td><input type="text" name="recent" readonly
					value="${dto.m_recent }">
				<td>
			</tr>
			<tr>
				<td>아 이 디 :</td>
				<td><input type="text" name="id" readonly value="${dto.m_id }"></td>
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
				<td>생 일 :</td>
				<td><input type="date" name="birth" value="${dto.m_birth }"></td>
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
				<td>권한정보 :</td>
				<td><input type="text" name="au" readonly value="${dto.m_au }"></td>
			</tr>
			<tr>
				<td colspan="2"><font color="red">권한 : 211 관리자 / 210 일반 회원</font></td>
			</tr>
			<tr>
				<td>상태정보 :</td>
				<td><input type="text" name="status" value="${dto.m_status }"></td>
			</tr>
			<tr>
				<td colspan="2"><font color="red">상태 : 060 활성화 계정 / 061 휴먼 계정</font></td>
			</tr>
			<tr>
				<td>포 인 트 :</td>
				<td><input type="text" name="point" value="${dto.m_point }"></td>
			</tr>
			<tr>
				<td>성 별 :</td>
				<td><input type="text" name="sex" readonly value="${dto.m_sex }"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="수정"></td>
			</tr>
		</table>
	</form>
	<%
		} else {
	%>
	${result }
	<p>
		<%
			}
		%>
	
</body>
</html>