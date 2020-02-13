<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>


</head>

<body class="ui-rounded sidebar-fill header-fill">



	<!-- page content starts -->
	<div class="has-background bg-default-light">
		<div class="login-container">
			<div class="row no-gutters">
				<div class="col-12 align-self-start header">
					<div class="row">
						<div class="col">
							<div class="logo-header">
								<img src="../assets/img/logo-small.svg" alt="" class="logo-img">
								<h5 class="logo-header-text">
									Mobileshop<br> <small>Mobile HTML template</small>
								</h5>
							</div>
						</div>
						<div class="col-auto">
							<a href="memberLogin.jsp" class="btn">Sign in</a>
						</div>
					</div>
				</div>
				<div class="col-12 align-self-center">
					<div class="row justify-content-center">
						<div class="col-11 col-sm-7 col-md-6 col-lg-5 col-xl-3">
							<h1 class="text-center font-weight-normal mb-5">회원가입</h1>

							<div class="form-group float-label active">
								<input type="text" class="form-control "> <label
									class="form-control-label">Id</label>
							</div>

							<div class="form-group float-label">
								<input type="password" class="form-control"> <label
									class="form-control-label">비밀번호</label>
							</div>
							<div class="form-group float-label">
								<input type="password" class="form-control"> <label
									class="form-control-label">비밀번호 확인</label>
							</div>
							<div class="form-group float-label active">
								<input type="text" class="form-control "> <label
									class="form-control-label">이름</label>
							</div>
							<div class="form-group float-label active">
								<input type="text" class="form-control "> <label
									class="form-control-label">Email</label>
							</div>
							<div class="form-group float-label active">
								<input type="tel" class="form-control "
									pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" maxlength="13" required>
								<label class="form-control-label">휴대전화번호</label>
							</div>
							<div class="form-group float-label active">
								<input type="text" class="form-control "> <label
									class="form-control-label">우편번호</label>
							</div>
							<div class="form-group float-label active">
								<input type="text" class="form-control "> <label
									class="form-control-label">주소1</label>
							</div>
							<div class="form-group float-label active">
								<input type="text" class="form-control "> <label
									class="form-control-label">주소2</label>
							</div>
							<div class="form-group float-label active">
								<input type="text" class="form-control "> <label
									class="form-control-label">생년월일</label>
							</div>

							<div class="form-group float-label active">
								<p>성별</p>
								<div class="input-group mb-3">
									<div class="input-group-prepend">
										<div class="input-group-text">
											<input type="radio" name="gender" value="male"
												aria-label="Radio button for following text input">
										</div>
									</div>
									<input type="text" class="form-control"
										aria-label="Text input with radio button" value="남" readonly>
								</div>
								<div class="input-group mb-3">
									<div class="input-group-prepend">
										<div class="input-group-text">
											<input type="radio" name="gender" value="female"
												aria-label="Radio button for following text input">
										</div>
									</div>
									<input type="text" class="form-control"
										aria-label="Text input with radio button" value="여" readonly>
								</div>



								<div class="form-group float-label active">

									<input type="checkbox" name="vehicle1" value="Bike">
									전체동의<br> <input type="checkbox" name="vehicle2"
										value="Car"> 이용약관<br> <input type="checkbox"
										name="vehicle3" value="Boat" checked> 개인정보 이용동의(필수)<br>
									<label class="form-control-label">이용약관</label>
								</div>


							</div>


							<a href="memberLogin.jsp"
								class="btn btn-lg btn-default btn-block my-4">Sign up</a>
						</div>
					</div>
				</div>
				<div class="col-12 align-self-end mb-4 text-center">
					Already have account?<br> <a href="memberLogin.jsp"
						class="text-dark font-weight-bold">Sign in</a> here.
				</div>
			</div>
		</div>
	</div>

	<!-- page content ends -->



</body>

</html>
