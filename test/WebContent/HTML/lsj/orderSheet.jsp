<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<script>
	$(document).ready(function() {
		/*  $("body").attr("data-page","payment"); */
		$("#backButton").attr("class", "btn btn-link backbtn");
		$("#backbtnText").text("arrow_back");
	});

	/* div class="media">
	 <div class="icon icon-60 mr-3 has-background">
	 <figure class="background">
	 <img src="${pageContext.request.contextPath}/HTML/assets/img/image5.jpg" alt="Generic placeholder image">
	 </figure>
	 </div>
	 <div class="media-body">
	 <small class="text-mute">Rockstar</small>
	 <p class="mb-1">Shorts unisex</p>
	 <p>$ 28.99</p>
	 </div> */

	$(function() {
		var cnt = LookDao.getCount(m_id);

		for (i = 0; i > cnt; i++) {
			var dv1 = document.createElement("div");
			var fg = document.createElement("figure");
			var im = document.createElement("img");
			var sr = "${dto.g_image }";
			dv1.setAttribute("class", "icon icon-60 mr-3 has-background");
			fg.setAttribute("class", "background");
			dv1.appendChild(fg);
			fg.appendChild(im);
			im.setAttribute("src", sr);

			var dv2 = document.createElement("div");
			var sl = document.createElement("small");
			var p1 = document.createElement("p");
			var p2 = document.createElement("p");
			var gm = "${dto.g_maker}";
			var gn = "${dto.g_name}";
			var gp = "${dto.g_price}";
			dv2.setAttribute("class", "media-body");
			sl.setAttribute("class", "text-mute");
			p1.setAttribute("class", "mb-1");
			sl.appendChild(gm);
			p1.appendChild(gn);
			p2.appendChild(gp);
			dv2.appendChild(sl, p1, p2);

			var dv = document.createElement("div");
			dv.appendChild(dv1, dv2);

		}
		document.getElementId("cb").appendChild(dv);

	})
</script>
</head>
<body>
	<!-- page content start -->
	<div class="row">
		<div class="container">
			<div class="row">
				<div class="container">
					<h5 class="page-title">주문서</h5>
				</div>
			</div>
			<div class="row my-3">
				<div class="col-12 col-md-6">
					<div class="card mb-3">
						<a href="track.do" class="card-header bg-none">
							<div class="row">
								<div class="col">
									<p class="text-mute">2:25pm | 10/1/2020</p>
								</div>
								<div class="col-auto pr-1">
									<div class="badge badge-secondary">Track</div>
									<i class="material-icons">keyboard_arrow_right</i>
								</div>
							</div>
							
						</a>

						<div id="cb" class="card-body">
							<c:forEach var="dto" items="${list }">
								<div class="media">
									<div class="icon icon-60 mr-3 has-background">
										<figure class="background">
											<img src="${dto.g_image }" alt="Generic placeholder image">
										</figure>
									</div>
									<div class="media-body">
										<small class="text-mute">${dto.g_maker }</small>
										<p class="mb-1">${dto.g_name }</p>
										<p>${dto.g_price }</p>
									</div>
								</div>
							</c:forEach>
							<hr>

						</div>
						<div class="card-footer">
							<div class="row">
								<div class="col">
									<h6 class="mb-1">$ 150</h6>
									<p class="small text-mute">Including Delivery</p>
								</div>
								<div class="col-auto">
									<button class="btn btn-default btn-40">
										<i class="material-icons">repeat</i>
									</button>
									<button class="btn btn-warning btn-40 ml-2 text-white">
										<i class="material-icons">star</i>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-6">
					<div>
						<button onclick="location.href='checkout.do'">주문하기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- page content ends -->
</body>

</html>
