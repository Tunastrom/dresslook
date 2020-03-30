<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html lang="en">
<head>
	<script>
	 $(document).ready(function(){
		 $("body").attr("data-page","productpage");
		 $("#backButton").attr("class","btn btn-link backbtn");
		 $("#backbtnText").text("arrow_back");
		 
		/*  function tagSplit(){
			 var tags = "${CodyDto.tag}";
			 var splitedTags = tags.split(",");
			 console.log(splitedTags)
			 $.each(splitedTags, (i, tag)=>{
				 //검색하는 커맨드로 연결
				 var taglink = $("<a>"+tag+"</a>");
				 $("#tags").append(taglink);
			 });
			 $("#tags").on("click", "a",function(){
				/* document.location.href="";*/		 
		/* 	 });
		 } */
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
                            <img src="${pageContext.request.contextPath}/images/dressroom/dressroomBG.png" alt="">
                        </div>
                         <div class="background">
                            <img src="${pageContext.request.contextPath}/images/lookImg/${LookDto.l_fileName}" alt="">
                        </div>
                    </div>
                    <c:forEach var="goodsImg" items="${goodsList}">
	                <div class="swiper-slide has-background">
	                    <div class="background">
	                           <img src="${pageContext.request.contextPath}/images/goodsImg/${goodsImg.g_fileName}" alt="">
	                    </div>
	                </div>
                    </c:forEach>
                </div>
            </div>
                <!-- Add Arrows -->
                <div class="swiper-button-next swiper-button-white"></div>
                <div class="swiper-button-prev swiper-button-white"></div>
            <div class="swiper-container gallery-thumbs">
                <div class="swiper-wrapper">
                   <div class="swiper-slide has-background">
                			<div class="background">
                            	<img src="${pageContext.request.contextPath}/images/dressroom/dressroomBG.png" alt="">
                        	</div>
	                        <div class="background">
	                           <img src="${pageContext.request.contextPath}/images/lookImg/${LookDto.l_fileName}" alt="">
	                        </div>
	                </div>
                	<c:forEach var="goods" items="${goodsList}">
	                	<div class="swiper-slide has-background">
	                        <div class="background">
	                            <img src="${pageContext.request.contextPath}/images/goodsImg/${goods.g_fileName}"/>
	                        </div>
	                    </div>
                	</c:forEach>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="container">
                    <p class="text-mute mb-1" id="tags"></p>
                    <h5>${CodyDto.subject}</h5>
                   <!--  <h5 class="text-success">45,000</h5> -->
                    <hr>
                    <div class="row">
                        <div class="col">
	                        <div class="input-group cart-count cart-count-lg">
	                             <!--  <div class="input-group-prepend">
	                                    <button class="btn btn-outline-secondary" type="button">-</button>
	                                </div> -->
	                                	&nbsp;&nbsp;&nbsp;<input type="text" class="form-control" placeholder="" value="view" readonly>
	                                	<input type="text" id="view" class="form-control" placeholder="" value="${CodyDto.c_read}" >
	                            <!--  <div class="input-group-append">
	                                    <button class="btn btn-outline-secondary" type="button">+</button>
	                                </div>-->
	                        </div>
                        </div>
                        <div class="col-auto">
                            <button class="btn btn-default"><i class="material-icons">favorite</i> 좋아요<span>&nbsp;&nbsp;<input id="like" type="text"  value="1" size="1"></span></button>
                        </div>
                    </div>
                    <br>
                    <p class="text">${CodyDto.contents}</p>
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
