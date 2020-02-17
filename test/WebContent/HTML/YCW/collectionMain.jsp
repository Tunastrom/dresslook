<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<script>
	window.addEventListener("load", function(){
		var link1 = document.querySelectorAll("btn btn-warning btn-40 ml-2 text-white");
		link1[0].addEventListener.click(function(){
			console.log(1);
			document.location.href="lookSelect.do";
		});
		$(".col-auto").on("click", function(){
			console.log(1);
			document.location.href="orderSheet.do"
		});
	})
</script>
</head>
<body>
            <!-- page content start -->
            <div class="row">
                <div class="container">
                    <div class="row">
                        <div class="container">
                            <h5 class="page-title">컬렉션</h5>
                        </div>
                    </div>
                    <div class="row my-3">
                        <div class="col-12 col-md-6">
                            <div class="card mb-3">
                                <a class="card-header bg-none">
                                    <div class="row">
                                        <div class="col">
                                           <p>2020/02/20/ | 2:25pm  </p> 
                                        </div>
                                         <div class="col-auto">
                                            <div class="badge badge-secondary">My Looks</div>
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
                                            <small class="text-mute">#봄옷</small>
                                            <p class="mb-1">봄날의여신룩</p>
                                            <p>70,000</p>
                                        </div>
                                        <!-- button은 submit으로 -->
                                        <div><button onclick="location.href='lookSelect.do'">상세보기</button></div>
                                    </div>
                                    <hr>
                                    <div class="media">
                                        <div class="icon icon-60 mr-3 has-background">
                                            <figure class="background">
                                                <img src="${pageContext.request.contextPath}/HTML/assets/img/image5.jpg" alt="Generic placeholder image">
                                            </figure>
                                        </div>
                                        <div class="media-body">
                                            <small class="text-mute">#남친</small>
                                            <p class="mb-1">오빠라고 불리게 될거야</p>
                                            <p>90,000</p>
                                        </div>
                                        	<div><button onclick="location.href='lookSelect.do'">상세보기</button></div>
                                    	</div>
                                	</div> 
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="row">
                                        <div class="col">
                                            <h6 class="mb-1">160,000</h6>
                                            <p class="small text-mute">배송비 2500</p>
                                        </div>
                                        <div class="col-auto">
                                            <button class="btn btn-default btn-40"><i class="buttons">삭제</i></button>
                                            <button class="btn btn-warning btn-40 ml-2 text-white"><i class="buttons">주문</i></button>
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
                                            <p>2020/02/20/ | 2:30pm </p> 
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
                                                <img src="${pageContext.request.contextPath}/HTML/assets/img/image3.jpg" alt="Generic placeholder image">
                                            </figure>
                                        </div>
                                        <div class="media-body">
                                            <p class="small text-mute mb-1">#봄옷</p>
                                            <h6 class="mb-1">꽃구경강추</h6>
                                            <p>50,000</p>
                                        </div>
	                                         <div><button onclick="location.href='lookSelect.do'">상세보기</button></div>
	                                    </div>
                                       </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="row">
                                        <div class="col">
                                            <h6 class="mb-1">50,000</h6>
                                            <p class="small text-mute">배송비 2500<!-- <i class="material-icons small text-warning">star</i>  Given--></p>
                                        </div>
                                        <div class="col-auto">
                                           <button class="btn btn-default btn-40"><i class="buttons">삭제</i></button>
                                            <button class="btn btn-warning btn-40 ml-2 text-white"><i class="buttons">주문</i></button>
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
