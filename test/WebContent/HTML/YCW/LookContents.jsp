<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
	<script>
	 $(document).ready(function(){
		 $("body").attr("data-page","productpage");
		 $("#backButton").attr("class","btn btn-link backbtn");
		 $("#backbtnText").text("arrow_back");
	 });
	</script>
	<style>
		 #like {border:0; background-color:transparent; color:white;}
	</style>
</head>
<body>
            <!-- page content start -->
            <!-- Swiper -->
            <div class="swiper-container gallery-top">
                <div class="swiper-wrapper">
                    <div class="swiper-slide has-background">
                        <div class="background">
                            <img src="${pageContext.request.contextPath}/HTML/assets/img/image1.jpg" alt="">
                        </div>
                    </div>
                    <div class="swiper-slide has-background">
                        <div class="background">
                            <img src="${pageContext.request.contextPath}/HTML/assets/img/image2.jpg" alt="">
                        </div>
                    </div>
                    <div class="swiper-slide has-background">
                        <div class="background">
                            <img src="${pageContext.request.contextPath}/HTML/assets/img/image3.jpg" alt="">
                        </div>
                    </div>
                    <div class="swiper-slide has-background">
                        <div class="background">
                            <img src="${pageContext.request.contextPath}/HTML/assets/img/image1.jpg" alt="">
                        </div>
                    </div>
                    <div class="swiper-slide has-background">
                        <div class="background">
                            <img src="${pageContext.request.contextPath}/HTML/assets/img/image2.jpg" alt="">
                        </div>
                    </div>
                    <div class="swiper-slide has-background">
                        <div class="background">
                            <img src="${pageContext.request.contextPath}/HTML/assets/img/image3.jpg" alt="">
                        </div>
                    </div>
                </div>
                <!-- Add Arrows -->
                <div class="swiper-button-next swiper-button-white"></div>
                <div class="swiper-button-prev swiper-button-white"></div>
            </div>
            <div class="swiper-container gallery-thumbs">
                <div class="swiper-wrapper">
                    <div class="swiper-slide has-background">
                        <div class="background">
                            <img src="${pageContext.request.contextPath}/HTML/assets/img/image1.jpg" alt="">
                        </div>
                    </div>
                    <div class="swiper-slide has-background">
                        <div class="background">
                            <img src="${pageContext.request.contextPath}/HTML/assets/img/image2.jpg" alt="">
                        </div>
                    </div>
                    <div class="swiper-slide has-background">
                        <div class="background">
                            <img src="${pageContext.request.contextPath}/HTML/assets/img/image3.jpg" alt="">
                        </div>
                    </div>
                    <div class="swiper-slide has-background">
                        <div class="background">
                            <img src="${pageContext.request.contextPath}/HTML/assets/img/image1.jpg" alt="">
                        </div>
                    </div>
                    <div class="swiper-slide has-background">
                        <div class="background">
                            <img src="${pageContext.request.contextPath}/HTML/assets/img/image2.jpg" alt="">
                        </div>
                    </div>
                    <div class="swiper-slide has-background">
                        <div class="background">
                            <img src="${pageContext.request.contextPath}/HTML/assets/img/image3.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="container">
                    <p class="text-mute mb-1">#센스</p>
                    <h5>Men Jacket brown</h5>
                    <h5 class="text-success">45,000</h5>
                    <hr>
                    <div class="row">
                        <div class="col">
	                        <div class="input-group cart-count cart-count-lg">
	                             <!--  <div class="input-group-prepend">
	                                    <button class="btn btn-outline-secondary" type="button">-</button>
	                                </div> -->
	                                	&nbsp;&nbsp;&nbsp;<input type="text" class="form-control" placeholder="" value="view" readonly>
	                                	<input type="text" class="form-control" placeholder="" value="1" >
	                            <!--  <div class="input-group-append">
	                                    <button class="btn btn-outline-secondary" type="button">+</button>
	                                </div>-->
	                        </div>
                        </div>
                        <div class="col-auto">
                            <button class="btn btn-default"><i class="material-icons">favorite</i> 좋아요<span>&nbsp;&nbsp;<input id="like" type="text"  value="1" size="1"></span></button>
                        </div>
                    </div>
                    <hr>
                    <p class="text-mute">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ut quam eget orci ultrices tempus. Phasellus in lectus ut enim vulputate maximus. Sed nec mauris magna. Duis ac rutrum eros. Nullam sagittis, nibh quis varius maximus, turpis orci pretium orci, a ullamcorper ex lorem in libero. Suspendisse ullamcorper purus ac ligula porta, in dapibus libero bibendum. Mauris elementum sem id elit sollicitudin ultrices. Sed lobortis porttitor volutpat. Sed rutrum nunc diam, commodo consectetur tortor ultrices sed.</p>
                    <br>
                    <h6 class="page-title">댓글</h6>
                    <div class="card my-3">
                        <div class="card-body border-0">
                            <h6>"Best product item and taste very fast and excellent packaging I am loving it. Thats awesome set for packaging with sppon and fork."</h6>
                        </div>
                        <div class="card-footer">
                            <div class="media">
                                <div class="avatar avatar-40 mr-2 has-background">
                                    <figure class="background">
                                        <img src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg" alt="Generic placeholder image">
                                    </figure>
                                </div>
                                <div class="media-body">
                                    <h6 class="mb-1">Johnson Johny</h6>
                                    <p class="text-mute small">
                                        Vennama, USA | <span class="text-warning icon_star"></span><span class="text-warning icon_star"></span><span class="text-warning icon_star"></span><span class="text-warning icon_star"></span><span class="text-warning material-icons h6 my-0">star</span> 5.0 </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- scroll to top button -->
    		<button type="button" class="btn btn-default shadow scrollup bottom-right position-fixed btn-40"><i class="material-icons">expand_less</i></button>
   			<!-- scroll to top button ends-->
            <!-- page content ends -->
</body>

</html>
