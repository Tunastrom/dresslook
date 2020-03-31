<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	/*var trs = null;
	$(document).ready(function() {
		trs = document.querySelectorAll("tr");
		for (i = 1; i < trs.length; i++) {
			trs[i].children[13].addEventListener("click", function() {
				var r = confirm("선택한 회원정보를 휴먼 계정으로 바꾸시겠습니까?");
				if (r == true) {
					console.log(this.children[0].innerText);
					var Id = this.children[0].innerText;
					frm.action = "memberdelete.do"
					frm.config.value = Id;
					frm.submit();
				}
			});

		}


	});
	
 window.addEventListener("load", function(){

	$("input").on("click", function() {
		$.ajax({
			type : "post",
			url : "/track.do",
			dataType : "ajax",
			error : function() {
				alert("조회 실패");
			},
			success : function(Parse_data) {
				$("#Parse_Area").html(Parse_data);
				alert("조회 값" + Parse_data)
			}
	});
})*/
function transData(n) {
	frm.id.value = n;
	frm.submit();
}
	
function deleteData(n) {
	frm.del.value = n;
	frm.submit();
}


</script>

</head>
<body>
	<div align="center" id="dv">
		<br />
		<h1>회원 관리</h1>
		<form name="frm" id="frm" action="memberRead.do" method="post">
		<!-- 휴면 계정 변경부 삭제기능은 없음 -->
			<input type="hidden" name="config" value="">
			<input type="hidden" name="tag" value="0">
			<table class="table table-hover" id="ttd">
				<tr>
					<th scope="col">ID</th>
					<th scope="col">이 름</th>
					<th scope="col">생일</th>
					<th scope="col">가입일</th>
					<th scope="col">우편번호</th>
					<th scope="col">주 소1</th>
					<th scope="col">주 소2</th>	
					<th scope="col">연 락 처</th>
					<th scope="col">등 급</th>
					<th scope="col">상 태</th>
					<th scope="col">적립금</th>
					<th scope="col">성 별</th>
					<th scope="col">최근 접속일</th>
					<th scope="col">휴면 계정 처리</th>
					<th scope="col">회원 정보 수정</th>
				</tr>
				<c:forEach var="dto" items="${list}">
					<tr>
						<td>${dto.m_id }</td>
						<td>${dto.m_name }</td>
						<td>${dto.m_birth }</td>
						<td>${dto.m_join }</td>
						<td>${dto.m_zip }</td>
						<td>${dto.m_add1 }</td>
						<td>${dto.m_add2 }</td>
						<td>${dto.m_phone }</td>
						<td>${dto.m_grade }</td>
						<td>${dto.m_status }</td>
						<td>${dto.m_point }</td>
						<td>${dto.m_sex }</td>
						<td>${dto.m_recent }</td>
						<td><button id="del" name="del" value="${dto.m_id}" formaction="memberDeleteOne.do">회원삭제</button></td>
					<!-- <td><a href="delM.do?m_id=${dto.m_id }">삭제</a></td>-->
						<td>
						<button id="id" name="id" value="${dto.m_id}" onclick="transData(${dto.m_id})">수정하기</button></td>
					</tr>
				</c:forEach>
			</table>
		</form>
	</div>
</body>
</html>