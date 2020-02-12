<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script>
	$(document).ready(function(){
		var url ="/test/ajax/imageGet.do"
		var data = null;
		var callback  = function(imgList){
							for(i=0; i<imgList.length; i++){
								$("#upBar").append("<img src=\""+imgList[i].link+"\">")
							}
							$("#upBar").append("<button>&gt;</button>");
						}
			$.getJSON(url,data,callback);
	});
</script>
</head>
<body>
	<div class="row">
		<div class="col" align="center">
			<div class="row">
				<div class="col" id="upBar">
					<button type="button">&lt;</button>
						
					
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col" align="center">
			<div class="row">
				<div class="col">
			<img src="images/dresslook/look.png"></div></div>
			<div class="row">
				<div class="col">
					<button>셀렉션</button>
					<button>초기화</button>
					<button>룩공유</button></div></div></div>
		<div class="col">
			<div class="container">
				<div class="row">
					<div class="col">
					female <button>&lt;</button><button>&gt;</button>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<div class="row">
							<div class="col">
								<img src="images/dresslook/product1.PNG"></div></div>
						<div class="row">
							<div class="col">
								<img src="images/dresslook/product2.PNG"></div></div></div>
					<div class="col">
						<div class="row">
							<div class="col">
								<button>인기</button>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<button>아우터</button>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<button>상의</button>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<button>하의</button>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<button>신발</button>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<button>기타</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col">
			<div class="row">
				<div class="col" align="center">
				MY
				<button>&lt;</button>
					<img src="images/dresslook/glasses.png">
			        <img src="images/dresslook/glasses.png">
					<img src="images/dresslook/glasses.png">
					<img src="images/dresslook/glasses.png">
					<img src="images/dresslook/glasses.png">
					<img src="images/dresslook/glasses.png">
				<button>&gt;</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>