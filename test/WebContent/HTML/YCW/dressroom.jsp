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
	$(document).ready(function() {
						//상품 클릭시 팔레트 위에 배치
						var goods = $(".container-fluid").find(".card-body"); //card-body들 변수에 저장
						for (i = 0; i < goods.length; i++) {
							goods[i].addEventListener("mouseover", function() {
								goodsIndex = $(this.parentNode.parentNode)
										.index();
								console.log(goodsIndex);
							})
							goods[i].addEventListener("click",function() {
								//선택한 상품의 인덱스와 일치하는 팔레트용 이미지 저장
								goodsSelected = $("#palImages")[0].children[goodsIndex].children[2];
								goodsIndex = null;
								console.log(goodsSelected);
								//저장된 팔레트용 이미지를 팔레트 영역에 삽입 
								$("#palate")[0].append(document.createElement("div"));
								$("#palate")[0].lastChild.append(goodsSelected);
								goodsSelected = null;
								//가장 최근 이미지에 front클래스 추가 및 부모(div)에 box 클래스 추가
								var appended = $("#palate")[0].lastChild;
					            appended.setAttribute("class","box");
								appended.children[0].setAttribute("class","front");
								//직전 이미지의 클래스 back으로 변경 
								var prev = $("#palate")[0].lastChild.previousSibling.previousSibling;
								prev.children[0].setAttribute("class", "back");
								// front클래스 이미지의 style="display:none"속성 제거
								$(".front")[0].children[0].setAttribute("class","");
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
div {
	border: 1px solid gray;
}

.pal { display: none; }

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
	/* position: absolute; */
	top: 0px;
	/*  bottom: ; */
	left: 0px;
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
	<div class="container">
		<div class="row">
			<div class="col">
				<h5 class="page-title" style="padding-bottom: 8px;">드레스룸</h5>
			</div>
		</div>
		<div class="row">
			<div class="col-auto">
				<p style="padding-top: 8px;">MY</p>
			</div>
			<div class="col" align="center" id="upBar">
				<button type="button">&lt;</button>
			</div>
		</div>
		<div class="row">
			<div class="col" align="center" style="padding: 20px">
				<div class="row">
					<div class="col" style="padding: 0px;"></div>
					<div class="col-auto" id="palate" align="center" style="padding: 0px;">
						<div class="box">
							<div class="front">
								<img id="backGround"
									src="${pageContext.request.contextPath}/images/dressroom/dressroomBG.png">
							</div>
						</div>
					</div>
					<div class="col" style="width: 5px; padding: 0px;"></div>
				</div>
				<form id="frm" name="frm" action="lookInsert.do" method="post">
					<div class="row">
						<div class="col">
							<input type="hidden" name="WriteORnot" id="WriteORnot" value="0">
							<button type="button" onclick="pageMove(1)" id="collection">컬렉션</button>
							<button type="button" onclick="pageMove(2)">주문</button>
							<button type="button" onclick="pageMove(3)" id="share">룩공유</button>
						</div>
					</div>
				</form>
				<div class="row">
					<div class="col" align="center" id="downBar">
						<a>&lt;</a>
					</div>
				</div>
			</div>
			<div class="col" style="padding-left: 5px; padding-right: 5px;">
				<div class="row" style="margin-left: 1px; margin-right: 1px;">
					<div class="col" style="padding: 0px;"></div>
					<div class="col-auto" style="width: 625px; padding: 0px;">
						<div class="container">
							<div class="row" style="background-color: #f94620;">
								<div class="col" style="padding-left: 20px; color: white;">
									female
									<!-- 좌/우 클릭으로 남/녀/브랜드/이벤트변경 -->
									<a>&lt;</a> <a>&gt;</a>
								</div>
							</div>
							<div class="row">
								<div class="col" style="padding-left: 5px; padding-right: 5px;">
									<div class="row" style="margin: 1px;">
										<c:forEach var="dto1" items="${list1}">
											<div class="col-6 col-md-4 col-lg-4"
												style="padding-left: 5px; padding-right: 5px;">
												<div class="card border-0 mb-4">
													<div class="card-body p-0">
														<div class="h-150px has-background rounded mb-2">
															<a class="background"> <img
																src="${dto1.getStringImage()}" alt="">
															</a>
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
									<div class="row" id="palImages" style="display: none">
										<c:forEach var="dto2" items="${list2}">
											<div class="col" style="display: none">
												<div>
													<p style="display: none">${dto2.getG_num()}</p>
												</div>
												<div >
													<p style="display: none">${dto2.getImg_type()}</p>
												</div>
												<div>
													<img class="pal" src="${dto2.getStringImage()}">
												</div>
											</div>
										</c:forEach>
									</div>
									<!-- row -->
								</div>
								<!-- col -->
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
							</div>
						</div>
						<!-- container -->
					</div>
					<div class="col" style="padding: 0px;"></div>
				</div>
				<!-- col-auto -->
			</div>
		</div>
		<!-- col -->
</body>
</html>