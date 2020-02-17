<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                            <h5 class="page-title">룩 상세</h5>
                        </div>
                    </div>
                    <div class="row my-3">
                        <div class="col-12 col-md-6">
                            <div class="card mb-3">
                                <a href="track.jsp" class="card-header bg-none">
                                    <div class="row">
                                        <div class="col">
                                            <p class="text-mute">2:25pm | 10/1/2020</p>
                                        </div>
                                        <div class="col-auto pr-1">
                                           <!--  <div class="badge badge-secondary"></div>
                                            <i class="material-icons">keyboard_arrow_right</i> -->
                                        </div>
                                    </div>
                                </a>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="icon icon-60 mr-3 has-background">
                                            <figure class="background">
                                                <img src="${pageContext.request.contextPath}/HTML/assets/img/image3.jpg" alt="Generic placeholder image">
                                            </figure>
                                        </div>
                                        <div class="media-body">
                                            <small class="text-mute">상의</small>
                                            <p class="mb-1">멋쟁이재킷</p>
                                            <p>40,000</p>
                                        </div>
	                                    <div><button onclick="location.href='product.do'">상세보기</button></div>
                                    </div>
                                    <hr>
                                    <div class="media">
                                        <div class="icon icon-60 mr-3 has-background">
                                            <figure class="background">
                                                <img src="${pageContext.request.contextPath}/HTML/assets/img/image5.jpg" alt="Generic placeholder image">
                                            </figure>
                                        </div>
                                        <div class="media-body">
                                            <small class="text-mute">하의</small>
                                            <p class="mb-1">못생긴바지</p>
                                            <p>30,000</p>
                                        </div>
                                        <div><button onclick="location.href='product.do'">상세보기</button></div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="row">
                                      <!--   <div class="col">
                                            <h6 class="mb-1"></h6>
                                            <p class="small text-mute">Including Delivery</p>
                                        </div> -->
                                        <div class="col-auto">
                                            <button class="btn btn-default btn-40"><i class="buttons">취소</i></button>
                                            <button class="btn btn-warning btn-40 ml-2 text-white"><i class="material-icons">star</i></button>
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
