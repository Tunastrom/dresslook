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
			xhr.open("GET", "./goodsList.do?" + param, true);
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

	}
</script>
</head>
<body>
	<div>
		<script>
			
		</script>
	</div>

</body>
</html>