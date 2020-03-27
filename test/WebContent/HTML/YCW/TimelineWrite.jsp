<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	/* div{border: 1px solid gray;} */
	 #like {border:0; background-color:transparent; color:white;}
</style>
<script>
	 $(document).ready(function(){
		 $("body").attr("data-page","productpage");
		 $("#backButton").attr("class","btn btn-link backbtn");
		 $("#backbtnText").text("arrow_back");
		 
		 $(".btn-primary").on("click", function(){
			 var lookName = $("#lookName").attr("value");
			 var lookIntroduce =$("#lookIntroduce").text();
			 if (lookName != null && lookName !=""){
				 
			 }
			 frm.action = "/TimelineUpload.do";
			 frm.submit();
		 })
	 });
</script>
</head>
<body>
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
                <!-- Add Arrows -->
                 <div class="swiper-button-next swiper-button-white"></div>
                <div class="swiper-button-prev swiper-button-white"></div> 
            </div>
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
                    <form id="frm" name="frm">
					    <div class="form-group">
						    <input type="email" class="form-control" id="lookName" placeholder="LOOK 이름" value="">
						</div>
	                    <div class="form-group">
						    <textarea class="form-control" id="lookIntroduce" rows="3" placeholder="LOOK 소개"></textarea>
						</div>
						<div style="align: right;">
							<button type="submit" class="btn btn-primary">완료</button>  
						</div>	          
                    </form>  
                </div>
            </div>
            <div>
            	<button type="button" class="btn btn-default shadow scrollup bottom-right position-fixed btn-40"><i class="material-icons">expand_less</i></button>
            </div>
            <!-- scroll to top button -->
    		
   			<!-- scroll to top button ends-->
            <!-- page content ends -->
</body>
</html>