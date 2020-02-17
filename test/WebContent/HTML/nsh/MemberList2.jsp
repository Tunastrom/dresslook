<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/HTML/assets/js/jquery-3.3.1.min.js"></script>
<script>
	var trs =null;
	$(document).ready(function(){
		trs = document.querySelectorAll("tr");
		trs[1].addEventListener("click",function(){
			var log = trs[1].children[0].innerText;
			console.log(log);	
		});
	});
</script>
</head>
<body>
	<div align="center" id="dv">
	<br />
		<h1>회원 목록</h1>
		<table class="table table-hover" border="1">
			<tr>
				<th scope="col">ID</th>
			    <th scope="col">이 름</th>
				<th scope="col">패스워드</th>
				<th scope="col">생일</th>
				<th scope="col">주 소1</th>
				<th scope="col">주 소2</th>
				<th scope="col">우편번호</th>
				<th scope="col">연 락 처</th>
				<th scope="col">등 급</th>
				<th scope="col">상 태</th>
				<th scope="col">적립금</th>
				<th scope="col">성 별</th>
				<th scope="col">최근 접속일</th>
			</tr>
			<tr>
				<td>kim minju</td>
				<td>kim minju</td>
				<td>kim minju</td>
				<td>kim minju</td>
				<td>kim minju</td>
				<td>${dto.m_addr2 }</td>
				<td>${dto.m_zip }</td>
				<td>${dto.m_phone }</td>
				<td>${dto.m_grade }</td>
				<td>${dto.m_status }</td>
				<td>${dto.m_point }</td>
				<td>${dto.m_sex }</td>
				<td>${dto.recent_connection }</td>
			</tr>				
			<c:forEach var="dto" items="${list}">
			<tr>
				<td>${dto.m_id }</td>
				<td>${dto.m_name }</td>
				<td>${dto.m_pwd }</td>
				<td>${dto.m_birth }</td>
				<td>${dto.m_addr1 }</td>
				<td>${dto.m_addr2 }</td>
				<td>${dto.m_zip }</td>
				<td>${dto.m_phone }</td>
				<td>${dto.m_grade }</td>
				<td>${dto.m_status }</td>
				<td>${dto.m_point }</td>
				<td>${dto.m_sex }</td>
				<td>${dto.recent_connection }</td>
			</tr>			
			</c:forEach>
			
		</table>
	</div>
</body>
</html>