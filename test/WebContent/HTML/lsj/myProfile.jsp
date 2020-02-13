<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
   
</head>

<body>
    
            <!-- page content start -->
            <div class="row">
                <div class="container">
                    <div class="row">
                        <div class="container-fluid px-0">
                            <div class="has-background h-200px">
                                <div class="background">
                                    <img src="${pageContext.request.contextPath}/HTML/assets/img/image8.jpg" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11 col-md-6 col-lg-4 mx-auto">
                            <figure class="avatar avatar-150 rounded-circle has-background mx-auto username top-75 d-block">
                                <div class="background">
                                    <img src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg" alt="">
                                </div>
                            </figure>
                            <h5 class="text-center mb-0 username-text">${id }</h5>
                            <p class="text-center small text-mute username-text">${addr1 }</p>

                            <div class="list-group my-3">
                                <a href="myInfo.jsp" class="list-group-item list-group-item-action">내 계정 <i class="material-icons float-right text-mute h6 my-0">keyboard_arrow_right</i></a>
                                <a href="myOrderList.jsp" class="list-group-item list-group-item-action">주문 관리 <i class="material-icons float-right text-mute h6 my-0">keyboard_arrow_right</i></a>
                                <a href="myCoupon.jsp" class="list-group-item list-group-item-action">쿠폰 <i class="material-icons float-right text-mute h6 my-0">keyboard_arrow_right</i></a>
                                <a href="myOrderTrack.jsp" class="list-group-item list-group-item-action">배송정보 <i class="material-icons float-right text-mute h6 my-0">keyboard_arrow_right</i></a>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- page content ends -->
        
   
</body>

</html>
