<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.MemberDao" %>    
<%@ page import="dto.MemberDto" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<html>
<head>
	<title>회원정보 수정화면</title>
	
</head>
<body>
<h1>회원 정보 수정</h1>
<form action="updateM.do" method="get">

        <p>
            <label for="uId">I D : ${m_id}</label>
            <input type="hidden" name="id" value="${m_id}">
        </p>
        <p>
            <label for="uPwd">패스워드 :</label>
            <input type="text" id="uPwd" name="pwd" size="20" value="${m_pwd}">
        </p>
        <p>
            <label for="uName">이름 :</label>
            <input type="text" id="uName" name="name" size="20" value="${m_name}">
        </p>
        <p>
            <label for="uEmail">email :</label>
            <input type="text" id="uEmail" name="email" size="20" value="${m_email}">
        </p>
        <p>
            <label for="uPhone">전화번호 :</label>
            <input type="text" id="uPhone" name="phone" size="20" value="${m_phone}">
        </p>
        <p>
        <c:choose>
            <c:when test="${m_au=='211'}">
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
        <input type ="submit" value="제출">
    </form>
</body>
</html>


