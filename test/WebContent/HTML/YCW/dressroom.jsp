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
		let imgSample = document.getElementById("backGround");
		imgSample.style.height = "360px"
		imgSample.style.height = "560px"
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

.col {
	padding: 5px;
}

. {
	width: 100px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<h5 class="page-title">드레스룸</h5>
			</div>
		</div>
		<div class="row">
			<div class="col-auto"><p style="padding-top:8px;">MY</p></div>
			<div class="col" align="center" id="upBar">
				 <button type="button">&lt;</button>		
			</div>
		</div>
		<div class="row">
			<div class="col" align="center" style="padding: 20px" >
				<div class="row">
					<div class="col">
						<img id="backGround" src="${pageContext.request.contextPath}/images/dressroom/dressroomBG.png">
					</div>
				</div>
				<form id="frm" name="frm" action="lookInsert.do" method="post">
					<div class="row">
						<div class="col">
							<input type="hidden" name="WriteORnot" id="WriteORnot" value="0">
							<button type="button" onclick="pageMove(1)" id="collection">컬렉션</button>
							<button type="button" onclick="pageMove(2)"> 주문</button >
							<button type="button" onclick="pageMove(3)" id="share">룩공유</button>
						</div>
					</div>
				</form>
				<div class="row">
					<div class="col" align="center" id="downBar">
						 <button>&lt;</button>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="container">
					<div class="row">
						<div class="col" style="padding-left: 20px;">
							female
							<button>&lt;</button>
							<button>&gt;</button>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<div class="row">
								<c:forEach items="${list}" var="dto">
									<div class="col" id="products"><!--  -6 col-md-4 col-lg-3 -->
										<div class="card border-0 mb-4">
											<div class="card-body p-0">
												<div class="h-150px has-background rounded mb-2">
													<div class="top-right m-2">
														<button class="btn btn-sm btn-white btn-rounded">
															<i class="material-icons">favorite_border</i>
														</button>
													</div>
													<div class="bottom-left m-2">
														<button class="btn btn-sm btn-white">New</button>
													</div>					
													<a href="lookContents.do" class="background">
														<img src="${dto.getStringImage()}" alt="">
													</a>
												</div>
												<small class="text-mute">#남친</small>
												<p class="mb-0">${dto.getG_name()}</p>
												<p class="small">${dto.getS_price}</p>
												<p class="small">${dto.getS_id()}</p>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>	<!-- row -->	
						</div> <!-- col -->
						<div class="col-auto" id="cateBar">
							<div class="row">
								<div class="col" id="category">
									<button>hot</button>
								</div>
							</div>
							<div class="row">
								<div class="col" id="category">
									<button>outer</button>
								</div>
							</div>
							<div class="row">
								<div class="col" id="category">
									<button>top</button>
								</div>
							</div>
							<div class="row">
								<div class="col" id="category">
									<button>bottom</button>
								</div>
							</div>
							<div class="row">
								<div class="col" id="category">
									<button>shoes</button>
								</div>
							</div>
							<div class="row">
								<div class="col" id="category">
									<button>etc</button>
								</div>
							</div>
						</div>
						<div class="col-auto"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>