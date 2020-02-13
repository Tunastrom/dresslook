<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>


</head>

<body>



	<!-- page content starts -->
	<div class="has-background bg-default-light">
		<div class="login-container">
			<div class="row no-gutters">
				<div class="col-12 align-self-start header">
					<div class="row">
						<div class="col">
							<div class="logo-header">
								
								</h5>
							</div>
						</div>
						<div class="col-auto">
							<a href="Login.do" class="btn">Sign in</a>
						</div>
					</div>
				</div>
				<div class="col-12 align-self-center">
					<div class="row justify-content-center">
						<div class="col-11 col-sm-7 col-md-6 col-lg-5 col-xl-3">
							<h1 class="text-center font-weight-normal mb-5">회원정보</h1>


							<div class="form-group float-label">
								<input type="password" class="form-control"> <label
									class="form-control-label">비밀번호</label>
							</div>
							<div class="form-group float-label">
								<input type="password" class="form-control"> <label
									class="form-control-label">비밀번호 확인</label>
							</div>
							<div class="form-group float-label active">
								<input type="text" class="form-control " value="${name }"> <label
									class="form-control-label" >이름</label>
							</div>
							<div class="form-group float-label active">
								<input type="text" class="form-control " value="${email }"> <label
									class="form-control-label" >Email</label>
							</div>
							<div class="form-group float-label active">
								<input type="tel" class="form-control "
									pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" maxlength="13" required value="${phone }">
								<label class="form-control-label" >휴대전화번호</label>
							</div>
							<div class="form-group float-label active">
								<input type="text" class="form-control " value="${zipcode }"> <label
									class="form-control-label">우편번호</label>
							</div>
							<div class="form-group float-label active">
								<input type="text" class="form-control " value="${addr1 }"> <label
									class="form-control-label">주소1</label>
							</div>
							<div class="form-group float-label active">
								<input type="text" class="form-control " value="${addr2 }"> <label
									class="form-control-label">주소2</label>
							</div>
							<div class="form-group float-label active">
								<input type="text" class="form-control " value="${bDate }"> <label
									class="form-control-label">생년월일</label>
							</div>



						</div>


						<a href="memberLogin.jsp"
							class="btn btn-lg btn-default btn-block my-4">수정</a>
					</div>
				</div>
			</div>
			<div class="col-12 align-self-end mb-4 text-center">
				Already have account?<br> <a href="memberLogin.jsp"
					class="text-dark font-weight-bold">로그인</a>
			</div>
		</div>
	</div>

	<!-- page content ends -->



</body>

</html>
