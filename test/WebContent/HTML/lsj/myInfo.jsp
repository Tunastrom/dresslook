<%@ page import="dto.MemberDto"%>
<%@ page import="dao.MemberDao"%>
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
        var nameJ = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
        // 이메일 검사 정규식
        var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
        // 휴대폰 번호 정규식
        var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
        /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/
        var birthJ = false;
        var address = $('#addr2');



        $(document).ready(function () {
            var address = $('#addr2');

            $("#updatebtn").click(function () {

                var upval_Arr = new Array(5).fill(false);
                // 이름 정규식
                if (nameJ.test($('#name').val())) {
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
                // 휴대폰번호 정규식
                if (phoneJ.test($('#pnum').val())) {
                    console.log(phoneJ.test($('#pnum').val()));
                    upval_Arr[2] = true;
                } else {
                    upval_Arr[2] = false;
                    alert('휴대폰 번호를 확인하세요.');
                    return false;
                }
                //주소확인
                if (address.val() == '') {
                    upval_Arr[3] = false;
                    alert('주소를 확인하세요.');
                    return false;
                } else
                    upval_Arr[3] = true;
                // 생년월일 정규식
                if (birthJ) {
                    console.log(birthJ);
                    upval_Arr[4] = true;
                } else {
                    upval_Arr[4] = false;
                    alert('생년월일을 확인하세요.');
                    return false;
                }

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
                document.frm.action = "memberupdateCk.do";
                document.frm.submit();
            });

            $("#name").blur(function () {
                if (nameJ.test($(this).val())) {
                    console.log(nameJ.test($(this).val()));
                    $("#name_check").text('');
                } else {
                    $('#name_check').text('한글 2~4자 이내로 입력하세요. (특수기호, 공백 사용 불가)');
                    $('#name_check').css('color', 'red');
                }
            });
            $("#email").blur(function () {
                if (mailJ.test($(this).val())) {
                    $("#email_check").text('');
                } else {
                    $('#email_check').text('이메일 양식을 확인해주세요.');
                    $('#email_check').css('color', 'red');
                }
            });
            // 생일 유효성 검사
            var birthJ = false;
            // 생년월일 birthJ 유효성 검사
            $('#birth').blur(function () {
                var dateStr = $(this).val();
                var year = Number(dateStr.substr(0, 4)); // 입력한 값의 0~4자리까지 (연)
                var month = Number(dateStr.substr(4, 2)); // 입력한 값의 4번째 자리부터 2자리 숫자 (월)
                var day = Number(dateStr.substr(6, 2)); // 입력한 값 6번째 자리부터 2자리 숫자 (일)
                var today = new Date(); // 날짜 변수 선언
                var yearNow = today.getFullYear(); // 올해 연도 가져옴
                if (dateStr.length <= 8) {
                    // 연도의 경우 1900 보다 작거나 yearNow 보다 크다면 false를 반환합니다.
                    if (year > yearNow || year < 1900) {
                        $('#birth_check').text('생년월일을 확인해주세요');
                        $('#birth_check').css('color', 'red');
                    }
                    else if (month < 1 || month > 12) {
                        $('#birth_check').text('생년월일을 확인해주세요 ');
                        $('#birth_check').css('color', 'red');
                    } else if (day < 1 || day > 31) {
                        $('#birth_check').text('생년월일을 확인해주세요 ');
                        $('#birth_check').css('color', 'red');
                    } else if ((month == 4 || month == 6 || month == 9 || month == 11) && day == 31) {
                        $('#birth_check').text('생년월일을 확인해주세요 ');
                        $('#birth_check').css('color', 'red');
                    } else if (month == 2) {
                        var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
                        if (day > 29 || (day == 29 && !isleap)) {
                            $('#birth_check').text('생년월일을 확인해주세요 ');
                            $('#birth_check').css('color', 'red');
                        } else {
                            $('#birth_check').text('');
                            birthJ = true;
                        }
                    } else {
                        $('#birth_check').text('');
                        birthJ = true;
                    }//end of if
                } else {
                    //1.입력된 생년월일이 8자 초과할때 : auth:false
                    $('#birth_check').text('생년월일을 확인해주세요 ');
                    $('#birth_check').css('color', 'red');
                }
            }); //End of method /*
            // 휴대전화
            $('#pnum').blur(function () {
                if (phoneJ.test($(this).val())) {
                    console.log(nameJ.test($(this).val()));
                    $("#phone_check").text('');
                } else {
                    $('#phone_check').text('휴대폰번호를 확인해주세요 ');
                    $('#phone_check').css('color', 'red');
                }
            });
        });

        function execPostCode() {
            new daum.Postcode({
                oncomplete: function (data) {
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
                        extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
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
                        <h1 class="text-center font-weight-normal mb-5">회원정보</h1>

                        <div class="form-group float-label active">
                            <input type="text" class="form-control " id="name" name="name" value="${dto.m_name }">
                            <label class="form-control-label">이름</label>
                            <div class="eheck_font" id="name_check"></div>
                        </div>
                        <div class="form-group float-label active">
                            <input type="text" class="form-control " id="email" name="email" value="${dto.m_email }">
                            <label class="form-control-label">Email</label>
                            <div class="eheck_font" id="email_check"></div>
                        </div>
                        <div class="form-group float-label active">
                            <input type="tel" class="form-control " id="pnum" name="pnum" value="${dto.m_phone }"
                                required> <label class="form-control-label">휴대전화번호</label>
                            <div class="eheck_font" id="phone_check"></div>
                        </div>
                        <div class="form-group float-label active">
                            <input type="text" class="form-control " id="zip" name="zip" value="${dto.m_zip }"
                                readonly="readonly"> <label class="form-control-label">우편번호</label>

                            <button type="button" class="btn btn-default" onclick="execPostCode();">
                                <i class="fa fa-search"></i> 우편번호 찾기
                            </button>

                        </div>
                        <div class="form-group float-label active">
                            <input type="text" class="form-control " id="addr1" name="addr1" value="${dto.m_add1 }"
                                readonly="readonly" /> <label class="form-control-label">도로명 주소</label>
                        </div>
                        <div class="form-group float-label active">
                            <input type="text" class="form-control " id="addr2" name="addr2" value="${dto.m_add2 }" />
                            <label class="form-control-label">상세주소</label>
                        </div>
                        <div class="form-group float-label active">
                            <input type="text" class="form-control " id="birth" name="birth" value="${dto.m_birth }">
                            <label class="form-control-label">생년월일</label>
                            <div class="eheck_font" id="birth_check"></div>
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