<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<script type="text/javascript">
	// 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
  
<%-- 	$('#id').blur(function(){
            //AJAX로 아이디 중복 구현
            var id = $('#id').val().trim();
            $.ajax({
                url:"<%=request.getContextPath()%>/member/overlapCheck",
                //key : value 방식으로 보냄
                data:{"searchId":id},
                Type:"get",
                success:function(data){
                    var id = data;
                    //서블릿에서 보내는 데이터는 data로 받는다.
                    //보낸 id가 존재하면 특정 값을 보내고, 중복되지 않으면 ""이 보내짐
                    console.log("ajax반환값 : "+data);
                    //id가 중복이면 길이값이 1보다 클 것이기에 아래와 같은 조건을 줌
                    if(id.length>1){
                        //input 옆 공간에 중복된 아이디가 존재한다고 알려줌
                        $('#id_check').html("중복된 아이디가 존재합니다.");
                        
                    }else{
                        //테두리를 파란색으로 지정해 문제없음을 알림
                        $('#id_check').css("border","4px solid blue");
                        //중복된 아이디가 존재한다는 문구를 지워줌    
                        $('#id_check').html("");
                    }
                }
            });
        });
    	
 --%>
	
	function checkValue() {
			if (!document.loginInfo.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}

		// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
		if (document.loginInfo.password.value != document.userInfo.passwordcheck.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
		if (!document.loginInfo.name.value) {
			alert("이름을 입력하세요.");
			return false;
		}
		if (!document.loginInfo.email.value) {
			alert("Email을 입력하세요.");
			return false;
		}
		if (!document.loginInfo.pnum.value) {
			alert("휴대전화번호를 입력하세요.");
			return false;
		}
		if (!document.loginInfo.zip.value) {
			alert("우편번호를 입력하세요.");
			return false;
		}
		if (!document.loginInfo.addr1.value) {
			alert("주소1을 입력하세요.");
			return false;
		}
		if (!document.loginInfo.addr2.value) {
			alert("주소2을 입력하세요.");
			return false;
		}
		if (!document.loginInfo.birth.value) {
			alert("생년월일을 입력하세요.");
			return false;
		}
		if (isNaN(loginInfo.birth.value)) {
			alert("년도는 숫자만 입력가능합니다.");
			return false;
			
			location.href='/memberInsertOk.do';
			
		}
	}
	//아이디 중복체크 확인
	function openIdChk() {
		window.name = "parentFrom";
		window.open("IdCheck.do", "chkForm",
				"width=500, height=300, resizable =no, scrollbars = no");

	}
	//아이디 입력창에 값 입력시 hidden에 idUncheck를 세팅한다.
	//중복체크 후 다시 아이디 창이 새로운 아이디를 입력했을 때 다시 중복체크를 하도록 한다.
	function inputIdChk() {
		document.loginInfo.idDuplication.value = "idUncheck";
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
							<form action="/memberInsertOk.do" method="get" name="loginInfo"
								onsubmit="return checkValue()">
								<div class="form-group float-label active">
									<input type="text" class="form-control " id="id" name="id">
									<label class="form-control-label">Id</label> 
									<div class="check_font" id="id_check">
									</div>
									<input
										type="button" value="중복확인" onclick="openIdChk()"> <input
										type="hidden" name="idDuplication" value="idUncheck">
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

	<!-- page content ends -->



</body>

</html>
