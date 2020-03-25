<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
</head>

<body>


	<!-- page content start -->
	<div class="row">
		<div class="container">
			<div class="row">
				<div class="container">
					<h5 class="page-title">주문 상세</h5>
				</div>
			</div>
			<div class="row my-3">
				<div class="col-12 col-md-6">
					<div class="card mb-3">
						<a href="myOrderTrack.do" class="card-header bg-none">
							<div class="row">
								<div class="col">
									<p class="text-mute">2:25pm | 10/1/2020</p>
								</div>
								<div class="col-auto pr-1">
									<div class="badge badge-secondary">My Looks</div>
									<i class="material-icons">keyboard_arrow_right</i>
								</div>
							</div>
						</a>
						<div class="card-body">
							<div class="media">
								<div class="icon icon-60 mr-3 has-background">
									<figure class="background">
										<img
											src="${pageContext.request.contextPath}/HTML/assets/img/image3.jpg"
											alt="Generic placeholder image"><%-- ${GoodsDto.g_image}으로 대체--%>
									</figure>
								</div>
								<div class="media-body">
									<small class="text-mute">${GoodsDto.g_maker }</small>
									<p class="mb-1">${GoodsDto.g_name }</p>
									<p>${GoodsDto.g_price }</p>
								</div>
								<div><button onclick="location.href='track.do'">배송정보</button></div>
							</div>
							<hr>
							<div class="media">
								<div class="icon icon-60 mr-3 has-background">
									<figure class="background">
										<img
											src="${pageContext.request.contextPath}/HTML/assets/img/image5.jpg"
											alt="Generic placeholder image"><%-- ${GoodsDto.g_image}으로 대체--%>
									</figure>
								</div>
								<div class="media-body">
									<small class="text-mute">${GoodsDto.g_maker }</small>
									<p class="mb-1">${GoodsDto.g_name }</p>
									<p>${GoodsDto.g_price }</p>
								</div>
								<div><button onclick="location.href='track.do'">배송정보</button></div>
							</div>
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
									<p class="text-mute">2:25pm | 10/1/2020</p>
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
											alt="Generic placeholder image"><%-- ${GoodsDto.g_image}으로 대체--%>
									</figure>
								</div>
								<div class="media-body">
									<h6 class="mb-1">${GoodsDto.g_maker }</h6>
									<p class="small text-mute mb-1">${GoodsDto.g_name }</p>
									<p>${GoodsDto.g_price }</p>
								</div>
								<div><button onclick="location.href='myOrderTrack.do'">배송정보</button></div>
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
	
	<div align="center" id="dv">
	<br />
		<h1>회원 목록</h1>
		<table class="table table-hover">
			<tr>
				<th scope="col">주문일자</th>
			    <th scope="col">판매자</th>
				<th scope="col">상품명</th>
				<th scope="col">주문금액</th>
				<th scope="col">주문상태</th>
				<th scope="col">배송지 주소1</th>
				<th scope="col">배송지 주소2</th>
				
			</tr>
					
			<c:forEach var="dto" items="${list}">
			<tr>
				<td>${dto.o_date }</td>
				<td>${dto.s_id }</td>
				<td>${dto.g_name }</td>
				<td>${dto.o_price }</td>
				<td>${dto.o_code }</td>
				<td>${dto.m_addr1 }</td>
				<td>${dto.m_addr2 }</td>
				
			</tr>			
			</c:forEach>
			
		</table>
	</div>
	
	
	
	
	
	
	
	
</body>

</html>
