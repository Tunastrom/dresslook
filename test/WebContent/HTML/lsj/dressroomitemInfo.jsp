<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>

</head>

<body>

	<!-- page content start -->
	<!-- Swiper -->
	<div class="swiper-container gallery-top">
		<div class="swiper-wrapper">
			<div class="swiper-slide has-background">
				<div class="background">
					<img
						src="${pageContext.request.contextPath}/HTML/assets/img/image1.jpg"
						alt="">
				</div>
			</div>
			<div class="swiper-slide has-background">
				<div class="background">
					<img
						src="${pageContext.request.contextPath}/HTML/assets/img/image2.jpg"
						alt="">
				</div>
			</div>
			<div class="swiper-slide has-background">
				<div class="background">
					<img
						src="${pageContext.request.contextPath}/HTML/assets/img/image3.jpg"
						alt="">
				</div>
			</div>
			<div class="swiper-slide has-background">
				<div class="background">
					<img
						src="${pageContext.request.contextPath}/HTML/assets/img/image1.jpg"
						alt="">
				</div>
			</div>
			<div class="swiper-slide has-background">
				<div class="background">
					<img
						src="${pageContext.request.contextPath}/HTML/assets/img/image2.jpg"
						alt="">
				</div>
			</div>
			<div class="swiper-slide has-background">
				<div class="background">
					<img src=""
						${pageContext.request.contextPath}/HTML/assets/img/image3.jpg" alt="">
				</div>
			</div>
		</div>
		<!-- Add Arrows -->
		<div class="swiper-button-next swiper-button-white"></div>
		<div class="swiper-button-prev swiper-button-white"></div>
	</div>
	<div class="swiper-container gallery-thumbs">
		<div class="swiper-wrapper">
			<div class="swiper-slide has-background">
				<div class="background">
					<img
						src="${pageContext.request.contextPath}/HTML/assets/img/image1.jpg"
						alt="">
				</div>
			</div>
			<div class="swiper-slide has-background">
				<div class="background">
					<img
						src="${pageContext.request.contextPath}/HTML/assets/img/image2.jpg"
						alt="">
				</div>
			</div>
			<div class="swiper-slide has-background">
				<div class="background">
					<img
						src="${pageContext.request.contextPath}/HTML/assets/img/image3.jpg"
						alt="">
				</div>
			</div>
			<div class="swiper-slide has-background">
				<div class="background">
					<img
						src="${pageContext.request.contextPath}/HTML/assets/img/image1.jpg"
						alt="">
				</div>
			</div>
			<div class="swiper-slide has-background">
				<div class="background">
					<img
						src="${pageContext.request.contextPath}/HTML/assets/img/image2.jpg"
						alt="">
				</div>
			</div>
			<div class="swiper-slide has-background">
				<div class="background">
					<img src=""
						${pageContext.request.contextPath}/HTML/assets/img/image3.jpg" alt="">
				</div>
			</div>
		</div>
	</div>
	<hr>
	<div class="row">
		<div class="container">
			<p class="text-mute mb-1">Rockstar</p>
			<h5>Men Jacket brown</h5>
			<h5 class="text-success">$ 39.99</h5>
			<hr>
			<div class="row">
				<div class="col">
					<div class="input-group cart-count cart-count-lg">
						<div class="input-group-prepend">
							<button class="btn btn-outline-secondary" type="button">-</button>
						</div>
						<input type="text" class="form-control" placeholder="" value="1">
						<div class="input-group-append">
							<button class="btn btn-outline-secondary" type="button">+</button>
						</div>
					</div>
				</div>
				<div class="col-auto">
					<button class="btn btn-default">
						<i class="material-icons">local_mall</i> Add to Cart
					</button>
				</div>
			</div>
			<hr>
			<p class="text-mute">${goodsDTO.info}</p>
			<br>


			<h6 class="page-title">Customer Review</h6>
			<div class="card my-3">
				<div class="card-body border-0">
					<h6>"${answerDTO.contents }"</h6>
				</div>
				<div class="card-footer">
					<div class="media">
						<div class="avatar avatar-40 mr-2 has-background">
							<figure class="background">
								<img
									src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg"
									alt="Generic placeholder image">
							</figure>
						</div>
						<div class="media-body">
							<h6 class="mb-1">Johnson Johny</h6>
							<p class="text-mute small">
								Vennama, USA | <span class="text-warning icon_star"></span><span
									class="text-warning icon_star"></span><span
									class="text-warning icon_star"></span><span
									class="text-warning icon_star"></span><span
									class="text-warning material-icons h6 my-0">star</span> 5.0
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- page content ends -->

</body>

</html>
