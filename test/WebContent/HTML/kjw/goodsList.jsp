<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	window.addEventListener("load", function() {
		var categoryIndex = 0;
		var goodsIndex = 0;
		var selectedIndex = 0;
		var goodsSelected = null;
		var goodsCode = null;
		var gNumSelected = null;
		getGoodsList();
	});
	function getGoodsList(categoryNum) {
		if (categoryNum == null) {
			categoryNum = 0;
			console.log(categoryNum);
		}
		//goods table 조회
		function getList(categoryNum) {
			console.log(categoryNum);
			var deferred = $.Deferred();
			var param = "no=" + categoryNum;
			var xhr = new XMLHttpRequest();
			xhr.open("GET", "./ajax/goodsListCommand.do?" + param, true);
			xhr.addEventListener('load', function() {
				if (xhr.status === 200) {
					var obj = JSON.parse(xhr.response);
					deferred.resolve(obj); // call done() method
				} else {
					deferred.reject("HTTP error: " + xhr.status);
				}
			}, false);

			xhr.send();
			return deferred.promise();

		}
		//goodsImage table 조회
		function getPalImages() {
			var deferred = $.Deferred();
			var xhr = new XMLHttpRequest();
			xhr.open("POST", "./ajax/goodsImageListCommand.do?", true);
			xhr.addEventListener('load', function() {
				if (xhr.status === 200) {
					var obj = JSON.parse(xhr.response);
					deferred.resolve(obj); // call done() method
				} else {
					deferred.reject("HTTP error: " + xhr.status);
				}
			}, false);
			xhr.send();
			return deferred.promise();
		}

		//ajax로 비동기처리한  getList, getPalImages 리턴값 모두 가져온다음, html/css코드와 결합 & #goodsList에 append
		$
				.when(getList(categoryNum), getPalImages(categoryNum))
				.done(
						function(result1, result2) {
							for (i = 0; i < result1.length; i++) {
								var newCard = $("<div class=\"col-6 col-sm-4 col-md-3 col-lg-2\"style=\"padding-left: 5px; padding-right: 5px;\"></div>");
								var card = $("<div class=\"card border-0 mb-4\"></div>");
								var cardBody = $("<div class=\"card-body p-0\"></div>");
								var hasBack = $("<div class=\"h-150px has-background rounded mb-2\"></div>");
								var back = $("<a class=\"background\"style=\"background-image: url(&quot;${pageContext.request.contextPath}/images/goodsImg/"
										+ result1[i].g_fileName
										+ "&quot;)\"></a>");
								var palImg = $("<img src=\"${pageContext.request.contextPath}/images/goodsImg/"+result2[i].gd_fileName+"\">");
								var gnum = $("<small class=\"text-mute\">"
										+ result1[i].g_num + "</small>");
								var gname = $("<p class=\"mb-0\">"
										+ result1[i].g_name + "</p>");
								var sprice = $("<p class=\"small\">"
										+ result1[i].s_price + "</p>");
								var sid = $("<p class=\"small\">"
										+ result1[i].s_id + "</p>");
								var gcode = $("<p style=\"display: none;\">"
										+ result1[i].g_code + "</p>");
								back.append(palImg);
								hasBack.append(back);
								cardBody.append(hasBack, gnum, gname, sprice,
										sid, gcode);
								card.append(cardBody);
								newCard.append(card);
								/*console.log(newCard); //완성된 1개 요소 확인 */
								$("#goodsList").append(newCard);
							}
							GoodsClickEvent();
						});
	}
</script>
</head>
<body>
	<div class="col"
		style="min-width: 400px; margin: 0 10px 0 10px; padding-left: 10px; padding-right: 10px;">
		<div class="container" style="padding: 0 10px 0 10px; margin: 0;">
			<!--대분류 -->
			<div class="row" style="background-color: #f94620;">
				<div class="col"
					style="padding: 0 20px 0 20px; margin: 0; color: white;">
					female
					<!-- 좌/우 클릭으로 대분류(남/녀/브랜드/이벤트)변경 -->
					<a>&lt;</a> <a>&gt;</a>
				</div>
			</div>
			<!--대분류 -->
			<div class="row">
				<!--상품목록 -->
				<div class="col" style="padding-left: 5px; padding-right: 5px;">
					<div class="row" id="goodsList" style="margin: 1px;"></div>
					<!-- 팔레트용 이미지들  -->
				</div>
				<!--상품목록 -->
				<!--소분류(카테고리) -->
				<div class="col-auto" id="cateBar" align="center"
					style="padding-left: 0px; padding-right: 0px; background-color: #ffe6e6">
					<!-- a 태그에 href="상품리스트 페이지에 뿌리는 커맨드" style: 테두리 둥근 박스모양 + 클릭시 색 아이덴티티 컬러로 변하는 이벤트 -->
					<div class="row category">
						<div class="col" align="left">
							<a class="C_botton">hot</a>
						</div>
					</div>
					<div class="row category">
						<div class="col" align="left">
							<a class="C_botton">outer</a>
						</div>
					</div>
					<div class="row category">
						<div class="col" align="left">
							<a class="C_botton">top</a>
						</div>
					</div>
					<div class="row category">
						<div class="col" align="left">
							<a class="C_botton">bottom</a>
						</div>
					</div>
					<div class="row category">
						<div class="col" align="left">
							<a class="C_botton">shoes</a>
						</div>
					</div>
					<div class="row category">
						<div class="col" align="left">
							<a class="C_botton">etc</a>
						</div>
					</div>
				</div>
				<!--소분류(카테고리) -->
			</div>
		</div>
		<!-- container -->
	</div>
	<!-- 상품 검색창 -->
</body>
</html>