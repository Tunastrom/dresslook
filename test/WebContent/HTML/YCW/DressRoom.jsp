<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
<script>	
	window.addEventListener("load", function() {
		var categoryIndex = 0;
		var goodsIndex = 0;
		var selectedIndex = 0;
		var goodsSelected = null;
		var goodsCode = null;
		var gNumSelected = null;
		//페이징
		var totalData = 1000;    // 총 데이터 수
	    var dataPerPage = 20;    // 한 페이지에 나타낼 데이터 수
	    var pageCount = 10;       // 한 화면에 나타낼 페이지 수
		category();
		formEvent();
	 	getGoodsList(); 
	    getlooksList(); 
	    defaultPal();
	});
	
	function defaultPal(){
		
			/* <c:forEach var="goods" items="${GoodsList}">
					var goodsSelected = "${pageContext.request.contextPath}/upload/goodsImg/"+g_fileName;
					var goodsNum;
					var goodsCode;
					var goodsSelBGUrl;
			    	    addOnPal();
			    	    addOnDownBar();
            </c:forEach>
            
			var GIArr = "";
			var g_numArr = g_nums.split(",");
			var g_codeArr = g_codes.split(",");
			var g_fileNameArr = g_fileNames.split(",");     */
	}
	
	var Request = function(){
		this.getParameter = function(name){
			console.log("//////////name");
			console.log(name);
			var rtnval='';
			var nowAddress = unescape(document.location.href);
			var parameters = (nowAddress.slice(nowAddress.indexOf('?')+1,nowAddress.length)).split('&');
			for(var i = 0 ; i< parameters.length ; i++){
				var varName = parameters[i].split('=')[0];
				if(varName.toUpperCase() == name.toUpperCase()){
					rtnval = parameters[i].split('=')[1];
					break;
				}
			}
			return rtnval;
		}
	}
	
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
		var backGR = $("<div class=\"background\" data-html2canvas-ignore=\"true\"style=\"width:345px; background-image: url(&quot;${pageContext.request.contextPath}/images/dressroom/dressroomBG345.png&quot;)\"></div>");
		var ssamHair = $("<div class=\"background\" data-html2canvas-ignore=\"true\"style=\"width:345px; background-image: url(&quot;${pageContext.request.contextPath}/images/dressroom/ssamHair.png&quot;)\"></div>");
		$("#palate .back").append(backGR);
		$("#palate .front").append(ssamHair);
		$("#lookControll").on("click", function(event){	
			var id = event.target.getAttribute("id");
			if (id == "reset"){
				$("#palate .box:gt(1)").remove();
				$("#downBar .swiper-slide:gt(0)").remove();
				$("#downBar .swiper-slide .has-background div").remove();
				$("#downBar .swiper-slide p").text("");
				$("#downBar .swiper-slide p").append("<br>");
			} else {
				var Blob = null;
				function html2can(){
					var deferred = $.Deferred();
					try{
						var palate = document.querySelector("#palate").parentElement;
						palate.setAttribute("style", "position: fixed;");
						html2canvas(palate,{backgroundColor: null , scale: 1,/* , x: 192.5, y: 210 */})	
						.then(function(canvas){
							console.log(canvas);
							var DataUrl = canvas.toDataURL();
							/* $("body").append("<img src=\""+DataUrl+"\">"); canvas생성결과 확인 */ 
							Blob = dataURItoBlob(DataUrl);
							console.log("toDataURL: "+ Blob);
							deferred.resolve(Blob);
						}); 
						palate.setAttribute("style", "");
					} catch (err){
						deferred.reject("html2canvas Error");
					}
					return deferred.promise();
				}
				var destination = null;
				var url = "CanvasUpload";
				if(id == "share"){
					//ajax로 db저장후 페이지전환 O
					url+="Command.do";
					destination = "timelineWrite";
				} else if(id == "order"){
					//ajax로 db저장후 페이지전환 O
					url+="Command.do";
					destination = "orderSheet";
				}
				
				var gNumTags = document.querySelectorAll("#palate .gNum");
				var gNums = new Array();
				var i = 0;
				gNumTags.forEach(gNumTag => { gNums[i] = $(gNumTag).attr("value"); i++; });
				i= null;
				gNums = gNums.join(",");
				var formData = new FormData();
				formData.append("gNums",gNums);
				$.when(html2can()).done(function (result){
					formData.append("lookImg",Blob);
					console.log(formData.get("lookImg"));
					 $.ajax({ 
					        type : 'post',
					        url : "./"+url+".do",
					        data : formData,
					        processData : false,	// data 파라미터 강제 string 변환 방지!! 
					        contentType : false, // application/x-www-form-urlencoded; 방지!! 
					        success : function(data) {
					        	alert(data.result);
					            if(data != null && data != "[{}]"){
					            	if (destination =="timelineWrite" || destination=="orderSheet"){
					            		document.location.href= ""+destination+"Command.do?"
					            	}
					            } else {
					                 alert("전송실패 관리자에게 문의하세요"); 
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
			  xhr.open("POST","./ajax/goodsImageListCommand.do",true);
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
				var newCard = $("<div class=\"col-6 col-sm-4 col-md-3 col-lg-2 btn-outline-light\"style=\"padding-left: 5px; padding-right: 5px;\"></div>");
				var card = $("<div class=\"card border-0 mb-4\"></div>");
				var cardBody = $("<div class=\"card-body p-0\"></div>");
				var hasBack = $("<div class=\"h-150px has-background rounded mb-2\"></div>");
				var back = $("<a class=\"background\"style=\"background-image: url(&quot;${pageContext.request.contextPath}/upload/goodsImg/"+result1[i].g_fileName+"&quot;)\"></a>");
				var palImg = $("<img src=\"${pageContext.request.contextPath}/upload/goodsImg/"+result2[i].gd_fileName+"\">");
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
		    $("#goodsList").on("click", ".card-body", function() {
		        var thisIndex = $("#goodsList .card-body").index(this);	
		    	var thisCodeVal = $(this).children("p:eq(3)").text();
		    	var thisNumVal = $(this).children("small").text();
		    	var thisPalUrl = $(this).find("img").attr("src");
		    	var thisGoodsUrl = $(this).find(".background").attr("style");
		    	console.log("thisGoodsUrl----------------------");
		    	console.log(thisGoodsUrl);
		    	var boxes = $("#palate .box");
			    var gCodeVal = null;
		    	boxes.each(function(i, box){
		    	    gCodeVal = $(box).find(".gCode").attr("value");
		    	    if (gCodeVal != thisCodeVal){
		    	    	  gCodeVal=null;
		    	    }
		    	});    
		    		if (gCodeVal == null){
		    			//선택한 상품의 인덱스와 일치하는 팔레트용 이미지 출력
		    			goodsSelected = thisPalUrl;
					    goodsNum = thisNumVal;
					    goodsCode = thisCodeVal;
					    addOnPal(goodsSelected, goodsNum, goodsCode);
					    addOnDownBar(thisGoodsUrl);	    
		    		} else if(gCodeVal != null){
		    			//선택한 상품의 상품코드와 일치하는 상품 제거후 팔레트용 이미지 출력
		    			var targetGcode = $("#palate .gCode[value="+gCodeVal+"]")
		    			targetGcode.attr("value",thisCodeVal);
		    			targetGcode.prev().attr("value",""+thisNumVal);
		    			targetGcode.prev().prev().children("div").remove();
		    			targetGcode.prev().prev().append("<div class=\"background\" style=\" background-image: url(&quot;"+thisPalUrl+"&quot;)\"></div>");
		    			var goodsSelBGUrl = thisPalUrl;
		    			var downTarget = $("#downBar .gCode[value="+thisCodeVal+"]").parent();
		    			var dtIndex =  $("#downBar .avatar").index(downTarget);
		    			console.log("dddddddddddddddddddddddddd")
		    			console.log(dtIndex);
		    			downTarget.children().remove();
		    			var replace = "ok";
		    			goodsNum = thisNumVal;
					    goodsCode = thisCodeVal;
		    			addOnDownBar(thisGoodsUrl, thisIndex, replace, dtIndex);
		    		}	
		}); 
    } 
	
	
	function addOnPal(goodsSelected, goodsNum, goodsCode){
		//저장된 팔레트용 이미지를 팔레트 영역에 삽입 
		var box = $("<div class=\"box\" style=\"padding:0; margin:0;\"></div>"); 
		box.append("<div class=\"front\" style=\"padding:0; margin:0;\"></div>");
		box.append("<input type=\"hidden\" class=\"gNum\" value=\""+goodsNum+"\">");
		box.append("<input type=\"hidden\" class=\"gCode\" value=\""+goodsCode+"\">");
	    $("#palate").append(box);
	    $("#palate").children("div:last");
		$("#palate").children("div:last").children("div").append("<div class=\"background\" style=\" width:345px; padding:0; margin:0; background-image: url(&quot;"+goodsSelected+"&quot;)\"></div>");
		goodsSelected = null;
		//직전 이미지의 클래스 back으로 변경 
		var prev = $("#palate").children("div:last").prev(); //1만큼 앞요소(<div class="box">) 선택
		prev.children("div").attr("class", "back");
		// front클래스의 자식인 이미지의 style="display:none"속성 제거
		var frontImg = $(".front").children(); 
		frontImg.attr("class","background");
	}
	
	function addOnDownBar(thisGoodsUrl, thisIndex, replace, dtIndex){
		/*선택한 상품목록에 추가*/
		//선택한 상품의 background class 태그의 style 속성(이미지 url)선택해 저장 & 이름 선택해 저장 
		var goodsUrl = thisGoodsUrl.substring(23,thisGoodsUrl.length-2); 
		var gName = $(".container-fluid").find(".card-body").children(".mb-0:eq("+thisIndex+")").text();
		var goodsCode = 
		var	goodsNum =
		//swiper-slide 클래스 div 태그 생성 및 결합
			var background = $("<div class=\"background\"style=\"background-image: url(&quot;"+goodsUrl+"&quot;)\"></div>");
			var gCode = $("<input type=\"hidden\" class=\"gCode\" value=\""+goodsCode+"\">");
			var gNum = $("<input type=\"hidden\" class=\"gNum\"value=\""+goodsNum+"\">");
			palCnt = $("#palate").children().length; //palate에 적용된 옷의 개수
			//
			console.log("//////palCnt///////////");
			console.log(palCnt);
		if(replace =="ok"){
			$("#downBar .avatar:eq("+dtIndex+")").append(background);
			$("#downBar .avatar:eq("+dtIndex+")").append(gNum);
			$("#downBar .avatar:eq("+dtIndex+")").append(gCode);
			$("#downBar .avatar:eq("+dtIndex+")").text(""+gName);
			return
		}	
	    if (palCnt == 3){
			$("#downBar .avatar").append(background);
			$("#downBar .avatar").append(gNum);
			$("#downBar .avatar").append(gCode);
			$("#downBar .small").text(""+gName);
			$("#downBar .small").children().remove();
		} else if (palCnt > 3) {
			/* $("#downBar .background").attr("style","background-image: url(\""+goodsUrl+"\")"); */
			var swiperSlide = $("<div class=\"swiper-slide btn-outline-light\" style=\"padding: 0 5px 0 5px;\"></div>");
			var avatar = $("<div class=\"avatar avatar-80 has-background mb-2 rounded\"></div>");
			var name = $("<p class=\"text-uppercase small\">"+gName +"</p>");							
			avatar.append(background);
			avatar.append(gNum);
			avatar.append(gCode);
			swiperSlide.append(avatar);
			swiperSlide.append(name);
			//#downBar의 swiper-wrapper 태그에 append
			$("#downBar .swiper-wrapper:last").append(swiperSlide);
		}
	    /* //선택목록 상품 클릭하면 해당상품의 상세정보를 1) 상세정보 2) 제외 선택가능한 메뉴창 기능 
	    selectedGoods.on("click", function(){
	
		}) */
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
					$(slider).children("div").append("<div class=\"background\"style=\"background-image: url(&quot;${pageContext.request.contextPath}/images/dressroom/dressroomBG345.png&quot;)\"></div>");
					/* $(slider).children("div").append("<div class=\"background\"style=\"background-image: url(&quot;${pageContext.request.contextPath}/images/dressroom/ssamHair.png&quot;)\"></div>"); */
					//look img
					$(slider).children("div").append("<div class=\"background\"style=\"background-image: url(&quot;${pageContext.request.contextPath}/upload/lookImg/"+result[i].l_fileName+"&quot;)\"></div>");
			    	/* $("#upBar .small:eq("+i+")").text(""+result[i].m_id);
					$("#upBar .small:eq("+i+")").children().remove(); */
					$(slider).append("<p class=\"gNums\" style=\"display: none;\">"+result[i].g_nums+"</p>");
			    });
			    $("#upBar .swiper-wrapper").on("click", ".swiper-slide", function(event){
			    	console.log($(this).children(".gNums").text());
			    	var gNums = $(this).children(".gNums").text();
			    	getGoodsOnPal(gNums);
			    	getPalImgOnPal(gNums);
			    	$.when(getPalImgOnPal(gNums), getGoodsOnPal(gNums)).done(function (result1, result2){
			    		console.log("result1: "+result1);
			    		console.log("result2: "+result2);
			    		var palCnt = $("#palate").children().length;
			    		if (palCnt > 2){
			    			$("#palate .box:gt(1)").remove();
			    			$("#palate .back").attr("class","front");
			    			$("#downBar .swiper-slide:gt(0)").remove();
			    			$("#downBar .swiper-slide .has-background div").remove();
			    			$("#downBar .swiper-slide p").text("");
			    			$("#downBar .swiper-slide p").append("<br>");
			    		}
			    		$.each(result1, (i, palJson) => {
			    			var box = $("<div class=\"box\"></div>");
			    			box.append("<div class=\"front\"></div>");
			    			box.append("<input type=\"hidden\" class=\"gNum\"value=\""+palJson.g_nums+"\">");
			    			/* box.append("<input type=\"hidden\" value=\""+goodsCode+"\">"); */
			    			$("#palate").append(box);
			    			$("#palate").children("div:last");
			    		    $("#palate").children("div:last").children("div").append("<div class=\"background\" style=\"background-image: url(&quot;${pageContext.request.contextPath}/upload/goodsImg/"+palJson.gd_fileName+"&quot;)\"></div>");
			    		    var prev = $("#palate").children("div:last").prev(); //1만큼 앞요소(<div class="box">) 선택
			    			prev.children("div").attr("class", "back");
			    		});
			    		var downCnt = $("#downBar .swiper-slide").length;
			    		$.each(result2, (i, goodsJson) => {
			    			console.log("downCnt:"+downCnt);
			    			var background = $("<div class=\"background \"style=\"width:345px; background-image: url(&quot;${pageContext.request.contextPath}/upload/goodsImg/"+goodsJson.g_fileName+"&quot;)\"></div>");
			    			var gCode = $("<input type=\"hidden\" value=\""+goodsJson.g_code+"\">");
			    			var gNum = $("<input type=\"hidden\" value=\""+goodsJson.g_num+"\">");
			    			if (downCnt > 1){
			    				var swiperSlide = $("<div class=\"swiper-slide btn-outline-light\" style=\"padding: 0 5px 0 5px;\"></div>");
			    				var avatar = $("<div class=\"avatar avatar-80 has-background mb-2 rounded\"></div>");
			    				var name = $("<p class=\"text-uppercase small\">"+goodsJson.g_name+"</p>");							
			    				avatar.append(background);
			    				avatar.append(gNum);
			    				avatar.append(gCode);
			    				swiperSlide.append(avatar);
			    				swiperSlide.append(name);
			    				$("#downBar .swiper-wrapper:last").append(swiperSlide);
			    				$("#palate .box:last .gNum").attr("value",""+goodsJson.g_num);
			    				$("#palate .box:last").append("<input class=\"gCode\" type=\"hidden\" value=\""+goodsJson.g_code+"\"/>");
			    			} else if (downCnt == 1) {
			    				$("#downBar .avatar").append(background);
			    				$("#downBar .avatar").append(gNum);
			    				$("#downBar .avatar").append(gCode);
			    				$("#downBar .small").text(""+goodsJson.g_name);
			    				$("#downBar .small").children().remove();
			    				$("#palate .box:eq(1) .gNum").attr("value",""+goodsJson.g_num);
			    				$("#palate .box:eq(1)").append("<input class=\"gCode\" type=\"hidden\" value=\""+goodsJson.g_code+"\"/>");
			    				downCnt++;
			    			}
			    		});
			    	});
				});	
	}	
	
	function getGoodsOnPal(gNums){
		  var deferred = $.Deferred();
		  $.ajax({ 
		        type : "POST",
		        url : "./ajax/goodsListCommand.do?",
		        data : {g_nums: "1,2"},
		       	dataType: "json",
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
		  $.ajax({ 
		        type : "POST",
		        url : "./ajax/goodsImageListCommand.do?",
		        data : {g_nums: gNums},
		       	dataType: "json",
		        success : function(data){
		        	if (data){
		        		 deferred.resolve(data);
		        	} else{
		        		 deferred.reject("error");
		        	}
		        }       		
		 });
		 return  deferred.promise();
	}
	
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
	width: 345px;
	height:560px;
	/*  right: ; */
	/*  right: ; */
}

.back {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 345px;
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
	<div class="row" style="padding:0px; margin:0px;">
	<div class="col col-lg-1" style="max-width:75px; margin:0; padding:0"></div>
	<div class="col" style="padding:0; margin:0; align: center;">
		<!-- style="margin: 5px 15px 0px 15px; padding: 0px 0px 0px 60px" -->
		<div class="row" style="height: 25px; margin:0px; padding:0px;">
			<div class="col" style="height: 24px; padding:0px; margin:0px;">
				<h5 class="page-title">dressroom</h5>
			</div>
		</div>
		<div class="row" style="padding:0px; margin:0px;">
			<div class="col" align="center" style="min-width:345px; max-width:800px; padding: 0; margin:0px">
				<!-- my/추천룩이미지 -->
				<div class="row" id="upBar" style="min-width:345px; max-width:800px; padding: 0; margin:0px">
					<div class="col btn-danger" align="left"
						style="max-width: 100px; /* background-color: #f94620; */ color: white; padding-left: 0px; padding-right: 0px; margin:1px 0 0 0">
						LOOK목록
					</div>
					<div class="col" style="min_width: 345px padding:0; max-width:800px; padding: 0; margin:1px 0 0 0;">
						<!-- Swiper -->
						<div class="swiper-container categoriestab1 text-center">
							<div class="swiper-wrapper" style="min-width:345px; max-width:800px;">
								<div class="swiper-slide" style="padding: 0;">
									<div class="avatar avatar-80 has-background mb-2 rounded btn-outline-light">
									</div>
									<p class="text-uppercase small upSlider"><br></p>
								</div>
								<div class="swiper-slide" style="padding: 0;">
									<div class="avatar avatar-80 has-background mb-2 rounded btn-outline-light">
									</div>
									<p class="text-uppercase small upSlider"><br></p>
								</div>
								<div class="swiper-slide" style="padding: 0;">
									<div class="avatar avatar-80 has-background mb-2 rounded btn-outline-light">
									</div>
									<p class="text-uppercase small upSlider"><br></p>
								</div>
								<div class="swiper-slide" style="padding: 0;">
									<div class="avatar avatar-80 has-background mb-2 rounded btn-outline-light">
									</div>
									<p class="text-uppercase small upSlider"><br></p>
								</div>
								<div class="swiper-slide" style="padding: 0;">
									<div class="avatar avatar-80 has-background mb-2 rounded btn-outline-light">
									</div>
									<p class="text-uppercase small upSlider"><br></p>
								</div>
								<div class="swiper-slide" style="padding: 0;">
									<div class="avatar avatar-80 has-background mb-2 rounded btn-outline-light">
									</div>
									<p class="text-uppercase small upSlider"><br></p>
								</div>
								<div class="swiper-slide" style="padding: 0;">
									<div class="avatar avatar-80 has-background mb-2 rounded btn-outline-light">
									</div>
									<p class="text-uppercase small upSlider"><br></p>
								</div>
								<div class="swiper-slide" style="padding: 0;">
									<div class="avatar avatar-80 has-background mb-2 rounded btn-outline-light">
									</div>
									<p class="text-uppercase small upSlider"><br></p>
								</div>
								<div class="swiper-slide" style="padding: 0;">
									<div class="avatar avatar-80 has-background mb-2 rounded btn-outline-light">
									</div>
									<p class="text-uppercase small upSlider"><br></p>
								</div>
								<div class="swiper-slide" style="padding: 0;">
									<div class="avatar avatar-80 has-background mb-2 rounded btn-outline-light">
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
				<div class="row" style="min-width:345px; max-width:800px; padding: 0px; margin:0">
					<div class="col" style="padding: 0px; margin:0"></div>
					<div class="col-auto" style="width:345px; height:560px; padding: 0px; margin:0">
						<div class="container" id="palate" style="padding:0px; margin: 0px">
							<div class="box">
								<div class="back">
								</div>
							</div>
							<div class="box">
								<div class="front">
								</div>
							</div>
						</div>
					</div>
					<div class="col" style="padding: 0px; margin:0"></div>
				</div>
				<!-- 팔레트  -->
				<!-- 룩이미지처리 -->
					<div class="row" id="lookControll" style="min-width: 345px; max-width:800px; padding: 0; margin: 0; background-color: #ffe9e9;">
								<div class="col-3 btn-danger" id="order" style="color: #ffffff">주문</div>
								<div class="col-3 btn-danger" id="collection" style="color: #ffffff">LOOK저장</div>
								<div class="col-3 btn-danger" id="share" style="color: #ffffff">LOOK공유</div>
								<div class="col-3 btn-danger" id="reset" style="color: #ffffff">초기화</div>
					</div>
					<!-- 룩이미지처리 -->
					<!-- 선택한 옷 목록 -->
					<div class="row" id="downBar" style="min-width:345px; max-width:800px; margin:0; padding:0 10px 0 10px">
						<div class="col" align="center"
							style="padding: 0px; margin: 1px 0 0 0;">
							<!-- Swiper -->
							<div class="swiper-container categoriestab1 text-center" style="min-width:335px;">
								<div class="swiper-wrapper" style="min-width:335px;">
									<div class="swiper-slide btn-outline-light" style="padding: 0">
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
			<div class="col" style="min-width: 345px; margin: 0; padding:0px;">
						<div class="container" style="padding: 0; margin: 0;">
							<!--대분류 -->
							<div class="row" style="background-color: #f94620; padding:0px; margin:0px;">
								<div class="col btn-danger" style="padding: 0 20px 0 20px; margin:0; color: white;">
									female
									<!-- 좌/우 클릭으로 대분류(남/녀/브랜드/이벤트)변경 -->
									<!-- <a>&lt;</a> <a>&gt;</a> -->
								</div>
							</div>
							<!--대분류 -->
							<div class="row" style="padding:0px; margin:0px;">
								<!--상품목록 -->
								<div class="col" style="padding-left: 5px; padding-right: 5px; margin:0px;">
									<div class="row"  id="goodsList" style="margin: 1px; height:1,419.8‬px; overflow: auto;">
									</div>
									<!-- 팔레트용 이미지들  -->
								</div>
								<!--상품목록 -->
								<!--소분류(카테고리) -->
								<div class="col-auto" id="cateBar" align="center"
									style="padding: 0; margin:0; background-color: #ffe6e6">
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