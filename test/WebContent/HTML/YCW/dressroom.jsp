<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script>
	$(document).ready(function() {
		var url = "/test/ajax/imageGet.do"
		var data = null;
		var callback = function(lookList) {
			console.log(lookList);
			for (i = 0; i < lookList.length; i++) {
				$("#downBar").append("<img src=\""+lookList[i].link+"\">");
			}
			$("#downBar").append("<button>&gt;</button>");
		}
		$.getJSON(url, data, callback);
		console.log("end");
	});
</script>
<script>
	function toCollection() {
		frm.WriteORnot.value = 1;
		frm.submit();
	}
	
	function toOrderSheet() {
		frm.WriteORnot.value = 2;
		frm.submit();
	}

	function toShare() {
		frm.WriteORnot.value = 3;
		frm.submit();
	}
</script>
<style>
	.container .row .col { border:2px;}
</style>
</head>
<body>
 <div class="container">
   <div class="row">
   	<div class="container">
       <h5 class="page-title">드레스룸</h5>
    </div>
   </div>
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
					<img src="${pageContext.request.contextPath}/images/dressroom/dressroomBG.png">
				</div>
			</div>
			<div class="row">
				<div class="col">
					<form id="frm" name="frm" action="lookInsert.do" method="post" onsubmit="">
						<input type="hidden" name="WriteORnot" id="WriteORnot" value="0">
						<button type="button" onclick="toCollection()" id="collection">컬렉션</button>
						<button>주문</button onclick="toOrderSheet()">
						<button type="button" onclick="toShare()" id="share">룩공유</button>
				</div>
			</div>
		</div>
		</form>
		<div class="col">
			<div class="container">
				<div class="row">
					<div class="col">
						female
						<button>&lt;</button>
						<button>&gt;</button>
					</div>
				</div>
				<div class="row">
					<div class="col">s
						<div class="row">
							<div class="col">
								<img src="${pageContext.request.contextPath}/images/dressroom/product1.PNG">
							</div>
						</div>
						<div class="row">
							<div class="col">
								<img src="${pageContext.request.contextPath}/images/dressroom/product2.PNG">
							</div>
						</div>
					</div>
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
				<div class="col" align="center" id="downBar">
					MY
					<button>&lt;</button>

				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>