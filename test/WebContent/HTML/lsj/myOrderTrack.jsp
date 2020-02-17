<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>


</head>

<body>

	<!-- page content start -->
	<div class="content-container position-relative">
		<div class="background">
			<iframe
				src="https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d1673.7852979506179!2d-96.7491854141914!3d32.96234470682535!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e1!4m5!1s0x864c1f6010ad9fa5%3A0xef88cc03e9f241d0!2s800%20W%20Arapaho%20Rd%2C%20Richardson%2C%20TX%2075080%2C%20United%20States!3m2!1d32.9632687!2d-96.74868839999999!4m5!1s0x864c1f60237f3e21%3A0x8d5642e5b5461c9e!2sChampion%20Insurance%20Agency%2C%20819%20W%20Arapaho%20Rd%2C%20Richardson%2C%20TX%2075080%2C%20United%20States!3m2!1d32.9619108!2d-96.74914369999999!5e0!3m2!1sen!2sin!4v1577940080642!5m2!1sen!2sin"
				width="100%" height="100%" frameborder="0" style="border: 0;"
				allowfullscreen=""></iframe>
		</div>
		<div class="row mx-0">
			<div class="col-12 col-md-8 col-lg-5 col-xl-4 mx-auto align-self-end">
				<div class="card shadow mb-4">
					<div class="card-body">
						<div class="media">
							<div class="icon icon-60 mr-3 has-background">
								<figure class="background">
									<img
										src="${pageContext.request.contextPath}/HTML/assets/img/image3.jpg"
										alt="Generic placeholder image">
								</figure>
							</div>
							<div class="media-body">
								<small class="text-mute">2 Items</small>
								<p class="mb-1">Women Jacket Black, Shorts unisex</p><!--  주문번호, 상품번호 조인 -->
								<p class="text-mute">Last station: Canada</p> <!-- 배송지 -->
							</div>
						</div>
					</div>
					<div class="card-footer justify-content-center">
						<button class="btn btn-default" data-target="#callmodal"
							data-toggle="modal"> <!-- 배송업체 전화번를 모달창으로 불러옴 -->
							<i class="material-icons">call</i> Call
						</button>
						<a href="chat.jsp" class="btn btn-warning text-white ml-2"><i
							class="material-icons">chat</i> Chat</a><!--  채팅창으로 연결, 채팅 미구현시 삭제해도 무방 -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- page content ends -->






</body>

</html>
