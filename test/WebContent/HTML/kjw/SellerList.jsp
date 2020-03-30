<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	var trs = null;
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

			trs[i].children[14].addEventListener("click", function() {
					console.log(this.children[0].innerText);
					var Id = this.children[0].innerText;
					frm.action = "updatem.do";
					frm.config.value = Id;
					frm.submit();
			});
		}


	});
</script>

</head>
<body>

	<div align="center" id="dv">
		<br />
		<h1>판매 회원 관리</h1>
		<form name="frm" id="frm" action="" method="post">
		<!-- 휴면 계정 변경부 삭제기능은 없음 -->
			<input type="hidden" name="config" value="">
			<input type="hidden" name="tag" value="0">
			<table class="table table-hover" id="ttd">
				<tr>
					<th scope="col">I   D</th>
					<th scope="col">상  호</th>
					<th scope="col">EMAIL</th>
					<th scope="col">사업자번호</th>
					<th scope="col">연 락 처</th>
					<th scope="col">우편번호</th>
					<th scope="col">주   소1</th>
					<th scope="col">주   소2</th>
					<th scope="col">판매자등급</th>
				</tr>
				<c:forEach var="dto" items="${list}">
					<tr>
						<td>${dto.s_id }</td>
						<td>${dto.s_cname }</td>
						<td>${dto.s_email }</td>
						<td>${dto.c_number }</td>
						<td>${dto.phone }</td>
						<td>${dto.s_zip }</td>
						<td>${dto.s_addr1 }</td>
						<td>${dto.s_addr2 }</td>
						<td>${dto.s_grade }</td>
						<td><button>휴먼계정처리</button></td>
				
						<td><button>수정</button></td>
					</tr>
				</c:forEach>
			</table>
		</form>
	</div>
</body>
</html>