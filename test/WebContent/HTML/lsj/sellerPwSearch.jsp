<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">

<head>
   

</head>

<body>
    
    <!-- page content starts -->
    <div>

        <div class="login-container">
            <div class="row no-gutters">
                <div class="col-12 align-self-start header">
                    <div class="row">
                        <div class="col">
                            <div class="logo-header">
                                <img src="${pageContext.request.contextPath}/HTML/assets/img/logo-small.svg" alt="" class="logo-img">
                                <h5 class="logo-header-text">Mobileshop<br><small>Mobile HTML template</small></h5>
                            </div>
                        </div>
                        <div class="col-auto">
                            <a href="memberLogin.jsp" class="btn">회원가입</a>
                        </div>
                    </div>
                </div>
                <div class="col-12 align-self-center">
                    <div class="row justify-content-center">
                        <div class="col-11 col-sm-7 col-md-6 col-lg-5 col-xl-3 text-center">
                            <h1 class="text-center font-weight-normal mb-3">비밀번호 찾기</h1>
                            <p class="mb-5 text-mute">비밀번호 재전송을 위한<br>정보를 입력해주세요</p>
                            <div class="form-group float-label active">
                                <input type="text" class="form-control " >
                                <label class="form-control-label">Id</label>
                            </div>
                            <div class="form-group float-label active">
                                <input type="text" class="form-control " >
                                <label class="form-control-label">이름</label>
                            </div>
                            <div class="form-group float-label active">
                                <input type="text" class="form-control " >
                                <label class="form-control-label">휴대전화번호</label>
                            </div>
                            <div class="form-group float-label active">
                                <input type="text" class="form-control " >
                                <label class="form-control-label">인증번호</label>
                            </div>
                            <a href="login.do" class="btn btn-lg btn-default btn-block my-4">재전송</a>
                        </div>
                    </div>
                </div>
                <div class="col-12 align-self-end mb-4 text-center">
                    If you know your password,<br>you can <a href="memberLogin.jsp" class="text-dark font-weight-bold">Sign in</a> here.
                </div>
            </div>
        </div>
    </div>
    <!-- page content ends -->


</body>

</html>
