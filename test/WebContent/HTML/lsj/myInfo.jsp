<%@ page import="dto.MemberDto"%>
<%@ page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>

<html lang="en">

<head>
<script>
	$(document).ready(function() {
		$("#updatebtn").click(function() {
			document.frm.action = "memberupdateCk.do";
			document.fem.submit();
		});

	});
</script>

</head>

<body>


	<form id="frm" method="post">
		<!-- page content starts -->
		<div class="has-background bg-default-light">


			<div class="col-12 align-self-center">
				<div class="row justify-content-center">
					<div class="col-11 col-sm-7 col-md-6 col-lg-5 col-xl-3">
						<h1 class="text-center font-weight-normal mb-5">회원정보</h1>
						<c:forEach var="dto" items="${list }">
							<div class="form-group float-label active">
								<input type="text" class="form-control " value="${dto.m_name }">
								<label class="form-control-label">이름</label>
							</div>
							<div class="form-group float-label active">
								<input type="text" class="form-control " value="${dto.m_email }">
								<label class="form-control-label">Email</label>
							</div>
							<div class="form-group float-label active">
								<input type="tel" class="form-control "
									pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" maxlength="13" required
									value="${dto.m_phone }"> <label
									class="form-control-label">휴대전화번호</label>
							</div>
							<div class="form-group float-label active">
								<input type="text" class="form-control "
									value="${dto.m_zipcode }"> <label
									class="form-control-label">우편번호</label>
							</div>
							<div class="form-group float-label active">
								<input type="text" class="form-control " value="${dto.m_addr1 }">
								<label class="form-control-label">주소1</label>
							</div>
							<div class="form-group float-label active">
								<input type="text" class="form-control " value="${dto.m_addr2 }">
								<label class="form-control-label">주소2</label>
							</div>
							<div class="form-group float-label active">
								<input type="text" class="form-control " value="${dto.m_birth }">
								<label class="form-control-label">생년월일</label>
							</div>
						</c:forEach>


					</div>


					<a href="memberupdatck.do" id="updaatebtn"
						class="btn btn-lg btn-default btn-block my-4">수정</a>
				</div>
			</div>
		</div>
		<div class="col-12 align-self-end mb-4 text-center">
			Already have account?<br> <a href="login.do"
				class="text-dark font-weight-bold">로그인</a>
		</div>
	</form>
	<!-- page content ends -->



</body>

</html>
