<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<script>
	 $(document).ready(function(){
		 $("body").attr("data-page","payment");
		 $("#backButton").attr("class","btn btn-link backbtn");
		 $("#backbtnText").text("arrow_back");
	 });
</script>
</head>
<body>
            <!-- page content start -->
            <div class="content-container">
                <div class="row">
                    <div class="container align-self-start my-3">

                        <h1 class="text-center">$ 98.98</h1>
                        <h6 class="small text-mute text-center">Net Payable</h6>
                        <br>
                        <div class="row">
                            <div class="col-12 px-0">
                                <div class="swiper-container swipercards">
                                    <div class="swiper-wrapper pb-4">
                                        <div class="swiper-slide shadow card w-300px overflow-hidden gradient-default border-0 ">
                                            <div class="card-header bg-none border-0 text-right">
                                                <img src="${pageContext.request.contextPath}/HTML/assets/img/cardlogo.png" alt="">
                                            </div>
                                            <div class="card-body">
                                                <br>
                                                <h4 class="font-weight-normal">**** **** **** 9858</h4>
                                                <div class="row">
                                                    <div class="col">
                                                        <p>Maxartkiller<br><small class="text-mute">Name</small></p>
                                                    </div>
                                                    <div class="col text-right">
                                                        <p>12/21<br><small class="text-mute">Expiry</small></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="swiper-slide shadow card w-300px overflow-hidden gradient-green text-white border-0 ">
                                            <div class="card-header bg-none border-0 text-right">
                                                <img src="${pageContext.request.contextPath}/HTML/assets/img/cardlogo.png" alt="">
                                            </div>
                                            <div class="card-body">
                                                <br>
                                                <h4 class="font-weight-normal">**** **** **** 9858</h4>
                                                <div class="row">
                                                    <div class="col">
                                                        <p>Maxartkiller<br><small class="text-mute">Name</small></p>
                                                    </div>
                                                    <div class="col text-right">
                                                        <p>12/21<br><small class="text-mute">Expiry</small></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="swiper-slide shadow card w-300px overflow-hidden gradient-blue text-white border-0 ">
                                            <div class="card-header bg-none border-0 text-right">
                                                <img src="${pageContext.request.contextPath}/HTML/assets/img/cardlogo.png" alt="">
                                            </div>
                                            <div class="card-body">
                                                <br>
                                                <h4 class="font-weight-normal">**** **** **** 9858</h4>
                                                <div class="row">
                                                    <div class="col">
                                                        <p>Maxartkiller<br><small class="text-mute">Name</small></p>
                                                    </div>
                                                    <div class="col text-right">
                                                        <p>12/21<br><small class="text-mute">Expiry</small></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="text-center mb-3">
                            <a href="thankyou.do" class="btn btn-lg btn-default mb-3 mx-auto px-4">Pay Now</a>
                            <p class="text-mute text-center">or pay with new card</p>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-12 col-md-6">
                                <div class="form-group float-label position-relative active">
                                    <input type="text" class="form-control " value="maxartkiller">
                                    <label class="form-control-label">Card Holder Name</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 col-md-6">
                                <div class="form-group float-label position-relative active">
                                    <input type="text" class="form-control " value="0550 0000 0000 00">
                                    <label class="form-control-label">Card Number</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group float-label position-relative">
                                    <input type="text" class="form-control ">
                                    <label class="form-control-label">Expiry Date</label>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group float-label position-relative">
                                    <input type="text" class="form-control ">
                                    <label class="form-control-label">CVV</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container align-self-end mb-4 text-center">
                        <a href="thankyou.do" class="btn btn-lg btn-default btn-block disabled">Pay Now</a>
                    </div>
                </div>
            </div>



            <!-- page content ends -->
</body>

</html>
