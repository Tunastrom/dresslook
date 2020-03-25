<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<script type="text/javascript">
	// 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
	function registerCheckFunction() {
		//id가 userID인 variable을 저장
		var userID = $('#userID').val();
		//ajax : jquery안에 포함되어있는 것
		$.ajax({
			type : 'POST',
			url : './ajax/registerCheck.do', //여기로 가서 function을 실행할꺼에요
			data : {
				userID : userID
			},
			success : function(result) { //result를 받아올꺼죠
				if (result == 1) {
					$('#idcheck1').html("you can use this ID"); //이 id 값에다가 저장해주세요
					
				} else {
					$('#idcheck1').html("you can not use this ID");
					
				}
				
			}
		})
	}
	//passwordCheckFunction -> PasswordCheck를 하여 실시간으로 뿌려주는 것입니다.
	function passwordCheckFunction() {
		var userPassword1 = $('#userPassword1').val();
		var userPassword2 = $('#userPassword2').val();
		if (userPassword1 != userPassword2) {
			$('#passwordCheckMessage').html("비밀번호가 일치하지 않습니다");
		} else {
			$('#passwordCheckMessage').html("");
		}
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
							<form action="/memberInsertOk.do" method="post" name="loginInfo">
								<div class="form-group float-label active">
									<div class="idcheck1"></div>
									<input type="text" class="form-control" id="userID"
										name="userID"> <label class="form-control-label">Id</label>
									<button type="button" value="중복확인"
										onclick="registerCheckFunction();">ID check</button>
								</div>

								<div class="form-group float-label">
									<input type="password" class="form-control" id="userPassword1"
										name="userPassword1" onkeyup="passwordCheckFunction();">
									<label class="form-control-label">비밀번호</label>
								</div>
								<div class="form-group float-label">
									<input type="password" class="form-control" id="userPassword2"
										name="userPassword2" onkeyup="passwordCheckFunction();">
									<label class="form-control-label">비밀번호 확인</label>
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
													aria-label="Radio button for following text input"
													checked="checked"> 남 <input type="radio"
													id="gender" name="gender" value="051"
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
	<%
		//messageContent라는 String이 있습니다
		//session에서 messageContent를 가져온 이후 그것이 null이 아니라면
		//session에서 가져온 messageContent를 현재 변수에 저장해줍니다
		//messageType도 똑같습니다
		String messageContent = null;
		if (session.getAttribute("messageContent") != null) {
			messageContent = (String) session.getAttribute("messageContent");
		}
		String messageType = null;
		if (session.getAttribute("messageType") != null) {
			messageType = (String) session.getAttribute("messageType");
		}
		if (messageContent != null) {
			//가져온 messageContent가 있다면 modal로 popup창을 만들어줘야합니다.
	%>
	<div class="modal fade" id="messageModal" tableindex="-1" role="dialog"
		aria-hidden="true">
		<div class="vertical-alignment-helper">
			<div class="modal-dialog vertical-align-center">
				<div
					class="modal-content
                <!-- div의 class에 지정해주는데 messageType에 따라서 modal색을 다르게 해주고 싶기 때문에 이렇게 코드를 짭니다 -->
                <%if (messageType.equals("오류 메시지"))
					out.println("panel-warning");
				else
					out.println("panel-success");%>">
					<div class="modal-header panel-heading">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">×</span> <span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title">
							<%=messageType%>
						</h4>
					</div>
					<div class="modal-body">
						<%=messageContent%>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		//div class안의 messageModal
		$('#messageModal').modal("show");
	</script>
	<%
		//다 끝나면 Attribute를 삭제해줘야함
			session.removeAttribute("messageContent");
			session.removeAttribute("messageType");
		}
	%>
	<div class="modal fade" id="checkModal" tableindex="-1" role="dialog"
		aria-hidden="true">
		<div class="vertical-alignment-helper">
			<div class="modal-dialog vertical-align-center">
				<div id="checkType" class="modal-content panel-info">
					<div class="modal-header panel-heading">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">×</span> <span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title">Check Message</h4>
					</div>
					<!-- 여기에 비밀번호가 일치하는지 하지 않는지를 실시간으로 나타내줌 -->
					<!-- 이것이 모달이라니! 알아두자 -->
					<div class="modal-body" id="checkMessage"></div>
				</div>
			</div>
		</div>
	</div>



	<!-- page content ends -->



</body>

</html>