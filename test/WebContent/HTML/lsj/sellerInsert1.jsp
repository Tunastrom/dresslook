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
							<a href="loginSelect.do" class="btn">Sign in</a>
						</div>
					</div>
				</div>
				<div class="col-12 align-self-center">
					<div class="row justify-content-center">
						<div class="col-11 col-sm-7 col-md-6 col-lg-5 col-xl-3">
							<h2 class="text-center font-weight-normal mb-5">
								Dress Look
							</h2>

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
									class="form-control-label">회사명</label>
							</div>
							<div class="form-group float-label active">
								<input type="text" class="form-control "> <label
									class="form-control-label">Email</label>
							</div>
							<div class="form-group float-label active">
								<input type="text" id="bizNum" name="bizNum" maxlength="12"
									class="form-control "> <label
									class="form-control-label">사업자 등록번호<span>"10자리"</span></label>
							</div>

							<div class="form-group float-label active">
								<input type="tel" class="form-control "
									pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" maxlength="13" required>
								<label class="form-control-label">담당자전화번호</label>
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

								<input type="checkbox" name="vehicle1" value="Bike">
								전체동의<br> <input type="checkbox" name="vehicle2" value="Car">
								이용약관<br> <input type="checkbox" name="vehicle3"
									value="Boat" checked> 개인정보 이용동의(필수)<br> <label
									class="form-control-label">이용약관</label>
							</div>


						</div>


						<a href="loginSelect.do" class="btn btn-lg btn-default btn-block my-4">Sign
							up</a>
					</div>
				</div>
			</div>
			<div class="col-12 align-self-end mb-4 text-center">
				Already have account?<br> <a href="loginSelect.do"
					class="text-dark font-weight-bold">Sign in</a> here.
			</div>
		</div>
	</div>

	<!-- page content ends -->


</body>

</html>
