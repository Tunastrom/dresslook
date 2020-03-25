<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="dto.OrdDetailDto"%>
<%@ page import="dao.OrdDetailDao"%>
<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	ArrayList<OrdDetailDto> list = (ArrayList<OrdDetailDto>) session.getAttribute("m_id");
%>


<!doctype html>
<html lang="en">

<head>
<script type="text/javascript">
	var date = new Date();
	var today = date.toLocaleDateString();
	var time = date.toLocaleTimeString();
	$(document).ready(function() {
		var x = time + " | " + today;
		document.getElementById("clk").innerHTML = x;
		document.getElementById("clk1").innerHTML = x;

	});
</script>






</head>

<body>


	<!-- page content start -->
	<div class="row">
		<div class="container">
			<div class="row">
				<div class="container">
					<h5 class="page-title">주문 내역</h5>
				</div>
			</div>



			<div class="row my-3">
				<%
					if (list == null || list.size() <= 0) {
				%>
				현재 주문 목록이 비었습니다
				<%
					} else {
				%>
				<div class="col-12 col-md-6">
					<div class="card mb-3">
						<a href="track.do" class="card-header bg-none">
							<div class="row">
								<div class="col">
									<p class="text-mute" id="clk"></p>
								</div>
								<div class="col-auto pr-1">
									<div class="badge badge-secondary">My Looks</div>
									<i class="material-icons">keyboard_arrow_right</i>
								</div>
							</div>
						</a>
						<%
							for (int i = 0; i > list.size(); i++) {
									OrdDetailDto dto = list.get(i);
						%>
						<div class="card-body">
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
								<div>
									<button onclick="location.href='track.do'">배송정보</button>
								</div>
							</div>
							<hr>
							<%
								}
							%>
							<%
								}
							%>
						</div>
						<div class="card-footer">
							<div class="row">
								<div class="col">
									<h6 class="mb-1">${OrdDto.o_price }</h6>
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
					<div class="card mb-3">
						<div class="card-header bg-none">
							<div class="row">
								<div class="col">
									<p class="text-mute" id="clk1"></p>
								</div>
								<div class="col-auto">
									<div class="badge badge-success">Liked Looks</div>
								</div>
							</div>
						</div>
						<div class="card-body position-relative">
							<div class="media">
								<div class="icon icon-60 mr-3 has-background">
									<figure class="background">
										<img
											src="${pageContext.request.contextPath}/HTML/assets/img/image3.jpg"
											alt="Generic placeholder image">
										<%-- ${GoodsDto.g_image}으로 대체--%>
									</figure>
								</div>
								<div class="media-body">
									<h6 class="mb-1">${GoodsDto.g_maker }</h6>
									<p class="small text-mute mb-1">${GoodsDto.g_name }</p>
									<p>${GoodsDto.g_price }</p>
								</div>
								<div>
									<button onclick="location.href='track.do'">배송정보</button>
								</div>
							</div>

						</div>
						<div class="card-footer">
							<div class="row">
								<div class="col">
									<h6 class="mb-1">${OrdDto.o_price }</h6>
									<p class="small text-mute">
										Including Delivery and offers | 4.8 <i
											class="material-icons small text-warning">star</i> Given
									</p>
								</div>
								<div class="col-auto">
									<button class="btn btn-default btn-40">
										<i class="material-icons">repeat</i>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- page content ends -->

</body>

</html>
