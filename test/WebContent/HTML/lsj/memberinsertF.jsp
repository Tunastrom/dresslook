<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <!-- daum 도로명주소 찾기 api -->
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

    <script type="text/javascript">
        //모든 공백 체크 정규식
        var empJ = /\s/g;
        //아이디 정규식
        var idJ = /^[a-z0-9][a-z0-9_\-]{4,19}$/;
        // 비밀번호 정규식
        var pwJ = /^[A-Za-z0-9]{4,12}$/;
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
            //아이디 중복확인
            $("#userID").blur(function () {
                if ($('#userID').val() == '') {
                    $('#id_check').text('아이디를 입력하세요.');
                    $('#id_check').css('color', 'red');
                } else if (idJ.test($('#userID').val()) != true) {
                    $('#id_check').text('4~12자의 영문, 숫자만 사용 가능합니다.');
                    $('#id_check').css('color', 'red');
                } else if ($('#userID').val() != '') {
                    var userID = $('#userID').val();
                    $.ajax({
                        async: true,
                        type: 'POST',
                        data: userID,//userID라는 이름으로 userID라는 데이터를 @WebServlet("/registerCheck.do")에 보내겠다
                        url: './ajax/registerCheck.do',
                        dateType: 'json',
                        contentType: "application/json; charset=UTF-8",
                        success: function (data) {
                            if (data.cnt > 0) {
                                $('#id_check').text('중복된 아이디 입니다.');
                                $('#id_check').css('color', 'red');
                                $("#usercheck").attr("disabled", true);
                            } else {
                                if (idJ.test(userID)) {
                                    $('#id_check').text('사용가능한 아이디 입니다.');
                                    $('#id_check').css('color', 'blue');
                                    $("#usercheck").attr("disabled", false);
                                }
                                else if (userID == '') {
                                    $('#id_check').text('아이디를 입력해주세요.');
                                    $('#id_check').css('color', 'red');
                                    $("#usercheck").attr("disabled", true);
                                }
                                else {
                                    $('#id_check').text("아이디는 소문자와 숫자 4~12자리만 가능합니다.");
                                    $('#id_check').css('color', 'red');
                                    $("#usercheck").attr("disabled", true);
                                }
                            }
                        }
                    });//ajax///
                }//else if
            });//blur
            $('form').on('submit', function () {
                var inval_Arr = new Array(10).fill(false);
                if (idJ.test($('#userID').val())) {
                    inval_Arr[0] = true;
                } else {
                    inval_Arr[0] = false;
                    alert('아이디를 확인하세요.');
                    return false;
                }
                // 비밀번호가 같은 경우 && 비밀번호 정규식
                if (($('#userPW').val() == ($('#userPW2').val()))
                    && pwJ.test($('#userPW').val())) {
                    inval_Arr[1] = true;
                } else {
                    inval_Arr[1] = false;
                    alert('비밀번호를 확인하세요.');
                    return false;
                }
                // 이름 정규식
                if (nameJ.test($('#name').val())) {
                    inval_Arr[2] = true;
                } else {
                    inval_Arr[2] = false;
                    alert('이름을 확인하세요.');
                    return false;
                }
                //이메일 정규식
                if (mailJ.test($('#email').val())) {
                    console.log(phoneJ.test($('#email').val()));
                    inval_Arr[3] = true;
                } else {
                    inval_Arr[3] = false;
                    alert('이메일을 확인하세요.');
                    return false;
                }
                // 휴대폰번호 정규식
                if (phoneJ.test($('#pnum').val())) {
                    console.log(phoneJ.test($('#pnum').val()));
                    inval_Arr[4] = true;
                } else {
                    inval_Arr[4] = false;
                    alert('휴대폰 번호를 확인하세요.');
                    return false;
                }
                //주소확인
                if (address.val() == '') {
                    inval_Arr[5] = false;
                    alert('주소를 확인하세요.');
                    return false;
                } else
                    inval_Arr[5] = true;
                // 생년월일 정규식
                if (birthJ) {
                    console.log(birthJ);
                    inval_Arr[6] = true;
                } else {
                    inval_Arr[6] = false;
                    alert('생년월일을 확인하세요.');
                    return false;
                }
                //성별 확인
                /* if (member.mem_gender[0].checked == false && member.mem_gender[1].checked == false) { 
                     inval_Arr[7] = false;
                     alert('성별을 확인하세요.');
                     return false;
                 } else {
                     inval_Arr[7] = true; 
                 } */
                if (!$("input:checked[id='box1']").is(":checked")) {
                    inval_Arr[7] = false;
                    alert("전체 동의를 확인해주세요");
                    $("#box1").focus();
                    return false;
                } else {
                    inval_Arr[7] = true;
                }


                if (!$("input:checked[id='box2']").is(":checked")) {
                    inval_Arr[8] = false;
                    alert("약관을 확인해주세요");
                    $("#box2").focus();
                    return false;
                } else {
                    inval_Arr[8] = true;
                }

                if (!$("input:checked[id='box3']").is(":checked")) {
                    inval_Arr[9] = false;
                    alert("개인정보 이용동의는 필수사항입니다");
                    $("#box3").focus();
                    return false;
                } else {
                    inval_Arr[9] = true;
                }
                //전체 유효성 검사
                var validAll = true;
                for (var i = 0; i < inval_Arr.length; i++) {
                    if (inval_Arr[i] == false) {
                        validAll = false;
                    }
                }
                if (validAll == true) { // 유효성 모두 통과
                    alert('가입완료');
                } else {
                    alert('정보를 다시 확인하세요.')
                }
            });
            $('#userID').blur(function () {
                if (idJ.test($('#userID').val())) {
                    console.log('true');
                    $('#id_check').text('');
                } else {
                    console.log('false');
                    $('#id_check').text('5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.');
                    $('#id_check').css('color', 'red');
                }
            });
            $('#userPW').blur(function () {
                if (pwJ.test($('#userPW').val())) {
                    console.log('true');
                    $('#pw_check').text('');
                } else {
                    console.log('false');
                    $('#pw_check').text('4~12자의 숫자 , 문자로만 사용 가능합니다.');
                    $('#pw_check').css('color', 'red');
                }
            });
            //1~2 패스워드 일치 확인
            $('#userPW2').blur(function () {
                if ($('#userPW').val() != $(this).val()) {
                    $('#pw2_check').text('비밀번호가 일치하지 않습니다.');
                    $('#pw2_check').css('color', 'red');
                } else {
                    $('#pw2_check').text('');
                }
            });
            //이름에 특수문자 들어가지 않도록 설정
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
        //우편번호 찾기 버튼 클릭시 발생 이벤트
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
                    /* var a = console.log(data.zonecode);
                    var b = console.log(fullRoadAddr);
                    if(a == null || b = null){
                    alert("주소를 확인하세요.");
                    return false;
                    } */
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

<body class="ui-rounded sidebar-fill header-fill">



    <!-- page content starts -->
    <div class="has-background bg-default-light">
        <div class="login-container">
            <div class="row no-gutters">
                
                <div class="col-12 align-self-center">
                    <div class="row justify-content-center">
                        <div class="col-11 col-sm-7 col-md-6 col-lg-5 col-xl-3">
                            <h1 class="text-center font-weight-normal mb-5">회원가입</h1>
                            <form action="memberInsertOk.do" method="post" name="loginInfo">
                                <div class="form-group float-label active">

                                    <input type="text" class="form-control" id="userID" name="userID"> <label
                                        class="form-control-label">Id</label>
                                    <div class="eheck_font" id="id_check"></div>
                                </div>

                                <div class="form-group float-label">
                                    <input type="password" class="form-control" id="userPW" name="userPW"> <label
                                        class="form-control-label">비밀번호</label>
                                    <div class="eheck_font" id="pw_check"></div>
                                </div>
                                <div class="form-group float-label">
                                    <input type="password" class="form-control" id="userPW2" name="userPW2"> 
                                    <label class="form-control-label">비밀번호  확인</label>
                                    <div class="eheck_font" id="pw2_check"></div>
                                </div>
                                <div class="form-group float-label active">
                                    <input type="text" class="form-control " id="name" name="name">
                                    <label class="form-control-label">이름</label>
                                    <div class="eheck_font" id="name_check"></div>
                                </div>
                                <div class="form-group float-label active">
                                    <input type="text" class="form-control " id="email" name="email"> <label
                                        class="form-control-label">Email</label>
                                    <div class="eheck_font" id="email_check"></div>
                                </div>
                                <div class="form-group float-label active">
                                    <input type="tel" class="form-control " id="pnum" name="pnum" required> <label
                                        class="form-control-label">휴대전화번호</label>
                                    <div class="eheck_font" id="phone_check"></div>
                                </div>
                                <div class="form-group float-label active">
                                    <input type="text" class="form-control " id="zip" name="zip" readonly="readonly">
                                    <label class="form-control-label">우편번호</label>

                                    <button type="button" class="btn btn-default" onclick="execPostCode();">
                                        <i class="fa fa-search"></i> 우편번호 찾기
                                    </button>


                                </div>
                                <div class="form-group float-label active">
                                    <input type="text" class="form-control " id="addr1" name="addr1"
                                        readonly="readonly" /> <label class="form-control-label">도로명 주소</label>
                                </div>
                                <div class="form-group float-label active">
                                    <input type="text" class="form-control " id="addr2" name="addr2" /> <label
                                        class="form-control-label">상세주소</label>
                                </div>
                                <div class="form-group float-label active">
                                    <input type="text" class="form-control " id="birth" name="birth"> <label
                                        class="form-control-label">생년월일</label>
                                    <div class="eheck_font" id="birth_check"></div>
                                </div>

                                <div class="form-group float-label active">
                                    <p>성별</p>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                                <input type="radio" id="gender" name="gender" value="050"
                                                    aria-label="Radio button for following text input"
                                                    checked="checked"> 남 
                                                <input type="radio" id="gender" name="gender"
                                                    value="051" aria-label="Radio button for following text input"> 여
                              
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group float-label active">

                                        <input type="checkbox" id="box1" name="box1" value="Bike"> 전체동의<br> 
                                        <input type="checkbox" id="box2" name="box2" value="Car"> 이용약관<br>
                                        <input type="checkbox" id="box3" name="box3" value="Boat" checked> 개인정보 이용동의(필수)<br> 
                                        <label class="form-control-label">이용약관</label>
                                    </div>
                                </div>
                                <input type="submit" class="btn btn-lg btn-default btn-block my-4" value="Sign up">
                                <input type="button" class="btn btn-lg btn-default btn-block my-4" value="취소"
                                    onclick="location.href='loginSelect.do'">

                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-12 align-self-end mb-4 text-center">
                    Already have account?<br> 
                    <a href="loginSelect.do" class="text-dark font-weight-bold">Sign in</a>
                    here.
                </div>
            </div>
        </div>
    </div>








    <!-- page content ends -->



</body>

</html>