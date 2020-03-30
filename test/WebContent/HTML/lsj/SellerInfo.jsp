<%@ page import="dto.SellerDto"%>
<%@ page import="dao.SellerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>

<html lang="en">

<head>

<!-- daum 도로명주소 찾기 api -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>


<script>
	//모든 공백 체크 정규식
	var empJ = /\s/g;

	// 이름 정규식
	var cnameJ = /^[가-힣a-zA-Z0-9]{1,10}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
	//사업자번호 정규식
	var cnumJ = /^[0-9]{10}$/;
	// 이메일 검사 정규식
	var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	// 휴대폰 번호 정규식
	var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
	/^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/
	var birthJ = false;
	var address = $('#addr2');

	$(document).ready(function() {
		var address = $('#addr2');

		$("#updatebtn").click(function() {

			var upval_Arr = new Array(5).fill(false);

			// 이름 정규식
			if (cnameJ.test($('#cname').val())) {
				upval_Arr[0] = true;
			} else {
				upval_Arr[0] = false;
				alert('이름을 확인하세요.');
				return false;
			}

			//이메일 정규식
			if (mailJ.test($('#email').val())) {
				console.log(phoneJ.test($('#email').val()));
				upval_Arr[1] = true;
			} else {
				upval_Arr[1] = false;
				alert('이메일을 확인하세요.');
				return false;
			}
			//사업자번호
			if (cnumJ.test($('#bizNum').val())) {
				console.log(cnumJ.test($('#bizNum').val()));
				upval_Arr[2] = true;
			} else {
				upval_Arr[2] = false;
				alert('휴대폰 번호를 확인하세요.');
				return false;
			}

			// 휴대폰번호 정규식
			if (phoneJ.test($('#cpnum').val())) {
				console.log(phoneJ.test($('#cpnum').val()));
				upval_Arr[3] = true;
			} else {
				upval_Arr[3] = false;
				alert('휴대폰 번호를 확인하세요.');
				return false;
			}
			//주소확인
			if (address.val() == '') {
				upval_Arr[4] = false;
				alert('주소를 확인하세요.');
				return false;
			} else
				upval_Arr[4] = true;

			//전체 유효성 검사
			var validAll = true;
			for (var i = 0; i < upval_Arr.length; i++) {
				if (upval_Arr[i] == false) {
					validAll = false;
				}
			}
			if (validAll == true) { // 유효성 모두 통과
				alert('수정완료');
			} else {
				alert('정보를 다시 확인하세요.')
			}
			document.frm.action = "sellerupdateCk.do";
			document.frm.submit();
		});
		//이름에 특수문자 들어가지 않도록 설정
		$("#cname").blur(function() {
			if (cnameJ.test($(this).val())) {
				console.log(cnameJ.test($(this).val()));
				$("#cname_check").text('');
			} else {
				$('#cname_check').text('10자 이내로 입력하세요. (특수기호, 공백 사용 불가)');
				$('#cname_check').css('color', 'red');
			}
		});
		$("#email").blur(function() {
			if (mailJ.test($(this).val())) {
				$("#email_check").text('');
			} else {
				$('#email_check').text('이메일 양식을 확인해주세요.');
				$('#email_check').css('color', 'red');
			}
		});
		$('#bizNum').blur(function() {
			if (cnumJ.test($(this).val())) {
				console.log(cnameJ.test($(this).val()));
				$("#biznum_check").text('');
			} else {
				$('#biznum_check').text('사업자 번호를 확인해주세요 ');
				$('#biznum_check').css('color', 'red');
			}
		});

		// 휴대전화
		$('#cpnum').blur(function() {
			if (phoneJ.test($(this).val())) {
				console.log(cnameJ.test($(this).val()));
				$("#phone_check").text('');
			} else {
				$('#phone_check').text('휴대폰번호를 확인해주세요 ');
				$('#phone_check').css('color', 'red');
			}
		});
	});

	function execPostCode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
				var extraRoadAddr = ''; // 도로명 조합형 주소 변수
				// 법정동명이 있을 경우 추가한다. (법정리는 제외)
				// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
					extraRoadAddr += data.bname;
				}
				// 건물명이 있고, 공동주택일 경우 추가한다.
				if (data.buildingName !== '' && data.apartment === 'Y') {
					extraRoadAddr += (extraRoadAddr !== '' ? ', '
							+ data.buildingName : data.buildingName);
				}
				// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				if (extraRoadAddr !== '') {
					extraRoadAddr = ' (' + extraRoadAddr + ')';
				}
				// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
				if (fullRoadAddr !== '') {
					fullRoadAddr += extraRoadAddr;
				}
				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				console.log(data.zonecode);
				console.log(fullRoadAddr);

				$("[name=zip]").val(data.zonecode);
				$("[name=addr1]").val(fullRoadAddr);
				document.getElementById('zip').value = data.zonecode; //5자리 새우편번호 사용
				document.getElementById('addr1').value = fullRoadAddr;
				//document.getElementById('addr2').value = data.jibunAddress;
			}
		}).open();
	}
</script>
</head>
<body>
	<form name="frm" method="post">
		<!-- page content starts -->
		<div class="has-background bg-default-light">
			<div class="col-12 align-self-center">
				<div class="row justify-content-center">
					<div class="col-11 col-sm-7 col-md-6 col-lg-5 col-xl-3">
						<h2 class="text-center font-weight-normal mb-5">판매자 회원정보</h2>
						<div class="form-group float-label active">
							<input type="text" class="form-control " id="cname" name="cname"
								value="${dto.s_cname }"> <label
								class="form-control-label">회사명</label>
							<div class="eheck_font" id="cname_check"></div>
						</div>
						<div class="form-group float-label active">
							<input type="text" class="form-control " id="email" name="email"
								value="${dto.s_email }"> <label
								class="form-control-label">Email</label>
							<div class="eheck_font" id="email_check"></div>
						</div>
						<div class="form-group float-label active">
							<input type="text" id="bizNum" name="bizNum" maxlength="10"
								class="form-control " value="${dto.c_number }"> <label
								class="form-control-label">사업자 등록번호<span>"10자리"</span></label>
							<div class="eheck_font" id="biznum_check"></div>
						</div>

						<div class="form-group float-label active">
							<input type="tel" class="form-control " id="cpnum" name="cpnum"
								value="${dto.s_phone }" required> <label
								class="form-control-label">휴대전화번호</label>
							<div class="eheck_font" id="phone_check"></div>
						</div>
						<div class="form-group float-label active">
							<input type="text" class="form-control " id="zip" name="zip"
								readonly="readonly" value="${dto.s_zip }"> <label
								class="form-control-label">우편번호</label>

							<button type="button" class="btn btn-default"
								onclick="execPostCode();">
								<i class="fa fa-search"></i> 우편번호 찾기
							</button>


						</div>
						<div class="form-group float-label active">
							<input type="text" class="form-control " id="addr1" name="addr1"
								value="${dto.s_addr1 }" readonly="readonly" /> <label
								class="form-control-label">도로명 주소</label>
						</div>
						<div class="form-group float-label active">
							<input type="text" class="form-control " id="addr2" name="addr2"
								value="${dto.s_addr2 }" /> <label class="form-control-label">상세주소</label>
						</div>


						<span id="updatebtn" class="btn btn-lg btn-default btn-block my-4">수정</span>

					</div>
				</div>
			</div>
		</div>

	</form>
	<!-- page content ends -->
</body>
</html>