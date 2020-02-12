<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, shrink-to-fit=no">
    <meta name="description" content="Mobileshop HTML mobile template by Maxartkiller. Bootstrap UI UX, Bootstrap theme, Bootstrap HTML, Bootstrap template, Bootstrap mobile app, multipurpose mobile app template. get bootstrap template, mobile app">
    <meta name="author" content="Maxartkiller">
    <link rel=icon href="${pageContext.request.contextPath}/HTML/assets/img/logo-small.png" sizes="any">

    <title>Mobileshop</title>

    <!-- material icons stylesheet -->
    <link href="${pageContext.request.contextPath}/HTML/assets/vendor/materializeicon/material-icons.css" rel="stylesheet">

    <!-- bootstrap stylesheet -->
    <link href="${pageContext.request.contextPath}/HTML/assets/vendor/bootstrap-4.4.1/css/bootstrap.min.css" rel="stylesheet">

    <!-- swiper stylesheet -->
    <link href="${pageContext.request.contextPath}/HTML/assets/vendor/swiper/css/swiper.min.css" rel="stylesheet">

    <!-- template stylesheet -->
    <link href="${pageContext.request.contextPath}/HTML/assets/css/style-dark-blue.css" rel="stylesheet" id="style">
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
                            <a href="thankyou.jsp" class="btn btn-lg btn-default mb-3 mx-auto px-4">Pay Now</a>
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
                        <a href="thankyou.jsp" class="btn btn-lg btn-default btn-block disabled">Pay Now</a>
                    </div>
                </div>
            </div>



            <!-- page content ends -->
</body>

</html>
