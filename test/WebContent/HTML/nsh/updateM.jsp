<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="dao.MemberDao" %>    
<%@ page import="dto.MemberDto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% MemberDto dto =(MemberDto)request.getAttribute("dto");
	if(dto != null) {%>
	<h1>회원정보수정</h1>
	<form action="memberupdate.do" method="post">
		<!-- 최근 접속일 : <input type="text" name="recent" readonly value="${dto.m_recent }"><br>-->
		아 이 디 : <input type="text" name="id" readonly value = "${dto.m_id }"><br>
		비밀번호 : <input type="password" name="pwd" value="${dto.m_pwd }"><br>
		이	름 : <input type="text" name="name" value="${dto.m_name }"><br>
		E-Mail : <input type="text" name="mail" value="${dto.m_email }"><br>
		<!-- 생	일 : <input type="date" name="birth" value="${dto.m_birth }"><br>-->
		연 락 처 : <input type="text" name="phone" value="${dto.m_phone }"><br>
		우편번호 : <input type="text" name="zip" value="${dto.m_zip }"><br>
		주	소 : <input type="text" name="add1" value="${dto.m_add1 }"><br>
		상세 주소 : <input type="text" name="add2" value="${dto.m_add2 }"><br>
		권한정보 : <input type="text" name="au" readonly value="${dto.m_au }"><br>
		<h5>권한 : 211 관리자 / 210 일반 회원</h5><br>
		상태정보 : <input type="text" name="status" value="${dto.m_status }"><br>
		<h5>상태 : 060 활성화 계정 / 061 휴먼 계정</h5><br>
		포 인 트 : <input type="text" name="point" value="${dto.m_point }"><br>
		성	별 : <input type="text" name="sex" readonly value="${dto.m_sex }"><br>
		<input type="submit" value="수정">
	</form>
	<%}else{ %>
	${result }<p>
	<%} %>
</body>
</html>
	
	<!-- 
		<p>
			<label for="m_id">I D : ${m_id}</label> <input type="hidden"
				name="m_id" value="${m_id}">
		</p>
		<p>
			<label for="m_pwd">패스워드 :</label> <input type="text" id="m_pwd"
				name="pwd" size="20" value="${m_pwd}">
		</p>
		<p>
			<label for="m_name">이름 :</label> <input type="text" id="m_name"
				name="name" size="20" value="${m_name}">
		</p>
		<p>
			<label for="m_birth">생일 :</label> <input type="text" id="m_birth"
				name="name" size="20" value="${m_name}">
		</p>
		<p>
			<label for="m_email">email :</label> <input type="text" id="m_email"
				name="email" size="20" value="${m_email}">
		</p>
		<p>
			<label for="m_phone">연락처 :</label> <input type="text" id="m_phone"
				name="phone" size="20" value="${m_phone}">
		</p>
		<p>
			<label for="m_zip">우편번호 :</label> <input type="text" id="m_zip"
				name="phone" size="20" value="${m_zip}">
		</p>
		<p>
			<label for="m_addr1">주소 :</label> <input type="text" id="m_addr1"
				name="addr1" size="20" value="${m_addr1}">
		</p>
		<p>
			<label for="m_addr2">상세주소 :</label> <input type="text" id="m_addr2"
				name="addr2" size="20" value="${m_addr2}">
		</p>
		<p>
			<label for="m_grade">등급 :</label> <input type="text" id="m_grade"
				name="grade" size="20" value="${m_grade}">
		</p>
		<p>
			<label for="m_status">상태 :</label> <input type="text" id="m_status"
				name="status" size="20" value="${m_status}">
		</p>
		</p>
		<p>
			<label for="m_point">적립금 :</label> <input type="text" id="m_point"
				name="point" size="20" value="${m_point}">
		</p>
		</p>
		<p>
			<label for="m_recent">최근 접속일 :</label> <input type="text"
				id="m_recent" name="recent" size="20" value="${m_recent}">
		</p>
		<p>
			<label for="m_sex">성별 :</label> <input type="text"
				id="m_sex" name="sex" size="20" value="${m_sex}">
		</p>
		<p>
			<c:choose>
				<c:when test="${m_id== kjw123 || m_au=='211'}">
					<label for="admin">관리자</label>
					<input type="radio" id="admin" name="admin" value="0" checked>
					<label for="normal">일반</label>
					<input type="radio" id="normal" name="admin" value="1">
				</c:when>
				<c:otherwise>
					<label for="admin">관리자</label>
					<input type="radio" id="admin" name="admin" value="0">
					<label for="normal">일반</label>
					<input type="radio" id="normal" name="admin" value="1" checked>
				</c:otherwise>
			</c:choose>
		</p>
		<input type="submit" value="확인">
		-->


