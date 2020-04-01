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

			trs[i].children[14].addEventListener("click", function() {
					console.log(this.children[0].innerText);
					var Id = this.children[0].innerText;
					frm.action = "updatem.do";
					frm.config.value = Id;
					frm.submit();
			});
		}


	});*/
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
		<h1>판매 회원 관리</h1>
		<DIV class='aside_menu'>
			<FORM name='frm2' method='post' action='sellerList.do'>
				<ASIDE style='float: right;'>
					<SELECT name='col'>
						<!-- 검색 컬럼 -->
						<OPTION value='none'>전체 목록</OPTION>
						<OPTION value='rname'>상 호</OPTION>
						<OPTION value='title'>id</OPTION>
						<OPTION value='code'>사업자번호</OPTION>
					</SELECT> <input type='text' name='word' value=''
						placeholder="특수문자는 사용할수 없습니다.">
					<button type='submit'>검색</button>
				</ASIDE>
			</FORM>
			<DIV class='menu_line' style='clear: both;'></DIV>
		</DIV>
		<form name="frm" id="frm" action="sellerRead.do" method="post">
			<!-- 휴면 계정 변경부 삭제기능은 없음 -->
			<input type="hidden" name="config" value=""> <input
				type="hidden" name="tag" value="0">
			<table class="table table-hover" id="ttd">
				<tr>
					<th scope="col">I D</th>
					<th scope="col">상 호</th>
					<th scope="col">EMAIL</th>
					<th scope="col">사업자번호</th>
					<th scope="col">연 락 처</th>
					<th scope="col">우편번호</th>
					<th scope="col">주 소1</th>
					<th scope="col">주 소2</th>
					<th scope="col">판매자등급</th>
					<th scope="col">회원 정보 삭제</th>
					<th scope="col">회원 정보 수정</th>
				</tr>
				<c:forEach var="dto" items="${list}">
					<tr>
						<td>${dto.s_id }</td>
						<td>${dto.s_cname }</td>
						<td>${dto.s_email }</td>
						<td>${dto.c_number }</td>
						<td>${dto.s_phone }</td>
						<td>${dto.s_zip }</td>
						<td>${dto.s_addr1 }</td>
						<td>${dto.s_addr2 }</td>
						<td>${dto.s_grade }</td>
						<td><button id="del" name="del" value="${dto.s_id}"
								formaction="sellerDelete.do">회원삭제</button></td>
						<td>
							<button id="id" name="id" value="${dto.s_id}"
								onclick="transData(${dto.s_id})">수정하기</button>
					</tr>
				</c:forEach>
			</table>
		</form>
	</div>
</body>
</html>