<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
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
	var goodsIndex = 0;
	var goodsSelected = null;
	var goodsCode = null;
	var gNumSelected = null;
	var goodscnt = 0;
	$(document)
			.ready(
					function() {
						//JSON타입 dto객체 List 불러오기
						/* $.ajax({
							type :"post",
							url : "/track.do",
							dataType : "ajax",
							error : function() {
								alert("조회 실패");
							},
							success : function(Parse_data) {
								$("#Parse_Area").html(Parse_data);
								alert("조회 값" + Parse_data)
							};
						}) */
						//상품 클릭시 팔레트 위에 배치
						var goods = $(".container-fluid").find(".card-body"); //card-body들 변수에 저장
						for (i = 0; i < goods.length; i++) {
							//카테고리에 마우스 올리면 해당 카테고리의 이름 변수에 담는 이벤트

							//카테고리 클릭시 해당 카테고리에 해당하는 상품 리스트 조회해서 뿌리는 이벤트 

							//상품에 마우스 올리면 해당 상품의 인덱스 변수에 담는 이벤트 
							goods[i].addEventListener("mouseover", function() {
								goodsIndex = $(this.parentNode.parentNode)
										.index();
								console.log(goodsIndex);
							})
							//상품클릭시 팔레트에 해당 상품의 pal이미지 출력하는 이벤트
							goods[i]
									.addEventListener(
											"click",
											function() {
												//선택한 상품의 인덱스와 일치하는 팔레트용 이미지 저장
												goodsSelected = $("#palImages")[0].children[goodsIndex].children[0];
												goodsCode = $(".card-body")[goodsIndex].children[0];
												console.log(goodsSelected);
												//저장된 팔레트용 이미지를 팔레트 영역에 삽입 
												$("#palate")[0].append(document
														.createElement("div"));
												$("#palate")[0].lastChild
														.append(goodsSelected);
												$("#palate")[0].lastChild.children[0]
														.append(goodsCode);
												goodsSelected = null;
												goodsCode = null
												//가장 최근 이미지에 front클래스 추가 및 부모(div)에 box 클래스 추가
												var appended = $("#palate")[0].lastChild;
												appended.setAttribute("class",
														"box");
												appended.children[0]
														.setAttribute("class",
																"front");
												//직전 이미지의 클래스 back으로 변경 
												var prev = $("#palate")[0].lastChild.previousSibling; //1만큼 앞요소(<div class="box">) 선택
												if (goodscnt == 0) {
													prev = $("#palate")[0].lastChild.previousSibling.previousSibling; //최초실행시만 2만큼 앞 요소 선택
												}
												prev.children[0].setAttribute(
														"class", "back");
												// front클래스의 자식인 이미지의 style="display:none"속성 제거
												var frontImg = $(".front")[0].children[0];
												frontImg.setAttribute("class",
														"");
												//선택한 상품목록에 추가
												goodsSelected = $(".card-body")[goodsIndex].children[0].children[1];
												gNumSelected = $("#palImages")[0].children[goodsIndex].children[1];
												$("#downBar")[0]
														.append(document
																.createElement("a"));
												var div = bardocument
														.createElement("div");
												div.addClass("col-2");
												var barImage = div
														.append(goodsSelected);
												$("#downBar")[0].children[0]
														.append(barImage);
												/* 		$("#downBar")[0].children[0].lastChild.children[0].setAttribute("class","background");  */
												$("#downBar")[0].children[0].lastChild.children[0].children[0]
														.setAttribute("class",
																"");

												frontImg.addEventListener(
														"click", function() {

														})
												goodscnt++;
											});
						}
						/* category[0].on("click", function() {
							console.log(this);
							document.location.href = "/test/category" + +".do";
						}); */
					});
	function pageMove(x) {
		var pageValue = x;
		if (pageValue == 2) {
			// 룩저장할지 묻는 알림창  
		}
		frm.WriteORnot.value = pageValue;
		frm.submit();
	}
</script>
<style>
/* div {
	border: 1px solid gray;
} */

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
	color: white;
}

.box {
	float: left;
	position: relative;
}

.front {
	position: static; */
	top: -20px;
	/*  bottom: ; */
	left: -20px;
	/*  right: ; */
}

.back {
	position: absolute;
	/* margin: 0px 30px; */
	top: 0px;
	/*  bottom: ; */
	left: 0px;
	/*  right: ; */
}

#cateBar {
	width: 100px;
}
</style>
</head>
<body>
	<!-- 페이지 크기가 col-lg일때는 패딩 적용하고, col일때는 적용안하도록 이벤트 설정 -->
	<div class="tab-contents" style="margin: 5px 15px 0px 15px; padding: 0px 0px 0px 60px">
		<div class="row" style="height: 35px;">
			<div class="col" style="height: 34px;">
				<h5 class="page-title">드레스룸</h5>
			</div>
		</div>
		<div class="row">
			<div class="col-auto" align="center"
				style="padding: 0px 10px 0 10px;">
				<!-- my/추천룩이미지 -->
				<div class="row">
					<div class="col" align="left"
						style=" width: 45px; max-width: 600px; background-color: #f94620; color: white; padding-left: 0px; padding-right: 0px;">
						<p>추천</p>
					</div>
						<div class="col" align="center" style="max-width: 555px; padding: 0; margin:5px 0 0 0;">
							<!-- Swiper -->
							<div class="swiper-container categoriestab1 text-center">
								<div class="swiper-wrapper">
									<div class="swiper-slide" style="padding: 0 5px 0 5px;">
										<div class="avatar avatar-80 has-background mb-2 rounded">
											<div class="background">
												<img
													src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg"
													alt="">
											</div>
										</div>
										<p class="text-uppercase small">이승진</p>
									</div>
									<div class="swiper-slide" style="padding: 0 5px 0 5px;">
										<div class="avatar avatar-80 has-background mb-2 rounded">
											<div class="background">
												<img
													src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg"
													alt="">
											</div>
										</div>
										<p class="text-uppercase small">이승진</p>
									</div>
									<div class="swiper-slide" style="padding: 0 5px 0 5px;">
										<div class="avatar avatar-80 has-background mb-2 rounded">
											<div class="background">
												<img
													src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg"
													alt="">
											</div>
										</div>
										<p class="text-uppercase small">이승진</p>
									</div>
									<div class="swiper-slide" style="padding: 0 5px 0 5px;">
										<div class="avatar avatar-80 has-background mb-2 rounded">
											<div class="background">
												<img
													src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg"
													alt="">
											</div>
										</div>
										<p class="text-uppercase small">이승진</p>
									</div>
									<div class="swiper-slide" style="padding: 0 5px 0 5px;">
										<div class="avatar avatar-80 has-background mb-2 rounded">
											<div class="background">
												<img
													src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg"
													alt="">
											</div>
										</div>
										<p class="text-uppercase small">이승진</p>
									</div>
									<div class="swiper-slide" style="padding: 0 5px 0 5px;">
										<div class="avatar avatar-80 has-background mb-2 rounded">
											<div class="background">
												<img
													src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg"
													alt="">
											</div>
										</div>
										<p class="text-uppercase small">이승진</p>
									</div>
									<div class="swiper-slide" style="padding: 0 5px 0 5px;">
										<div class="avatar avatar-80 has-background mb-2 rounded">
											<div class="background">
												<img
													src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg"
													alt="">
											</div>
										</div>
										<p class="text-uppercase small">이승진</p>
									</div>
									<div class="swiper-slide" style="padding: 0 5px 0 5px;">
										<div class="avatar avatar-80 has-background mb-2 rounded">
											<div class="background">
												<img
													src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg"
													alt="">
											</div>
										</div>
										<p class="text-uppercase small">이승진</p>
									</div>
									<div class="swiper-slide" style="padding: 0 5px 0 5px;">
										<div class="avatar avatar-80 has-background mb-2 rounded">
											<div class="background">
												<img
													src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg"
													alt="">
											</div>
										</div>
										<p class="text-uppercase small">이승진</p>
									</div>
								</div>
							</div>
							<!-- swiper -->
						</div>
				</div>
				<!-- my/추천룩이미지 -->
				<!-- 팔레트  -->
				<div class="row" style="padding: 0px;">
					<div class="col" style="padding: 0px;"></div>
					<div class="col-auto" style="padding: 0px;">
						<div class="container" id="palate">
							<div class="box">
								<div class="front">
									<img id="backGround"
										src="${pageContext.request.contextPath}/images/dressroom/dressroomBG.png">
								</div>
							</div>
						</div>
					</div>
					<div class="col" style="width: 5px; padding: 0px;"></div>
				</div>
				<!-- 팔레트  -->
				<!-- 룩이미지처리 -->
				<form id="frm" name="frm" action="lookInsert.do" method="post">
				<div class="row"  align="center" style="max-width: 555px; padding: 0; margin: 0px; background-color: #ffe9e9;">
						<div class="col" >
							<input type="hidden" name="WriteORnot" id="WriteORnot" value="0">
							<div class="row">
								<div class="col-3" id="collection" style="color:white">컬렉션</div>
								<div class="col-3" id="order" style="color:white">주문</div>
								<div class="col-3" id="reset" style="color:white">초기화</div>
								<div class="col-3" id="share" style="color:white">룩공유</div>
							</div>
						<!-- 	<button type="button" onclick="pageMove(1)" id="collection">컬렉션</button>
							<button type="button" onclick="pageMove(2)" id="collection">주문</button>
							<button type="button" onclick="pageMove(3)">초기화</button>
							<button type="button" onclick="pageMove(4)" id="share">룩공유</button> -->
						</div>
					</div>
					<!-- 룩이미지처리 -->
					<!-- 선택한 옷 목록 -->
					<div class="row" id="downBar">
						<div class="col" align="center"
							style="max-width: 600px; padding: 0px; margin:5px 0 0 0;">
							<!-- Swiper -->
							<div class="swiper-container categoriestab1 text-center">
								<div class="swiper-wrapper">
									<div class="swiper-slide" style="padding: 0 5px 0 5px;">
										<div class="avatar avatar-80 has-background mb-2 rounded">
											<div class="background">
												<img
													src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg"
													alt="">
											</div>
										</div>
										<p class="text-uppercase small">이승진</p>
									</div>
									<div class="swiper-slide" style="padding: 0 5px 0 5px;">
										<div class="avatar avatar-80 has-background mb-2 rounded">
											<div class="background">
												<img
													src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg"
													alt="">
											</div>
										</div>
										<p class="text-uppercase small">이승진</p>
									</div>
									<div class="swiper-slide" style="padding: 0 5px 0 5px;">
										<div class="avatar avatar-80 has-background mb-2 rounded">
											<div class="background">
												<img
													src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg"
													alt="">
											</div>
										</div>
										<p class="text-uppercase small">이승진</p>
									</div>
									<div class="swiper-slide" style="padding: 0 5px 0 5px;">
										<div class="avatar avatar-80 has-background mb-2 rounded">
											<div class="background">
												<img
													src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg"
													alt="">
											</div>
										</div>
										<p class="text-uppercase small">이승진</p>
									</div>
									<div class="swiper-slide" style="padding: 0 5px 0 5px;">
										<div class="avatar avatar-80 has-background mb-2 rounded">
											<div class="background">
												<img
													src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg"
													alt="">
											</div>
										</div>
										<p class="text-uppercase small">이승진</p>
									</div>
									<div class="swiper-slide" style="padding: 0 5px 0 5px;">
										<div class="avatar avatar-80 has-background mb-2 rounded">
											<div class="background">
												<img
													src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg"
													alt="">
											</div>
										</div>
										<p class="text-uppercase small">이승진</p>
									</div>
									<div class="swiper-slide" style="padding: 0 5px 0 5px;">
										<div class="avatar avatar-80 has-background mb-2 rounded">
											<div class="background">
												<img
													src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg"
													alt="">
											</div>
										</div>
										<p class="text-uppercase small">이승진</p>
									</div>
									<div class="swiper-slide" style="padding: 0 5px 0 5px;">
										<div class="avatar avatar-80 has-background mb-2 rounded">
											<div class="background">
												<img
													src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg"
													alt="">
											</div>
										</div>
										<p class="text-uppercase small">이승진</p>
									</div>
									<div class="swiper-slide" style="padding: 0 5px 0 5px;">
										<div class="avatar avatar-80 has-background mb-2 rounded">
											<div class="background">
												<img
													src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg"
													alt="">
											</div>
										</div>
										<p class="text-uppercase small">이승진</p>
									</div>
								</div>
							</div>
							<!-- swiper -->
						</div>
					</div>
				</form>
				<!-- 선택한 옷 목록 -->
			</div>
			<!-- 상품 검색창 -->
			<div class="col" style="padding-left: 0px; padding-right: 0px;">
				<div class="row" style="margin-left: 0px; margin-right: 0px;">
					<div class="col" style="padding: 0px;"></div>
					<!--좌 여백 -->
					<!-- 내용 -->
					<div class="col-auto" style="width: 1225px; padding: 0px;">
						<div class="container" style="margin: 0px;">
							<!--대분류 -->
							<div class="row" style="background-color: #f94620;">
								<div class="col" style="padding-left: 20px; color: white;">
									female
									<!-- 좌/우 클릭으로 대분류(남/녀/브랜드/이벤트)변경 -->
									<a>&lt;</a> <a>&gt;</a>
								</div>
							</div>
							<!--대분류 -->
							<div class="row">
								<!--상품목록 -->
								<div class="col" style="padding-left: 5px; padding-right: 5px;">
									<div class="row" style="margin: 1px;">
										<c:forEach var="dto1" items="${list1}">
											<div class="col-6 col-lg-2"
												style="padding-left: 5px; padding-right: 5px;">
												<div class="card border-0 mb-4">
													<div class="card-body p-0">
														<input type="hidden" name="gcode"
															value="${dto1.getG_code()}">
														<div class="h-150px has-background rounded mb-2">
															<a class="background"> <img
																src="${dto1.getStringImage()}" alt="">
															</a>
															<div class="h-150px has-background rounded mb-2">
																<a> <img class="selected"
																	src="${dto1.getStringImage()}">
																</a>
															</div>
														</div>
														<small class="text-mute">${dto1.getG_num()}</small>
														<p class="mb-0">${dto1.getG_name()}</p>
														<p class="small">${dto1.getS_price()}</p>
														<p class="small">${dto1.getS_id()}</p>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
									<!-- 팔레트용 이미지들 -->
									<div class="row" id="palImages" style="display: none">
										<c:forEach var="dto2" items="${list2}">
											<div class="col" style="display: none">
												<div>
													<img class="pal" src="${dto2.stringImage}">
												</div>
												<input type="hidden" name="gnum" value="${dto2.g_num}">
												<input type="hidden" name="img_type"
													value="${dto2.img_type}">
											</div>
										</c:forEach>
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
					<!-- 내용 -->
					<div class="col" style="padding: 0px;"></div>
					<!--우 여백 -->
				</div>
				<!-- row -->
			</div>
			<!-- 상품 검색창 -->
		</div>
		<!-- col -->
</body>
</html>