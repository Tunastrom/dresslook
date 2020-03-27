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
			 var lookName = document.getElementById("lookName").value;
			 var lookIntroduce = document.getElementById("lookIntroduce").value;
			 //if문: 룩이름, 룩설명 작성여부 체크
			 if (lookName != null && lookName !=""){
				if (lookIntroduce != null && lookIntroduce !=""){
					//작성완료시 해시태그 추출
					var splitedArray = lookIntroduce.split(' ' || '\n');
					console.log("//////////splitedArray//////////")
					console.log(splitedArray);
					var tags = new Array();
					$.each (splitedArray, (i, word) => {
						console.log("////////////word///////////")
						console.log(word);
					  if(word.indexOf('#') == 0)
				      {
					    tags.push(word);
				      }
					});
					tags = tags.join(",");
					console.log("/////////tags///////");
					console.log(tags);
					$("#tags").attr("value", tags);
					frm.action = "timelineUploadCommand.do"				
					frm.submit(); 
				} else{
					alert("Look 소개를 입력하세요");
				} 	
			 } else {
				 alert("Look 이름을 입력하세요");
			 }
		 })
	 });
	 
	 function saveSession(lookName, lookIntroduce){
		 var key = lookName;
	        var value = lookIntroduce;

	        // setItem( ) 메서드를 이용하여 key를 지정하고, value값을 세션에 저장한다.
	        sessionStorage.setItem(key, value);

	        // 데이터를 출력한다.
	        printSessionStorage();
	 }
</script>
</head>
<body>
   <br>
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
                    <form id="frm" name="frm" action="">
					    <div class="form-group">
						    <input type="text" class="form-control" id="lookName"  name="lookName" placeholder="LOOK 이름" value="">
						    <br>
						    <textarea class="form-control" id="lookIntroduce" name="lookIntroduce" rows="3" placeholder="LOOK 소개"></textarea>
							<input type="hidden" id="lCode" name ="lCode" value="${LookDto.l_code}">
							<input type="hidden" id="tags" name="tags" value="">
						</div>
						<div style="align: right;">
							<button type="button" class="btn btn-primary">완료</button>  
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