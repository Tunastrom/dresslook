<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
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
	$(document).ready(function() {
		//상품 클릭시 팔레트 위에 배치 
		
		category[0].on("click", function() {
			console.log(this);
			document.location.href = "/test/category" + +".do";
		});
		t
	});

	function pageMove(x) {
		var pageValue = x;
		if (pageValue == 2){
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

.category { width: 100px; height:50px;}

.C_botton { color: white; }

.box {float: left; position:relative;}

.front { /* position:absolute;  */
         top: 0;
       /*  bottom: ; */
         left: 0; 
       /*  right: ; */}

.back { position:absolute;  
		/* margin: 0px 30px; */
        top: 0;
       /*  bottom: ; */
        left: 0; 
       /*  right: ; */}

#cateBar { width: 100px; }

#mannequin { width:160; height: 460px; position }

#top {width: 180px; height: 300;}

 
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
					<div class="col" style="padding:0px;"></div>
					<div class="col-auto" id="palate" align="center" style="padding: 0px;">
						<div>
							 <div class="box">
						   	<img id="backGround"
							    	src="${pageContext.request.contextPath}/images/dressroom/dressroomBG.png"></div>
							<%--  <div class="box">
							  	<img id="top" class="front"
							    	src="${pageContext.request.contextPath}/images/coat1.gif"></div>  --%>
						</div>	    
					</div>
					<div class="col" style=" width: 5px; padding:0px;"></div>
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
			<div class="col-auto" style="width:715px; padding-left: 5px; padding-right: 5px;">
			<div class="container">
				<div class="row" style="background-color:#f94620;">
					<div class="col" style="padding-left: 20px; color:white;">
						female
						<!-- 좌/우 클릭으로 남/녀/브랜드/이벤트변경 -->
						<a>&lt;</a>
						<a>&gt;</a>
					</div>
				</div>
				<div class="row">
					<div class="col" style="padding-left: 5px; padding-right: 5px;">
						<div class="row" style="margin: 1px;">
							<c:forEach var="dto" items="${list}">
								<div class="col-6 col-md-4 col-lg-4"
									style="padding-left: 5px; padding-right: 5px;">
									<div class="card border-0 mb-4">
										<div class="card-body p-0">
											<div class="h-150px has-background rounded mb-2">
											<!-- 	<div class="bottom-left m-2">
													<a class="btn btn-sm btn-white">New</a>
												</div> -->
												<a href="lookContents.do" class="background"> <img
													src="${dto.getStringImage()}" alt="">
												</a>
											</div>
											<small class="text-mute"></small>
											<p class="mb-0">${dto.getG_name()}</p>
											<p class="small">${dto.getS_price()}</p>
											<p class="small">${dto.getS_id()}</p>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
						<!-- row -->
					</div>
					<!-- col -->
					<div class="col-auto" id="cateBar" align="center" style="padding-left: 0px; padding-right: 0px; background-color: #ffe6e6">
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
			</div>
		</div>
	</div>
</body>
</html>