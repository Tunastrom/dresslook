<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function pValue() {
		document.getElementById("userId").value = opener.document.loginInfo.id.value;
	}
	function idCheck() {
		var id = document.getElementById("userId").value;
		
		if(!id) {
			alert("아이디를 입력하지 않았습니다.");
			return false;
			
		} else if( (id < "0" || id > "9") && (id < "A" || id > "Z") && (id < "a" || id >"z") ) {
			alert("한글 및 특수문자는 아이디로 사용하실 수 없습니다.");
			return false;
			
		} else {
			var param="id="+ id
			httpRequest = new XMLHttpRequest();
            httpRequest.onreadystatechange = callback;
			httpRequest.open("POST", "IdCheckAction.do", true);    
            httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); 
            httpRequest.send(param);
			
		}
			
	}
	function callback() {
		if (httpRequest.readyState == 4) {
			//결과값을 가져온다.
			var resultText = httpRequest.responseText;
			if (resultText == 0) {
				alert("사용할 수 없는 아이디입니다.");
				document.getElementById("cancelBtn").style.visibility = 'visible';
				document.getElementById("useBtn").style.visibility = 'hidden';
				document.getElementById("msg").innerHTML = "";
			} else if (resultText == 1) {
				document.getElementById("cancelBtn").style.visibility = 'hidden';
				document.getElementById("useBtn").style.visibility = 'visible';
				document.getElementById("msg").innerHTML = "사용 가능한 아이디입니다.";
			}
		}
	}
	function sendCheckValue() {
		//중복체크 결과인 idCheck 값을 전달
		opener.document.loginInfo.idDuplication.value = "idCheck";
		//회원가입 화면의 ID 입력란에 값을 전달
		opener.document.loginInfo.id.value = document.getElementById("userId").value;

		if (opener != null) {
			opener.chkForm = null;
			self.close();
		}
	}
</script>
</head>
<body onload="pValue()">
	<div id="wrap" align="center">
		<br> <b><font size="4" color="gray">아이디 중복체크</font></b>
		<hr size="1" width="460">
		<br>
		<div id="chk">
			<form id="checkForm">
				<input type="text" name="idinput" id="userId"> 
				<input type="button" value="중복확인" onclick="idCheck()">
			</form>
			<div id="msg"></div>
			<br> <input type="button" id="cancelBtn" value="취소" onclick="window.close()"><br> 
				<input type="button" id="useBtn" value="사용하기" onclick="sendCheckValue()">

		</div>
	</div>

</body>
</html>