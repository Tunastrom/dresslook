<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<script>
$(document).ready(function(){
	/* $("body").attr("data-page","homepage"); }); */ 
	$("#codyTable").on("click",".lookCard", function(){
		var l_code = $(this).find("#l_code").attr("value");
	 	document.location.href="codyContentsCommand.do?l_code="+l_code; 
	});
});
</script> 
</head>
<body>
	<!-- page content start -->
	<div class="tab-content" id="maintabContent">
		<div class="tab-pane fade show active" id="home" role="tabpanel"
			aria-labelledby="home-tab">
		    <%--  <div class="row">   
				<div class="swiper-container offerslide2tab1 my-3">
					<div class="swiper-wrapper">
					 <div class="swiper-slide">
						<div class="container-fluid bg-purple-light">
							<div class="row no-gutters">
								<div class="col-7 py-4">
									<h3 class="font-weight-normal">Sale Festa</h3>
									<p class="text-mute">할인이벤트</p>
									<a href="" class="btn btn-sm btn-default text-uppercase">ShowNow</a>
								</div>
								<div class="col-5 align-self-end text-center">
									<img src="${pageContext.request.contextPath}/HTML/assets/img/offerimage1.png" alt="" class="mw-100">
								</div>
							</div>
						 </div>
						</div>
						<div class="swiper-slide">
						<div class="container-fluid bg-purple-light">
							<div class="row no-gutters">
								<div class="col-7 py-4">
									<h3 class="font-weight-normal">Sale Festa</h3>
									<p class="text-mute">할인이벤트</p>
									<a href="" class="btn btn-sm btn-default text-uppercase">ShowNow</a>
								</div>
								<div class="col-5 align-self-end text-center">
									<img src="${pageContext.request.contextPath}/HTML/assets/img/offerimage1.png" alt="" class="mw-100">
								</div>
							</div>
						 </div>
						</div>
						 <div class="swiper-slide">
						<div class="container-fluid bg-purple-light">
							<div class="row no-gutters">
								<div class="col-7 py-4">
									<h3 class="font-weight-normal">Sale Festa</h3>
									<p class="text-mute">할인이벤트</p>
									<a href="" class="btn btn-sm btn-default text-uppercase">ShowNow</a>
								</div>
								<div class="col-5 align-self-end text-center">
									<img src="${pageContext.request.contextPath}/HTML/assets/img/offerimage1.png" alt="" class="mw-100">
								</div>
							</div>
						 </div>
				    </div>
					<!-- 맨위 이벤트 배너 좌우 슬라이드-->
					<c:forEach items="${eventList}">
					  <div class="swiper-slide">
						<div class="container-fluid bg-purple-light">
							<div class="row no-gutters">
								<div class="col-7 py-4">
									<h3 class="font-weight-normal">${eventList}[i].headline</h3>
									<p class="text-mute">${eventList}[i].desc</p>
									<!-- event 상세페이지 링크 -->
									<a href="" class="btn btn-sm btn-default text-uppercase">ShowNow</a>
								</div>
								<div class="col-5 align-self-end text-center">
									<img src="${pageContext.request.contextPath}/HTML/assets/img/offerimage1.png" alt="" class="mw-100">
								</div>
							</div>
						 </div>
						</div>
					</c:forEach>
					</div>
					</div>
					 <div class="swiper-pagination white-pagination text-left mb-3"></div>
				</div>  --%>
				<p></p>
				<%-- <div class="row">
					<div class="container px-0">
						<!-- Swiper -->
						<div class="swiper-container categoriestab1 text-center">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<div class="avatar avatar-80 has-background mb-2 rounded">
										<div class="background">
											<img
												src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg"
												alt="">
										</div>
									</div>
									<p class="text-uppercase small">이승진</p>
								</div>
								<div class="swiper-slide">
									<div class="avatar avatar-80 has-background mb-2 rounded">
										<div class="background">
											<img
												src="${pageContext.request.contextPath}/HTML/assets/img/image7.jpg"
												alt="">
										</div>
									</div>
									<p class="text-uppercase small">김동현</p>
								</div>
								<div class="swiper-slide">
									<div class="avatar avatar-80 has-background mb-2 rounded">
										<div class="background">
											<img
												src="${pageContext.request.contextPath}/HTML/assets/img/image1.jpg"
												alt="">
										</div>
									</div>
									<p class="text-uppercase small">노상현</p>
								</div>
								<div class="swiper-slide">
									<div class="avatar avatar-80 has-background mb-2 rounded">
										<div class="background">
											<img
												src="${pageContext.request.contextPath}/HTML/assets/img/image9.jpg"
												alt="">
										</div>
									</div>
									<p class="text-uppercase small">김종우</p>
								</div>
								<div class="swiper-slide">
									<div class="avatar avatar-80 has-background mb-2 rounded">
										<div class="background">
											<img
												src="${pageContext.request.contextPath}/HTML/assets/img/image8.jpg"
												alt="">
										</div>
									</div>
									<p class="text-uppercase small">유철원</p>
								</div>
								<div class="swiper-slide">
									<div class="avatar avatar-80 has-background mb-2 rounded">
										<div class="background">
											<img
												src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg"
												alt="">
										</div>
									</div>
									<p class="text-uppercase small">이승진</p>
								</div>
								<div class="swiper-slide">
									<div class="avatar avatar-80 has-background mb-2 rounded">
										<div class="background">
											<img
												src="${pageContext.request.contextPath}/HTML/assets/img/image7.jpg"
												alt="">
										</div>
									</div>
									<p class="text-uppercase small">김동현</p>
								</div>
								<div class="swiper-slide">
									<div class="avatar avatar-80 has-background mb-2 rounded">
										<div class="background">
											<img
												src="${pageContext.request.contextPath}/HTML/assets/img/image1.jpg"
												alt="">
										</div>
									</div>
									<p class="text-uppercase small">노상현</p>
								</div>
								<div class="swiper-slide">
									<div class="avatar avatar-80 has-background mb-2 rounded">
										<div class="background">
											<img
												src="${pageContext.request.contextPath}/HTML/assets/img/image9.jpg"
												alt="">
										</div>
									</div>
									<p class="text-uppercase small">김종우</p>
								</div>
								<div class="swiper-slide">
									<div class="avatar avatar-80 has-background mb-2 rounded">
										<div class="background">
											<img
												src="${pageContext.request.contextPath}/HTML/assets/img/image8.jpg"
												alt="">
										</div>
									</div>
									<p class="text-uppercase small">유철원</p>
								</div>
							</div>
							<!-- Add Pagination -->
							<div class="swiper-pagination white-pagination text-left mb-3"></div>
						</div>
					</div>
				</div> --%>
				<!-- <div class="row my-3">
					<div class="container bg-default-light py-3">
						Swiper
						<div class="swiper-container categories2tab1 text-center">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<button class="btn btn-sm btn-white active">봄옷</button>
								</div>
								<div class="swiper-slide">
									<button class="btn btn-sm btn-white">남친</button>
								</div>
								<div class="swiper-slide">
									<button class="btn btn-sm btn-white">허깨비</button>
								</div>
								<div class="swiper-slide">
									<button class="btn btn-sm btn-white">코트</button>
								</div>
								<div class="swiper-slide">
									<button class="btn btn-sm btn-white">꽃놀이</button>
								</div>
							</div>
							Add Pagination
							<div class="swiper-pagination white-pagination text-left mb-3"></div>
						</div>
					</div>
				</div> -->
				<div class="row my-3">
					<div class="container">
						<div class="row" id="codyTable">
							<c:forEach var="Cody" items="${CodyList}">
									<div class="col-6 col-md-4 col-lg-3 lookCard ">
										<div class="card border-0 mb-4">
											<div class="card-body p-0">
												<div class="h-150px has-background rounded mb-2" style="height:560px;">
													<div class="top-right m-2">
														<button class="btn btn-sm btn-white btn-rounded">
															<i class="material-icons">favorite_border</i>
														</button>
													</div>
													<div class="bottom-left m-2">
													<!-- 	<button class="btn btn-sm btn-white">New</button> -->
													</div> 
													<div class="background">
														<img src="${pageContext.request.contextPath}/images/dressroom/dressroomBG345.png" alt="">
                            				        </div>
                            				        <div class="background">
                            				        	<img src="${pageContext.request.contextPath}/upload/lookImg/${Cody.l_fileName}" alt="">	
                            				        </div>   
												</div>
												<small class="text-mute">${Cody.tag}</small>
												<p class="mb-0">${Cody.subject}</p>	
												<p class="small">200,000</p>
												<input type="hidden" id="l_code" value="${Cody.l_code}"/>
											</div>
										</div>
									</div>
							</c:forEach>
						</div>
					</div>
				</div>
				<!-- <div class="row text-center my-3">
					<div class="col-6 col-md-4 col-lg-3 mx-auto">
						<button class="btn btn-sm btn-light btn-block">Show all</button>
					</div>
				</div> -->
				<!-- <div class="row my-3">
					<div class="container">
						<div class="card bg-default-light">
							<div class="card-body p-1">
								<div class="media">
									<div class="icon icon-50 bg-white text-default mr-2">
										<i class="material-icons">local_offer</i>
									</div>
									<div class="media-inner">
										<h5 class="mb-0 font-weight-normal">
											<b>10%</b> instant discount
										</h5>
										<p>
											<small class="text-mute">on all Credit and Debit
												cards</small>
										</p>
									</div>
									<div class="align-self-center ml-auto ">
										<div class="btn text-default">
											<i class="material-icons">arrow_forward</i>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div> -->
			</div>
			<div class="tab-pane fade" id="search" role="tabpanel"
				aria-labelledby="search-tab">
				<form id="serachFrm" name="serachFrm" action="searchResult.do" method="post">
					<div class="row">
						<div class="container">
							<div class="form-group float-label position-relative">
								<div class="bottom-right ">
									<a href=""
										class="btn btn-sm btn-link text-dark btn-rounded text-mute"><i
										class="material-icons">mic</i></a> <a href=""
										class="btn btn-sm btn-link text-dark btn-rounded text-mute"><i
										class="material-icons">camera_alt</i></a>
								</div>
								<input type="text" class="form-control"> <label
									class="form-control-label">Search</label>
							</div>
						</div>
					</div>
				</form>
				<div class="row">
					<div class="container">
						<h5 class="page-title">Tending Offers</h5>
					</div>
				</div>
				<div class="row my-3">
					<div class="container px-0">
						<!-- Swiper -->
						<div class="swiper-container offerslide2tab2 text-center">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<div class="card has-background border-0 bg-default">
										<div class="background opacity-40">
											<img
												src="${pageContext.request.contextPath}/HTML/assets/img/image6.jpg"
												alt="">
										</div>
										<div class="card-body py-5">
											<h3 class="font-weight-normal">
												Woman's<br>Collections
											</h3>
											<p class="text-mute">Upto 70% off</p>
											<a href="" class="btn btn-sm btn-default text-uppercase mt-3">Show
												Now</a>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="card has-background border-0 bg-primary text-white">
										<div class="background opacity-40">
											<img
												src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg"
												alt="">
										</div>
										<div class="card-body py-5">
											<h3 class="font-weight-normal">
												Men's<br>Collections
											</h3>
											<p class="text-mute">Upto 70% off</p>
											<a href="" class="btn btn-sm btn-default text-uppercase mt-3">Show
												Now</a>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="card has-background border-0 bg-default text-white">
										<div class="background opacity-40">
											<img
												src="${pageContext.request.contextPath}/HTML/assets/img/image1.jpg"
												alt="">
										</div>
										<div class="card-body py-5">
											<h3 class="font-weight-normal">
												Kid's<br>Collections
											</h3>
											<p class="text-mute">Upto 70% off</p>
											<a href="" class="btn btn-sm btn-default text-uppercase mt-3">Show
												Now</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Add Pagination -->
							<div class="swiper-pagination white-pagination text-left mb-3"></div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="container">
						<div class="row">
							<div class="col">
								<h5 class="page-title">Tending Offers</h5>
							</div>
							<div class="col-auto align-self-end">
								<button
									class="btn btn-sm btn-link text-dark btn-rounded text-mute menu-btn-right">
									<i class="material-icons">tune</i>
								</button>
							</div>
						</div>
					</div>
				</div>
				<div class="row my-3">
					<div class="container bg-default-light py-3">
						<!-- Swiper -->
						<div class="swiper-container categories2tab2 text-center">
							<div class="swiper-wrapper">
								<div class="swiper-slide next">
									<button class="btn btn-sm btn-white">Everything</button>
								</div>
								<div class="swiper-slide active">
									<button class="btn btn-sm btn-white active">Bottom Wear</button>
								</div>
								<div class="swiper-slide next">
									<button class="btn btn-sm btn-white">Top Wear</button>
								</div>
								<div class="swiper-slide">
									<button class="btn btn-sm btn-white">Trouser</button>
								</div>
								<div class="swiper-slide">
									<button class="btn btn-sm btn-white">Shoes</button>
								</div>
							</div>
							<!-- Add Pagination -->
							<div class="swiper-pagination white-pagination text-left mb-3"></div>
						</div>
					</div>
				</div>
				<div class="row my-3">
					<div class="container">
						<div class="row">
							<div class="col-6 col-md-4 col-lg-3">
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
											<a href="lookContents.do" class="background"> <img
												src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg"
												alt="">
											</a>
										</div>
										<small class="text-mute">Rockstar</small> <a
											href="lookContents.do">
											<p class="mb-0">Men Jacket brown</p>
										</a>
										<p class="small">$ 39.99</p>
									</div>
								</div>
							</div>
							<div class="col-6 col-md-4 col-lg-3">
								<div class="card border-0 mb-4">
									<div class="card-body p-0">
										<div class="h-150px has-background rounded mb-2">
											<div class="top-right m-2">
												<button class="btn btn-sm btn-white btn-rounded text-danger">
													<i class="material-icons ">favorite</i>
												</button>
											</div>
											<div class="bottom-left m-2">
												<button class="btn btn-sm btn-white">New</button>
											</div>
											<figure class="background">
												<img
													src="${pageContext.request.contextPath}/HTML/assets/img/image2.jpg"
													alt="">
											</figure>
										</div>
										<small class="text-mute">Adididas</small>
										<p class="mb-0">Women Jacket Black</p>
										<p class="small">$ 49.99</p>
									</div>
								</div>
							</div>
							<div class="col-6 col-md-4 col-lg-3">
								<div class="card border-0 mb-4">
									<div class="card-body p-0">
										<div class="h-150px has-background rounded mb-2">
											<div class="top-right m-2">
												<button class="btn btn-sm btn-white btn-rounded text-danger">
													<i class="material-icons">favorite</i>
												</button>
											</div>
											<div class="bottom-left m-2">
												<button class="btn btn-sm btn-white">New</button>
											</div>
											<figure class="background">
												<img
													src="${pageContext.request.contextPath}/HTML/assets/img/image5.jpg"
													alt="">
											</figure>
										</div>
										<small class="text-mute">Rockstar</small>
										<p class="mb-0">Shorts unisex</p>
										<p class="small">$ 28.99</p>
									</div>
								</div>
							</div>
							<div class="col-6 col-md-4 col-lg-3">
								<div class="card border-0 mb-4">
									<div class="card-body p-0">
										<div class="h-150px has-background rounded mb-2">
											<div class="top-right m-2">
												<button class="btn btn-sm btn-white btn-rounded">
													<i class="material-icons ">favorite_border</i>
												</button>
											</div>
											<div class="bottom-left m-2">
												<button class="btn btn-sm btn-white">New</button>
											</div>
											<figure class="background">
												<img
													src="${pageContext.request.contextPath}/HTML/assets/img/image6.jpg"
													alt="">
											</figure>
										</div>
										<small class="text-mute">Mansheri</small>
										<p class="mb-0">Women Jacket brown</p>
										<p class="small">$ 35.99</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row text-center my-3">
					<div class="col-6 mx-auto">
						<button class="btn btn-sm btn-light btn-block">Show all</button>
					</div>
				</div>
				<div class="row">
					<div class="container">
						<h5 class="page-title">Top News</h5>
					</div>
				</div>
				<div class="row">
					<div class="container">
						<div class="media my-3 w-100">
							<div class="avatar avatar-80 mr-3 has-background rounded">
								<figure class="background">
									<img
										src="${pageContext.request.contextPath}/HTML/assets/img/image9.jpg"
										class="" alt="">
								</figure>
							</div>
							<div class="media-body">
								<small class="text-mute">11-1-2020 | 24:00 am</small>
								<p class="mb-1">Lorem Ipsum is simply dummy text of the
									printing and typesetting industry.</p>
								<p class="small text-mute">Published by Maxartkiller</p>
							</div>
						</div>
						<div class="media my-3 w-100">
							<div class="avatar avatar-80 mr-3 has-background rounded">
								<figure class="background">
									<img
										src="${pageContext.request.contextPath}/HTML/assets/img/image1.jpg"
										class="" alt="">
								</figure>
							</div>
							<div class="media-body">
								<small class="text-mute">11-1-2020 | 24:00 am</small>
								<p class="mb-1">Lorem Ipsum is simply dummy text of the
									printing and typesetting industry.</p>
								<p class="small text-mute">Published by Maxartkiller</p>
							</div>
						</div>
						<div class="media my-3 w-100">
							<div class="avatar avatar-80 mr-3 has-background rounded">
								<figure class="background">
									<img
										src="${pageContext.request.contextPath}/HTML/assets/img/image8.jpg"
										class="" alt="">
								</figure>
							</div>
							<div class="media-body">
								<small class="text-mute">11-1-2020 | 24:00 am</small>
								<p class="mb-1">Lorem Ipsum is simply dummy text of the
									printing and typesetting industry.</p>
								<p class="small text-mute">Published by Maxartkiller</p>
							</div>
						</div>
						<div class="media my-3 w-100">
							<div class="avatar avatar-80 mr-3 has-background rounded">
								<figure class="background">
									<img
										src="${pageContext.request.contextPath}/HTML/assets/img/image10.jpg"
										class="" alt="">
								</figure>
							</div>
							<div class="media-body">
								<small class="text-mute">11-1-2020 | 24:00 am</small>
								<p class="mb-1">Lorem Ipsum is simply dummy text of the
									printing and typesetting industry.</p>
								<p class="small text-mute">Published by Maxartkiller</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="tab-pane fade" id="cart" role="tabpanel"
				aria-labelledby="cart-tab">
				<div class="row">
					<div class="container">
						<div class="row">
							<div class="col">
								<h5 class="page-title">My Cart</h5>
							</div>
							<div class="col-auto align-self-end">
								<h5 class="page-title small text-success">$ 109.97</h5>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="container">
						<div class="media my-3 w-100">
							<div class="avatar avatar-60 mr-3 has-background rounded">
								<div class="bottom-left m-1">
									<button class="btn btn-white btn-rounded text-danger btn-20">
										<i class="material-icons ">favorite</i>
									</button>
								</div>
								<a href="lookContents.do" class="background"> <img
									src="${pageContext.request.contextPath}/HTML/assets/img/image9.jpg"
									class="" alt="">
								</a>
							</div>
							<div class="media-body">
								<small class="text-mute">Rockstar</small> <a href="lookContents.do">
									<p class="mb-1">Men Jacket brown</p>
								</a>
								<p>
									<span class="text-success">$ 39.99</span> <span
										class="text-mute small">Size: M, Color: Brown</span>
								</p>
							</div>
							<div class="align-self-center">
								<div class="input-group cart-count">
									<div class="input-group-prepend">
										<button class="btn btn-outline-secondary" type="button">-</button>
									</div>
									<input type="text" class="form-control" placeholder=""
										value="1">
									<div class="input-group-append">
										<button class="btn btn-outline-secondary" type="button">+</button>
									</div>
								</div>
							</div>
						</div>
						<div class="media my-3 w-100">
							<div class="avatar avatar-60 mr-3 has-background rounded">
								<div class="bottom-left m-1">
									<button class="btn btn-white btn-rounded text-danger btn-20">
										<i class="material-icons ">favorite</i>
									</button>
								</div>
								<figure class="background">
									<img
										src="${pageContext.request.contextPath}/HTML/assets/img/image5.jpg"
										class="" alt="">
								</figure>
							</div>
							<div class="media-body">
								<small class="text-mute">Mediunlike</small>
								<p class="mb-1">Shorts unisex</p>
								<p>
									<span class="text-success">$ 29.99</span> <span
										class="text-mute small">Size: M, Color: white</span>
								</p>
							</div>
							<div class="align-self-center">
								<div class="input-group cart-count">
									<div class="input-group-prepend">
										<button class="btn btn-outline-secondary" type="button">-</button>
									</div>
									<input type="text" class="form-control" placeholder=""
										value="1">
									<div class="input-group-append">
										<button class="btn btn-outline-secondary" type="button">+</button>
									</div>
								</div>
							</div>
						</div>
						<div class="media my-3 w-100">
							<div class="avatar avatar-60 mr-3 has-background rounded">
								<div class="bottom-left m-1">
									<button class="btn btn-white btn-rounded btn-20">
										<i class="material-icons ">favorite_border</i>
									</button>
								</div>
								<figure class="background">
									<img
										src="${pageContext.request.contextPath}/HTML/assets/img/image6.jpg"
										class="" alt="">
								</figure>
							</div>
							<div class="media-body">
								<small class="text-mute">Mansheri</small>
								<p class="mb-1">Women Jacket brown</p>
								<p>
									<span class="text-success">$ 39.99</span> <span
										class="text-mute small">Size: M, Color: white</span>
								</p>
							</div>
							<div class="align-self-center">
								<div class="input-group cart-count">
									<div class="input-group-prepend">
										<button class="btn btn-outline-secondary" type="button">-</button>
									</div>
									<input type="text" class="form-control" placeholder=""
										value="1">
									<div class="input-group-append">
										<button class="btn btn-outline-secondary" type="button">+</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row my-3">
					<div class="container">
						<div class="form-group float-label position-relative active mb-0">
							<div class="bottom-right mb-1">
								<button class="btn btn-sm btn-success">Apply</button>
							</div>
							<input type="text" class="form-control" value="KGIDF000120">
							<label class="form-control-label">Apply Promo Code</label>
						</div>
					</div>
				</div>
				<div class="row my-3">
					<div class="container">
						<div class="card alert-success">
							<div class="card-body p-1">
								<div class="media">
									<div class="icon icon-50 bg-white text-success mr-2">
										<i class="material-icons">local_offer</i>
									</div>
									<div class="media-inner">
										<h5 class="mb-0 font-weight-normal">
											<b>10%</b> season discount<br> <small class="text-mute">Offer
												applied you have saved <b>$ 10.9</b>
											</small>
										</h5>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row my-3">
					<div class="container">
						<div class="row my-3 h6 font-weight-normal">
							<div class="col">Sub total</div>
							<div class="col text-right text-mute">$ 109.97</div>
						</div>
						<div class="row my-3 h6 font-weight-normal">
							<div class="col">Discount</div>
							<div class="col text-right text-mute">-$ 10.99</div>
						</div>
						<hr>
						<div class="row h6 font-weight-bold">
							<div class="col">Net Payable</div>
							<div class="col text-right text-mute">$ 98.98</div>
						</div>
					</div>
				</div>
				<div class="row my-3">
					<div class="container">
						<a href="checkout.do"
							class="btn btn-lg btn-default btn-block my-4">Checkout</a>
					</div>
				</div>
			</div>
			<div class="tab-pane fade" id="favorite" role="tabpanel"
				aria-labelledby="favorite-tab">
				<div class="row">
					<div class="container">
						<div class="row">
							<div class="col">
								<h5 class="page-title">My Bookmarks</h5>
							</div>
							<div class="col-auto align-self-end">
								<ul class="nav nav-pills tabs-small" id="myTab" role="tablist">
									<li class="nav-item"><a class="nav-link" id="listview-tab"
										data-toggle="tab" href="#listview" role="tab"
										aria-controls="listview" aria-selected="false"><i
											class="material-icons">view_list</i></a></li>
									<li class="nav-item"><a class="nav-link active"
										id="thumbnails-tab" data-toggle="tab" href="#thumbnails"
										role="tab" aria-controls="thumbnails" aria-selected="true"><i
											class="material-icons">view_module</i></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-content" id="tabproductd">
					<div class="tab-pane fade" id="listview" role="tabpanel"
						aria-labelledby="listview-tab">
						<div class="row">
							<div class="container">
								<div class="media my-3 w-100">
									<a href="lookContents.do"
										class="avatar avatar-60 mr-3 has-background rounded">
										<figure class="background">
											<img
												src="${pageContext.request.contextPath}/HTML/assets/img/image9.jpg"
												class="" alt="">
										</figure>
									</a>
									<div class="media-body">
										<small class="text-mute">Rockstar</small> <a
											href="lookContents.do">
											<p class="mb-1">Men Jacket brown</p>
										</a>
										<p class="small">$ 39.99</p>
									</div>
									<div class="align-self-center">
										<button class="btn btn-white btn-rounded btn-40">
											<i class="material-icons ">delete</i>
										</button>
										<button class="btn btn-white btn-rounded btn-40">
											<i class="material-icons ">local_mall</i>
										</button>
									</div>
								</div>
								<div class="media my-3 w-100">
									<div class="avatar avatar-60 mr-3 has-background rounded">
										<figure class="background">
											<img
												src="${pageContext.request.contextPath}/HTML/assets/img/image5.jpg"
												class="" alt="">
										</figure>
									</div>
									<div class="media-body">
										<small class="text-mute">Mediunlike</small>
										<p class="mb-1">Shorts unisex</p>
										<p class="small">$ 29.99</p>
									</div>
									<div class="align-self-center">
										<button class="btn btn-white btn-rounded btn-40">
											<i class="material-icons ">delete</i>
										</button>
										<button class="btn btn-white text-danger btn-rounded btn-40">
											<i class="material-icons ">local_mall</i>
										</button>
									</div>
								</div>
								<div class="media my-3 w-100">
									<div class="avatar avatar-60 mr-3 has-background rounded">
										<figure class="background">
											<img
												src="${pageContext.request.contextPath}/HTML/assets/img/image6.jpg"
												class="" alt="">
										</figure>
									</div>
									<div class="media-body">
										<small class="text-mute">Mansheri</small>
										<p class="mb-1">Women Jacket brown</p>
										<p class="small">$ 39.99</p>
									</div>
									<div class="align-self-center">
										<button class="btn btn-white btn-rounded btn-40">
											<i class="material-icons ">delete</i>
										</button>
										<button class="btn btn-white btn-rounded btn-40">
											<i class="material-icons ">local_mall</i>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade show active" id="thumbnails"
						role="tabpanel" aria-labelledby="thumbnails-tab">
						<div class="row my-3">
							<div class="container">
								<div class="row">
									<div class="col-6 col-md-4 col-lg-3">
										<div class="card border-0 mb-4">
											<div class="card-body p-0">
												<a href="lookContents.do"
													class="h-150px has-background rounded mb-2">
													<div class="top-right m-2">
														<button class="btn btn-sm btn-white btn-rounded">
															<i class="material-icons">local_mall</i>
														</button>
													</div>
													<figure class="background"
														style="background-image: url(&quot;${pageContext.request.contextPath}/HTML/assets/img/image4.jpg&quot;);">
														<img
															src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg"
															alt="" style="display: none;">
													</figure>
												</a> <small class="text-mute">Rockstar</small> <a
													href="lookContents.do">
													<p class="mb-0">Men Jacket brown</p>
												</a>
												<p class="small">$ 39.99</p>
											</div>
										</div>
									</div>
									<div class="col-6 col-md-4 col-lg-3">
										<div class="card border-0 mb-4">
											<div class="card-body p-0">
												<div class="h-150px has-background rounded mb-2">
													<div class="top-right m-2">
														<button
															class="btn btn-sm btn-white btn-rounded text-danger">
															<i class="material-icons ">local_mall</i>
														</button>
													</div>
													<figure class="background"
														style="background-image: url(&quot;${pageContext.request.contextPath}/HTML/assets/img/image2.jpg&quot;);">
														<img
															src="${pageContext.request.contextPath}/HTML/assets/img/image2.jpg"
															alt="" style="display: none;">
													</figure>
												</div>
												<small class="text-mute">Adididas</small>
												<p class="mb-0">Women Jacket Black</p>
												<p class="small">$ 49.99</p>
											</div>
										</div>
									</div>
									<div class="col-6 col-md-4 col-lg-3">
										<div class="card border-0 mb-4">
											<div class="card-body p-0">
												<div class="h-150px has-background rounded mb-2">
													<div class="top-right m-2">
														<button
															class="btn btn-sm btn-white btn-rounded text-danger">
															<i class="material-icons">local_mall</i>
														</button>
													</div>
													<figure class="background"
														style="background-image: url(&quot;${pageContext.request.contextPath}/HTML/assets/img/image5.jpg&quot;);">
														<img
															src="${pageContext.request.contextPath}/HTML/assets/img/image5.jpg"
															alt="" style="display: none;">
													</figure>
												</div>
												<small class="text-mute">Rockstar</small>
												<p class="mb-0">Shorts unisex</p>
												<p class="small">$ 28.99</p>
											</div>
										</div>
									</div>
									<div class="col-6 col-md-4 col-lg-3">
										<div class="card border-0 mb-4">
											<div class="card-body p-0">
												<div class="h-150px has-background rounded mb-2">
													<div class="top-right m-2">
														<button class="btn btn-sm btn-white btn-rounded">
															<i class="material-icons ">local_mall</i>
														</button>
													</div>
													<figure class="background"
														style="background-image: url(&quot;${pageContext.request.contextPath}/HTML/assets/img/image6.jpg&quot;);">
														<img
															src="${pageContext.request.contextPath}/HTML/assets/img/image6.jpg"
															alt="" style="display: none;">
													</figure>
												</div>
												<small class="text-mute">Mansheri</small>
												<p class="mb-0">Women Jacket brown</p>
												<p class="small">$ 35.99</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%-- 	<div class="row">
					<div class="col-11 col-md-6 col-lg-4 mx-auto">
						<figure
							class="avatar avatar-150 rounded-circle has-background mx-auto username top-75 d-block">
							<div class="background">
								<img
									src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg"
									alt="">
							</div>
						</figure>
						<h5 class="text-center mb-0 username-text">Maxartkiller</h5>
						<p class="text-center small text-mute username-text">New York,
							United States</p>

						<div class="list-group my-3">
							<a href="#" class="list-group-item list-group-item-action">Account
								<i class="material-icons float-right text-mute h6 my-0">keyboard_arrow_right</i>
							</a> <a href="#" class="list-group-item list-group-item-action">Manage
								Addresses <i
								class="material-icons float-right text-mute h6 my-0">keyboard_arrow_right</i>
							</a> <a href="#" class="list-group-item list-group-item-action">Notifications
								<i class="material-icons float-right text-mute h6 my-0">keyboard_arrow_right</i>
							</a> <a href="#" class="list-group-item list-group-item-action">Passwords
								<i class="material-icons float-right text-mute h6 my-0">keyboard_arrow_right</i>
							</a> <a href="#" class="list-group-item list-group-item-action">Languages
								<i class="material-icons float-right text-mute h6 my-0">keyboard_arrow_right</i>
							</a>
						</div>
					</div>
				</div>
			</div> --%>
			<!-- scroll to top button -->
			<button type="button"
				class="btn btn-default shadow scrollup bottom-right position-fixed btn-40">
				<i class="material-icons">expand_less</i>
			</button>
			<!-- scroll to top button ends
            <!-- page content ends -->
</body>
</html>
