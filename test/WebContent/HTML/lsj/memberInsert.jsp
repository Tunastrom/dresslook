<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<script type="text/javascript">
	// 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
	function checkValue() {
		if (!document.userInfo.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}

		if (!document.userInfo.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}

		// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
		if (document.userInfo.password.value != document.userInfo.passwordcheck.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
		if (!document.userInfo.name.value) {
			alert("이름을 입력하세요.");
			return false;
		}
		if (!document.userInfo.email.value) {
			alert("Email을 입력하세요.");
			return false;
		}
		if (!document.userInfo.pnum.value) {
			alert("휴대전화번호를 입력하세요.");
			return false;
		}
		if (!document.userInfo.zip.value) {
			alert("우편번호를 입력하세요.");
			return false;
		}
		if (!document.userInfo.addr1.value) {
			alert("주소1을 입력하세요.");
			return false;
		}
		if (!document.userInfo.addr2.value) {
			alert("주소2을 입력하세요.");
			return false;
		}
		if (!document.userInfo.birth.value) {
			alert("생년월일을 입력하세요.");
			return false;
		}
	}

	// 취소 버튼 클릭시 로그인 화면으로 이동
	function goLoginForm() {
		location.href = "LoginForm.jsp";
	}
</script>

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
							<form action="login.do" method="post" name="loginInfo"
								onsubmit="return checkValue()">
								<div class="form-group float-label active">
									<input type="text" class="form-control " id="id" name="id">
									<label class="form-control-label">Id</label>
								</div>

								<div class="form-group float-label">
									<input type="password" class="form-control" id="password"
										name="password"> <label class="form-control-label">비밀번호</label>
								</div>
								<div class="form-group float-label">
									<input type="password" class="form-control" id="passwordcheck"
										name="passwordcheck"> <label
										class="form-control-label">비밀번호 확인</label>
								</div>
								<div class="form-group float-label active">
									<input type="text" class="form-control " id="name" name="name">
									<label class="form-control-label">이름</label>
								</div>
								<div class="form-group float-label active">
									<input type="text" class="form-control " id="email"
										name="email"> <label class="form-control-label">Email</label>
								</div>
								<div class="form-group float-label active">
									<input type="tel" class="form-control " id="pnum" name="pnum"
										pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" maxlength="13" required>
									<label class="form-control-label">휴대전화번호</label>
								</div>
								<div class="form-group float-label active">
									<input type="text" class="form-control " id="zip" name="zip">
									<label class="form-control-label">우편번호</label>
								</div>
								<div class="form-group float-label active">
									<input type="text" class="form-control " id="addr1"
										name="addr1"> <label class="form-control-label">주소1</label>
								</div>
								<div class="form-group float-label active">
									<input type="text" class="form-control " id="addr2"
										name="addr2"> <label class="form-control-label">주소2</label>
								</div>
								<div class="form-group float-label active">
									<input type="text" class="form-control " id="birth"
										name="birth"> <label class="form-control-label">생년월일</label>
								</div>

								<div class="form-group float-label active">
									<p>성별</p>
									<div class="input-group mb-3">
										<div class="input-group-prepend">
											<div class="input-group-text">
												<input type="radio" id="gender" name="gender" value="050"
													aria-label="Radio button for following text input">
												남 <input type="radio" id="gender" name="gender" value="051"
													aria-label="Radio button for following text input">
												여
											</div>
										</div>
									</div>
									<div class="form-group float-label active">

										<input type="checkbox" name="vehicle1" value="Bike">
										전체동의<br> <input type="checkbox" name="vehicle2"
											value="Car"> 이용약관<br> <input type="checkbox"
											name="vehicle3" value="Boat" checked> 개인정보 이용동의(필수)<br>
										<label class="form-control-label">이용약관</label>
									</div>


								</div>


								<input type="submit"
									class="btn btn-lg btn-default btn-block my-4" value="Sign up">
								<input type="button"
									class="btn btn-lg btn-default btn-block my-4" value="취소"
									onclick="location.href='login.do'">

							</form>
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
