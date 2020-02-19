<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<script>
$(document).ready(function(){
	/*  $("body").attr("data-page","payment"); */
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
                        <h5 class="page-title">배송정보</h5>
                        </br>
                        <div class="row">
                            <div class="col-12 col-md-6">
                                <div class="form-group float-label position-relative active">
                                    <input type="text" class="form-control " value="maxartkiller">
                                    <label class="form-control-label">Name</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 col-md-6">
                                <div class="form-group float-label position-relative active">
                                    <input type="text" class="form-control " value="265, 0001 Wallstreet, E584">
                                    <label class="form-control-label">Address Line</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group float-label position-relative">
                                    <input type="text" class="form-control ">
                                    <label class="form-control-label">City</label>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group float-label position-relative">
                                    <input type="text" class="form-control ">
                                    <label class="form-control-label">Zipcode</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 col-md-6">
                                <div class="form-group float-label position-relative">
                                    <input type="text" class="form-control ">
                                    <label class="form-control-label">Country</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container align-self-end mb-4 text-center">
                        <a href="payment.do" class="btn btn-lg btn-primary mb-3 btn-block">Pay with Paypal</a>
                        <a href="payment.do" class="btn btn-lg btn-default btn-block">Pay with Credit or Debit card</a>
                    </div>
                </div>
            </div>
            <!-- page content ends -->
</body>

</html>
