<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">

<head>
<script type="text/javascript">
	function checkValue() {
		inputForm = eval("document.loginInfo");
		if (!inputForm.id.value) {
			alert("아이디를 입력하세요");
			inputForm.id.focus();
			return false;
		}
		if (!inputForm.pwd.value) {
			alert("비밀번호를 입력하세요");
			inputForm.pwd.focus();
			return false;
		}
	}

	// 회원가입 버튼 클릭시 회원가입 화면으로 이동
	/*function goJoinForm() {
		location.href = "JoinForm.jsp";
	}*/
</script>


</head>

<body>



	<!-- page content starts -->
	<div class="has-background bg-default">
		<figure class="background opacity-30">
			<img
				src="${pageContext.request.contextPath}/HTML/assets/img/image10.jpg"
				alt="">
		</figure>

		<div class="login-container">
			<div class="row no-gutters">
				<div class="col-12 align-self-start header">
					<div class="row">
						<div class="col">
							<div class="logo-header"></div>
						</div>
						<div class="col-auto">
							<a href="memberLogin.jsp" class="btn text-white">Signup</a>
						</div>
					</div>
				</div>

				<div class="col-12 align-self-center">
					<div class="row justify-content-center">

						<div class="col-11 col-sm-7 col-md-6 col-lg-5 col-xl-3">
							<form action="loginOk.do" method="post" name="loginInfo"
								onsubmit="return checkValue()">
								<h1 class="text-center font-weight-normal mb-5">Login</h1>

								<div
									class="form-group float-label style-light position-relative">
									<div class="bottom-right mb-2   ">
										<a href="forgotid.jsp" class="text-white">Forgot?</a>
									</div>
									<input type="text" class="form-control " id="id" name="id">
									<label class="form-control-label">Id</label>
								</div>
								<div
									class="form-group float-label style-light position-relative">
									<div class="bottom-right mb-2   ">
										<a href="forgotpassword.jsp" class="text-white">Forgot?</a>
									</div>
									<input type="password" class="form-control " id="pwd"
										name="pwd"> <label class="form-control-label">Password</label>
								</div>
								<input type="submit" class="btn btn-lg btn-white btn-block my-4"
									value="로그인">
								<input type="button" class="btn btn-lg btn-white btn-block my-4" value="회원가입" onclick="location.href='memberSelect.do'" >
							</form>
						</div>

					</div>
				</div>

				<div class="col-12 align-self-end mb-4 text-center">
					Don't have account yet?<br> <a href="memberInsert.do"
						class="text-white font-weight-bold">Sign up</a> here.
				</div>
			</div>
		</div>
	</div>
	<!-- page content ends -->


</body>

</html>
