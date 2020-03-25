<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
<script>
	// 상단의 선택한 상품 표시하는 영역을 아작스에서 가져오는 것으로 처리
	/* $(document).ready(function() {
		var url = "/test/ajax/imageGet.do"
		var data = null;
		var callback = function(lookList) {
			console.log(lookList);
			for (i = 0; i < lookList.length; i++) {
				$("#upBar").append("<img src=\""+lookList[i].link+"\">");
			}
			$("#upBar").append("<button>&gt;</button>");
		}
		$.getJSON(url, data, callback);
		console.log("end");
	}); */
</script>
<script>	
	window.addEventListener("load", function() {
		var categoryIndex = 0;
		var goodsIndex = 0;
		var selectedIndex = 0;
		var goodsSelected = null;
		var goodsCode = null;
		var gNumSelected = null;
		category();
		formEvent();
	 	getGoodsList(); 
	    getlooksList();   
	});
	
	function (){}
	function category(){
		var categorys = $(".category");
		for (i=0; i<categorys.length; i++){
			categorys[i].addEventListener("mouseover",function(){
				categoryIndex = $(".category").index(this);
			});
			categorys[i].addEventListener("click", function(){
				var categoryNum = categoryIndex;
				getGoodsList(categoryNum);
				$("#goodsList").children().remove();
			});
		}
	}
	
	function formEvent(){
		var backGR = $("<div class=\"background\" data-html2canvas-ignore=\"true\"style=\"background-image: url(&quot;${pageContext.request.contextPath}/images/dressroom/dressroomBG.png&quot;)\"></div>");
		$("#palate .front").append(backGR);
		$("#lookControll").on("click", function(event){	
			var id = event.target.getAttribute("id");
			if (id == "reset"){
				$("#palate .box:gt(0)").remove();
				$("#palate .back").attr("class","front");
				$("#downBar .swiper-slide:gt(0)").remove();
				$("#downBar .swiper-slide .has-background div").remove();
				$("#downBar .swiper-slide p").text("");
				$("#downBar .swiper-slide p").append("<br>");
			} else {
				var Blob = null;
				function html2can(){
					var deferred = $.Deferred();
					try{
						html2canvas(document.querySelector("#palate").parentElement,
								    {backgroundColor: null , scale: 1/* , x: 192.5, y: 210 */})	
						.then(function(canvas){
							console.log(canvas);
							var DataUrl = canvas.toDataURL();
							$("body").append("<img src=\""+DataUrl+"\">"); 
							Blob = dataURItoBlob(DataUrl);
							console.log("toDataURL: "+ Blob);
							deferred.resolve(Blob);
						}); 
					} catch (err){
						deferred.reject("html2canvas Error");
					}
					return deferred.promise();
				}
				var destination = null;
				if (id == "collection"){
					//ajax로 db저장후 페이지전환 X
					destination = "collection";
				} else if (id == "order"){
					//ajax로 db저장후 페이지전환 O
					destination = "order";
				} else if (id == "share"){
					//ajax로 db저장후 페이지전환 O
					destination = "share";
				}
				var gNumTags = document.querySelectorAll("#palate .gNum");
				var gNums = new Array();
				var i = 0;
				gNumTags.forEach(gNumTag => { gNums[i] = $(gNumTag).attr("value"); i++; });
				i= null;
				gNums = gNums.join(",");
				var formData = new FormData();
				formData.append("gNums",gNums);
				formData.append("destination", destination);
				$.when(html2can()).done(function (result){
					formData.append("lookImg",Blob);
					console.log(formData.get("lookImg"));
					 $.ajax({ 
					        type : 'post',
					        url : "./CanvasUpload.do",
					        data : formData,
					        processData : false,	// data 파라미터 강제 string 변환 방지!! 
					        contentType : false, // application/x-www-form-urlencoded; 방지!! 
					        success : function(data) {
					            if(data.result){
					                alert("Success");
					            }else{
					                alert(data.result);
					            } 
					        }
					 });
				});
			}			
		});
	}

	function dataURItoBlob(dataURI){
		  var byteString = atob(dataURI.split(',')[1]);
		  var mimeString = dataURI.split(',')[0].split(':')[1].split(';')[0];
		  var ab = new ArrayBuffer(byteString.length);
		  var ia = new Uint8Array(ab);
		  for (var i = 0; i < byteString.length; i++){
		       ia[i] = byteString.charCodeAt(i);
		  }
		  var bb = new Blob([ab], { "type": mimeString });
		  console.log(bb);
		  return bb;
	} 
	
	function getGoodsList(categoryNum){
		  if (categoryNum == null){
			  categoryNum = 0;
			  console.log(categoryNum);
		  }
		//goods table 조회
		function getList(categoryNum){ 
			  console.log(categoryNum);
			  var deferred = $.Deferred();
			  var param = "no="+ categoryNum;
			  var xhr = new XMLHttpRequest();
			  xhr.open("GET","./ajax/goodsListCommand.do?"+param,true);
			  xhr.addEventListener('load',function(){
			    if(xhr.status === 200){
			      var obj = JSON.parse(xhr.response);
			      deferred.resolve(obj); // call done() method
			    }else{
			      deferred.reject("HTTP error: " + xhr.status);
			    }
			  },false); 
			  
			  xhr.send();
			  return deferred.promise();
			  
		}
		//goodsImage table 조회
		function getPalImages(){
			  var deferred = $.Deferred();
			  var xhr = new XMLHttpRequest();
			  xhr.open("POST","./ajax/goodsImageListCommand.do?",true);
			  xhr.addEventListener('load',function(){
			    if(xhr.status === 200){
			      var obj = JSON.parse(xhr.response);
			      deferred.resolve(obj); // call done() method
			    }else{
			      deferred.reject("HTTP error: " + xhr.status);
			    }
			  },false); 
			  xhr.send();
			  return deferred.promise();
		}
		
		//ajax로 비동기처리한  getList, getPalImages 리턴값 모두 가져온다음, html/css코드와 결합 & #goodsList에 append
		$.when(getList(categoryNum), getPalImages(categoryNum)).done(function (result1, result2){
			for (i = 0; i < result1.length; i++) {
				var newCard = $("<div class=\"col-6 col-sm-4 col-md-3 col-lg-2\"style=\"padding-left: 5px; padding-right: 5px;\"></div>");
				var card = $("<div class=\"card border-0 mb-4\"></div>");
				var cardBody = $("<div class=\"card-body p-0\"></div>");
				var hasBack = $("<div class=\"h-150px has-background rounded mb-2\"></div>");
				var back = $("<a class=\"background\"style=\"background-image: url(&quot;${pageContext.request.contextPath}/images/goodsImg/"+result1[i].g_fileName+"&quot;)\"></a>");
				var palImg = $("<img src=\"${pageContext.request.contextPath}/images/goodsImg/"+result2[i].gd_fileName+"\">");
				var gnum = $("<small class=\"text-mute\">"
						+ result1[i].g_num + "</small>");
				var gname = $("<p class=\"mb-0\">"
						+ result1[i].g_name + "</p>");
				var sprice = $("<p class=\"small\">"
						+ result1[i].s_price + "</p>");
				var sid = $("<p class=\"small\">" + result1[i].s_id + "</p>");
				var gcode = $("<p style=\"display: none;\">"+ result1[i].g_code+"</p>");
				back.append(palImg);
				hasBack.append(back);
				cardBody.append(hasBack, gnum, gname, sprice, sid, gcode);
				card.append(cardBody);
				newCard.append(card);
		      /*console.log(newCard); //완성된 1개 요소 확인 */
				$("#goodsList").append(newCard);
			}
			GoodsClickEvent();
		});	
	} 
	
	function GoodsClickEvent(){
		//상품 클릭시 팔레트 위에 배치
		var goods = $(".container-fluid").find(".card-body"); //card-body들 변수에 저장
		for (i = 0; i < goods.length; i++) {
			//상품에 마우스 올리면 해당 상품의 인덱스 변수에 담는 이벤트 
			goods[i].addEventListener("mouseover", function() {
				goodsIndex = $(this.parentNode.parentNode).index();
			});
			//상품클릭시 팔레트에 해당 상품의 pal이미지 출력하는 이벤트
		    goods[i].addEventListener("click",function() {
			    //선택한 상품의 인덱스와 일치하는 팔레트용 이미지 저장
				goodsSelected = $(".container-fluid .card-body:eq("+goodsIndex+")").children().children().children("img:eq(0)").attr("src");
			    goodsNum = $(".container-fluid .card-body:eq("+goodsIndex+")").children("small:eq(0)").text();
			    goodsCode = $(".container-fluid .card-body:eq("+goodsIndex+")").children("p:eq(3)").text();
			    console.log(goodsSelected);
			    console.log(goodsCode);
				//저장된 팔레트용 이미지를 팔레트 영역에 삽입 
				var box = $("<div class=\"box\"></div>");
				box.append("<div class=\"front\"></div>");
				box.append("<input type=\"hidden\" class=\"gNum\"value=\""+goodsNum+"\">");
				box.append("<input type=\"hidden\" value=\""+goodsCode+"\">");
			    $("#palate").append(box);
			    $("#palate").children("div:last");
				$("#palate").children("div:last").children("div").append("<div class=\"background\" style=\"background-image: url(&quot;"+goodsSelected+"&quot;)\"></div>");
				goodsSelected = null;
				//직전 이미지의 클래스 back으로 변경 
				var prev = $("#palate").children("div:last").prev(); //1만큼 앞요소(<div class="box">) 선택
				prev.children("div").attr("class", "back");
				// front클래스의 자식인 이미지의 style="display:none"속성 제거
				var frontImg = $(".front").children(); 
				frontImg.attr("class","background");
				/*선택한 상품목록에 추가*/
				//선택한 상품의 background class 태그의 style 속성(이미지 url)선택해 저장 & 이름 선택해 저장 
				goodsSelected = $(".container-fluid").find(".card-body").children("div:eq("+goodsIndex+")").children().attr("style");
				var goodsUrl = goodsSelected.substring(23, goodsSelected.length-2); 
				console.log(goodsUrl);
				var gName = $(".container-fluid").find(".card-body").children(".mb-0:eq("+goodsIndex+")").text();
				//swiper-slide 클래스 div 태그 생성 및 결합
					var background = $("<div class=\"background\"style=\"background-image: url(&quot;"+goodsUrl+"&quot;)\"></div>");
					var gCode = $("<input type=\"hidden\" value=\""+goodsCode+"\">");
					var gNum = $("<input type=\"hidden\" value=\""+goodsNum+"\">");
					palCnt = $("#palate").children().length;
					//
				if (palCnt > 2){
					var swiperSlide = $("<div class=\"swiper-slide\" style=\"padding: 0 5px 0 5px;\"></div>");
					var avatar = $("<div class=\"avatar avatar-80 has-background mb-2 rounded\"></div>");
					var name = $("<p class=\"text-uppercase small\">"+gName +"</p>");							
					avatar.append(background);
					avatar.append(gNum);
					avatar.append(gCode);
					swiperSlide.append(avatar);
					swiperSlide.append(name);
					//#downBar의 swiper-wrapper 태그에 append
					$("#downBar .swiper-wrapper:last").append(swiperSlide);
				} else if (palCnt == 2) {
					/* $("#downBar .background").attr("style","background-image: url(\""+goodsUrl+"\")"); */
					$("#downBar .avatar").append(background);
					$("#downBar .avatar").append(gNum);
					$("#downBar .avatar").append(gCode);
					$("#downBar .small").text(""+gName);
					$("#downBar .small").children().remove();
				}
				//선택목록 상품에 마우스 올리면 해당 상품이 팔레트의 front가 되도록 하는 이벤트
				var selectedGoods = $("#downBar .swiper-slide");
				selectedGoods.on("mouseover", function(selectedGoods){
					selectedGnum=$(this).find(".avatar").children("input:eq(0)").attr("value");
					console.log(selectedGnum);
					var pal = $("#palate input[value="+selectedGnum+"]").parent();
					console.log("pal "+pal);
					if (pal.children("div").attr("class") == "back"){
						pal.children("div").attr("class","front");
						$("#palate").append(pal);
						$("#palate").children("div:last").prev().children("div").attr("class","back");					
					}			
				});
			    /* //선택목록 상품 클릭하면 해당상품의 상세정보를 1) 상세정보 2) 제외 선택가능한 메뉴창 기능 
				selectedGoods.on("click", function(){
					
				}) */
			}); 
		} 
	}	
	
	function getlooksList(){
			  var xhr = new XMLHttpRequest();
			  xhr.open("GET","./ajax/lookListCommand.do?",true);
			  xhr.onreadystatechange =function(){
				if (this.readyState == 4 && this.status == 200) {
			      var obj = JSON.parse(xhr.responseText);
			      addLooks(obj);
			    }else{
			
			    }
			  }
			  xhr.send();
		};
		
	function addLooks(result){
			var upBars = $("#upBar .swiper-wrapper").children();
			    $.each(upBars,(i,slider) => { 
			    	if (i == result.length){
						return false;
					} 
					//마네킹 img
					$(slider).children("div").append("<div class=\"background\"style=\"background-image: url(&quot;${pageContext.request.contextPath}/images/dressroom/dressroomBG.png&quot;)\"></div>");
					//look img
					$(slider).children("div").append("<div class=\"background\"style=\"background-image: url(&quot;${pageContext.request.contextPath}/images/lookImg/"+result[i].l_fileName+"&quot;)\"></div>");
			    	/* $("#upBar .small:eq("+i+")").text(""+result[i].m_id);
					$("#upBar .small:eq("+i+")").children().remove(); */
					$(slider).append("<p class=\"gNums\" style=\"display: none;\">"+result[i].g_nums+"</p>");
			    });
			    $("#upBar .swiper-wrapper").on("click", ".swiper-slide", function(event){
			    	console.log($(this).children(".gNums").text());
			    	var gNums = $(this).children(".gNums").text();
			    	getGoodsOnPal(gNums);
			    	getPalImgOnPal(gNums);
			    	$.when(getPalImgOnPal(gNums), getPalImgOnPal(gNums)).done(function (result1, result2){
			    		console.log(result);
			    		var palCnt = $("#palate").children().length;
			    		if (palCnt > 1){
			    			$("#palate .box:gt(0)").remove();
			    			$("#palate .back").attr("class","front");
			    			$("#downBar .swiper-slide:gt(0)").remove();
			    			$("#downBar .swiper-slide .has-background div").remove();
			    			$("#downBar .swiper-slide p").text("");
			    			$("#downBar .swiper-slide p").append("<br>");
			    		}
			    		$.each(result2, (i, palJson) => {
			    			var box = $("<div class=\"box\"></div>");
			    			box.append("<div class=\"front\"></div>");
			    			box.append("<input type=\"hidden\" class=\"gNum\"value=\""+palJson.g_nums+"\">");
			    			/* box.append("<input type=\"hidden\" value=\""+goodsCode+"\">"); */
			    			$("#palate").append(box);
			    			$("#palate").children("div:last");
			    		    $("#palate").children("div:last").children("div").append("<div class=\"background\" style=\"background-image: url(&quot;${pageContext.request.contextPath}/images/goodsImg/"+palJson.gd_fileName+"&quot;)\"></div>");
			    		    var prev = $("#palate").children("div:last").prev(); //1만큼 앞요소(<div class="box">) 선택
			    			prev.children("div").attr("class", "back");
			    		});
			    		$.each(result1, (i, goodsJson) => {
			    			console.log("goodsJson:"+goodsJson.g_fileName);
			    			var downwCnt = $("#downBar .swiper-slide");
			    			var background = $("<div class=\"background\"style=\"background-image: url(&quot;${pageContext.request.contextPath}/images/goodsImg/"+goodsJson.g_fileName+"&quot;)\"></div>");
			    			var gCode = $("<input type=\"hidden\" value=\""+goodsJson.g_code+"\">");
			    			var gNum = $("<input type=\"hidden\" value=\""+goodsJson.g_num+"\">");
			    			if (downwCnt > 1){
			    				var swiperSlide = $("<div class=\"swiper-slide\" style=\"padding: 0 5px 0 5px;\"></div>");
			    				var avatar = $("<div class=\"avatar avatar-80 has-background mb-2 rounded\"></div>");
			    				var name = $("<p class=\"text-uppercase small\">"+gName +"</p>");							
			    				avatar.append(background);
			    				avatar.append(gNum);
			    				avatar.append(gCode);
			    				swiperSlide.append(avatar);
			    				swiperSlide.append(name);
			    				//#downBar의 swiper-wrapper 태그에 append
			    				$("#downBar .swiper-wrapper:last").append(swiperSlide);
			    			} else if (downwCnt == 1) {
			    				/* $("#downBar .background").attr("style","background-image: url(\""+goodsUrl+"\")"); */
			    				$("#downBar .avatar").append(background);
			    				$("#downBar .avatar").append(gNum);
			    				$("#downBar .avatar").append(gCode);
			    				$("#downBar .small").text(""+gName);
			    				$("#downBar .small").children().remove();
			    			}
			    		});
			    	});
				});	
	}	
	
	function getGoodsOnPal(gNums){
		  var deferred = $.Deferred();
		  var formData1 = new FormData();
		  formData1.append("g_nums", gNums);	
		  console.log("g_nums1: "+ formData1.get("g_nums"));
		  $.ajax({ 
		        type : 'POST',
		        url : "./ajax/goodsListCommand.do?",
		        data : formData1,
		       	dataType: "json",
		       	processData : false,
		        contentType : false,
		        success : function(data){
		        	if (data){
		        		 deferred.resolve(data);
		        	} else{
		        		 deferred.reject("error");
		        	}
		        }       		
		 });
		 return deferred.promise();
	};

	function getPalImgOnPal(gNums){
		var deferred = $.Deferred();
		  var formData2 = new FormData();
		  formData2.append("g_nums", gNums);	
		  console.log("g_nums2: "+  formData2.get("g_nums"));
		  $.ajax({ 
		        type : 'POST',
		        url : "./ajax/goodsImageListCommand.do?",
		        data : formData2,
		       	dataType: "json",
		       	processData : false,
		        contentType : false,
		        success : function(data){
		        	if (data){
		        		 deferred.resolve(data);
		        	} else{
		        		 deferred.reject("error");
		        	}
		        }       		
		 });
		 return  deferred.promise();
	};
	
</script>
<style>
/* div {
	border: 1px solid gray;
	}  
*/
#cateBar { width: 100px; }
} 

.pal {
	display: none;
}


.selected {
	display: none;
}

.category {
	width: 100px;
	height: 50px;
} 


.C_botton {
	color: #f94620;
}

.box {
	float: left;
	position: relative;
}

.front {
	position: static; */
	top: -20px;
	left: -20px;
	width: 400px;
	height:560px;
	/*  right: ; */
	/*  right: ; */
}

.back {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 400px;
	height:560px;
	/*  right: ; */
	/*  bottom: ; */
	/* margin: 0px 30px; */
}

.upSlider{
	margin:0;
}


#cateBar {
	width: 100px;
}
</style>
</head>
<body>
	<div class="row">
	<div class="col col-lg-1" style="max-width:75px; margin:0; padding:0"></div>
	<div class="col" style="padding:10px; align: center;">
		<!-- style="margin: 5px 15px 0px 15px; padding: 0px 0px 0px 60px" -->
		<div class="row" style="height: 25px;">
			<div class="col" style="height: 24px;">
				<h5 class="page-title">dressroom</h5>
			</div>
		</div>
		<div class="row">
			<div class="col" align="center" style="min-width:400px; max-width:800px; padding: 0px 10px 0 10px;">
				<!-- my/추천룩이미지 -->
				<div class="row" id="upBar" style="min-width:400px; max-width:800px; margin:0px">
					<div class="col-12 col-sm-12col-md-12 col-lg-1" align="left"
						style="min-width: 40px; max-width: 800px; background-color: #f94620; color: white; padding-left: 0px; padding-right: 0px; margin:1px 0 0 0">
						<p>추천</p>
					</div>
					<div class="col" style="min-width: 400px; max-width: 800px; padding: 0; margin:1px 0 0 0;">
						<!-- Swiper -->
						<div class="swiper-container categoriestab1 text-center">
							<div class="swiper-wrapper" style="min-width:400px; max-width:800px;">
								<div class="swiper-slide" style="padding: 0 5px 0 5px;">
									<div class="avatar avatar-80 has-background mb-2 rounded">
									</div>
									<p class="text-uppercase small upSlider"><br></p>
								</div>
								<div class="swiper-slide" style="padding: 0 5px 0 5px;">
									<div class="avatar avatar-80 has-background mb-2 rounded">
									</div>
									<p class="text-uppercase small upSlider"><br></p>
								</div>
								<div class="swiper-slide" style="padding: 0 5px 0 5px;">
									<div class="avatar avatar-80 has-background mb-2 rounded">
									</div>
									<p class="text-uppercase small upSlider"><br></p>
								</div>
								<div class="swiper-slide" style="padding: 0 5px 0 5px;">
									<div class="avatar avatar-80 has-background mb-2 rounded">
									</div>
									<p class="text-uppercase small upSlider"><br></p>
								</div>
								<div class="swiper-slide" style="padding: 0 5px 0 5px;">
									<div class="avatar avatar-80 has-background mb-2 rounded">
									</div>
									<p class="text-uppercase small upSlider"><br></p>
								</div>
								<div class="swiper-slide" style="padding: 0 5px 0 5px;">
									<div class="avatar avatar-80 has-background mb-2 rounded">
									</div>
									<p class="text-uppercase small upSlider"><br></p>
								</div>
								<div class="swiper-slide" style="padding: 0 5px 0 5px;">
									<div class="avatar avatar-80 has-background mb-2 rounded">
									</div>
									<p class="text-uppercase small upSlider"><br></p>
								</div>
								<div class="swiper-slide" style="padding: 0 5px 0 5px;">
									<div class="avatar avatar-80 has-background mb-2 rounded">
									</div>
									<p class="text-uppercase small upSlider"><br></p>
								</div>
								<div class="swiper-slide" style="padding: 0 5px 0 5px;">
									<div class="avatar avatar-80 has-background mb-2 rounded">
									</div>
									<p class="text-uppercase small upSlider"><br></p>
								</div>
								<div class="swiper-slide" style="padding: 0 5px 0 5px;">
									<div class="avatar avatar-80 has-background mb-2 rounded">
									</div>
									<p class="text-uppercase small upSlider"><br></p>
								</div>
							</div>
						</div>
						<!-- swiper -->
					</div>
				</div>
				<!-- my/추천룩이미지 -->
				<!-- 팔레트  -->
				<div class="row" style="min-width:400px; max-width:800px; padding: 0px;">
					<div class="col" style="padding: 0px;"></div>
					<div class="col-auto" style="width:400px; height:560px; padding: 0px;">
						<div class="container" id="palate" style="padding:0px;">
							<div class="box">
								<div class="front">
								</div>
							</div>
						</div>
					</div>
					<div class="col" style="width: 5px; padding: 0px;"></div>
				</div>
				<!-- 팔레트  -->
				<!-- 룩이미지처리 -->
					<div class="row" id="lookControll" style="min-width:400px; max-width:800px; padding: 0; margin: 0; background-color: #ffe9e9;">
								<div class="col-3" id="order" style="color: #f94620">주문</div>
								<div class="col-3" id="collection" style="color: #f94620">컬렉션</div>
								<div class="col-3" id="share" style="color: #f94620">룩공유</div>
								<div class="col-3" id="reset" style="color: #f94620">초기화</div>
					</div>
					<!-- 룩이미지처리 -->
					<!-- 선택한 옷 목록 -->
					<div class="row" id="downBar" style="min-width:400px; max-width:800px; margin:0">
						<div class="col" align="center"
							style="padding: 0px; margin: 1px 0 0 0;">
							<!-- Swiper -->
							<div class="swiper-container categoriestab1 text-center">
								<div class="swiper-wrapper">
									<div class="swiper-slide" style="padding: 0 5px 0 5px;">
										<div class="avatar avatar-80 has-background mb-2 rounded">
										</div>
										<!-- p태그 안의 div는 여백주기 위해 일부러 준것 -->
										<p class="text-uppercase small"><br></p>
									</div>
								</div>
							</div>
							<!-- swiper -->
						</div>
					</div>
				<!-- 선택한 옷 목록 -->
			</div>
			<!-- 상품 검색창 -->
			<div class="col" style=" min-width:400px; margin: 0 10px 0 10px;padding-left: 10px; padding-right: 10px;" >
						<div class="container" style="padding: 0 10px 0 10px; margin: 0;">
							<!--대분류 -->
							<div class="row" style="background-color: #f94620;">
								<div class="col" style="padding: 0 20px 0 20px; margin:0; color: white;">
									female
									<!-- 좌/우 클릭으로 대분류(남/녀/브랜드/이벤트)변경 -->
									<a>&lt;</a> <a>&gt;</a>
								</div>
							</div>
							<!--대분류 -->
							<div class="row">
								<!--상품목록 -->
								<div class="col" style="padding-left: 5px; padding-right: 5px;">
									<div class="row" id="goodsList" style="margin: 1px;">
									</div>
									<!-- 팔레트용 이미지들  -->
								</div>
								<!--상품목록 -->
								<!--소분류(카테고리) -->
								<div class="col-auto" id="cateBar" align="center"
									style="padding-left: 0px; padding-right: 0px; background-color: #ffe6e6">
									<!-- a 태그에 href="상품리스트 페이지에 뿌리는 커맨드" style: 테두리 둥근 박스모양 + 클릭시 색 아이덴티티 컬러로 변하는 이벤트 -->
									<div class="row category">
										<div class="col" align="left">
											<a class="C_botton">hot</a>
										</div>
									</div>
									<div class="row category">
										<div class="col" align="left">
											<a class="C_botton">outer</a>
										</div>
									</div>
									<div class="row category">
										<div class="col" align="left">
											<a class="C_botton">top</a>
										</div>
									</div>
									<div class="row category">
										<div class="col" align="left">
											<a class="C_botton">bottom</a>
										</div>
									</div>
									<div class="row category">
										<div class="col" align="left">
											<a class="C_botton">shoes</a>
										</div>
									</div>
									<div class="row category">
										<div class="col" align="left">
											<a class="C_botton">etc</a>
										</div>
									</div>
								</div>
								<!--소분류(카테고리) -->
							</div>
						</div>
						<!-- container -->
			</div>
			<!-- 상품 검색창 -->
		</div>
		<!-- col -->
	</div>
	<div class="col col-lg-1" style="max-width:75px; margin:0; padding:0"></div>
	</div>
</body>
</html>