<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">

<head>
    
</head>

<body >
    
    

    <!-- page content starts -->
    <div class="has-background bg-default">
        <figure class="background opacity-30">
            <img src="${pageContext.request.contextPath}/HTML/assets/img/image10.jpg" alt="">
        </figure>

        <div class="login-container">
            <div class="row no-gutters">
                <div class="col-12 align-self-start header">
                    <div class="row">
                        <div class="col">
                            <div class="logo-header">
                             
                            </div>
                        </div>
                        <div class="col-auto">
                            <a href="memberLogin.jsp" class="btn text-white">Signup</a>
                        </div>
                    </div>
                </div>
                <div class="col-12 align-self-center">
                    <div class="row justify-content-center">
                        <div class="col-11 col-sm-7 col-md-6 col-lg-5 col-xl-3">
                            <h1 class="text-center font-weight-normal mb-5">로그인</h1>
                            
                            <div class="form-group float-label style-light position-relative">
                                <div class="bottom-right mb-2   ">
                                    <a href="forgotid.jsp" class="text-white">Forgot?</a>
                                </div>
                                <input type="text" class="form-control ">
                                <label class="form-control-label">Id</label>
                            </div>
                            <div class="form-group float-label style-light position-relative">
                                <div class="bottom-right mb-2   ">
                                    <a href="forgotpassword.jsp" class="text-white">Forgot?</a>
                                </div>
                                <input type="password" class="form-control ">
                                <label class="form-control-label">Password</label>
                            </div>
                            <a href="index.jsp" class="btn btn-lg btn-white btn-block my-4">Sign in</a>
                        </div>
                    </div>
                </div>
                <div class="col-12 align-self-end mb-4 text-center">
                    Don't have account yet?<br><a href="memberLogin.jsp" class="text-white font-weight-bold">Sign up</a> here.
                </div>
            </div>
        </div>
    </div>
    <!-- page content ends -->

   
</body>

</html>
