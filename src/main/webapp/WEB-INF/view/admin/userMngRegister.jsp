<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<!--[if lt IE 7 ]><html lang="ko" class="ie6"><![endif]-->
<!--[if IE 7 ]>   <html lang="ko" class="ie7"><![endif]-->
<!--[if IE 8 ]>   <html lang="ko" class="ie8"><![endif]-->
<!--[if IE 9 ]>   <html lang="ko" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="ko" class="">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<title>UserMngRegister</title>
<%@ include file="layout/header.jsp"%>
</head>
<body class="admin">
	<!-- Admin Wrapper -->
	<div id="ubhome-wrapper">
		<!-- Page Content -->
		<div id="content-wrapper">
			<!-- Main Content -->
			<div class="main-content">
				<!-- 콘테이너 -->
				<div id="container">
					<div class="dashboard">
						<!-- 페이지 명 -->
						<div class="row form-inline mb10">
							<div class="col-xs-6">
								<h3 class="text-info mt5">회원 종합 관리</h3>
							</div>
							<div class="col-xs-6 text-right">
								<i class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
								필수항목
							</div>
						</div>
						<!-- //페이지 명 -->

						<!-- 게시판 정보 -->
						<form class="form-horizontal">
							<fieldset>
								<!-- 기본사항 -->
								<div class="well wh-bg"
									style="border-radius: 10px; box-shadow: 3px 3px 10px -7px;">
									<div class="form-group">
										<label for="user_id" class="col-sm-2 control-label"><i
											class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
											아이디</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="user_id"
												name="user_id" value="${user.user_id}" placeholder="아이디를 입력해주세요."/>
											<p id="idNotice" class="form-control-static"></p>
										</div>
										<label for="user_name" class="col-sm-2 control-label"><i
											class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
											성명</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="user_name"
												name="user_name" value="${user.user_name}" placeholder="이름을 입력해주세요."/>
										</div>
									</div>

									<div class="form-group">
										<label for="user_pw" class="col-sm-2 control-label"><i
											class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
											비밀번호</label>
										<div class="col-sm-4">
											<input type="password" class="form-control" id="user_pw"
												name="user_pw" value="${user.user_pw}" placeholder="비밀번호를 입력해주세요."/>
										</div>
										<label for="pwChk" class="col-sm-2 control-label xs-mt10"><i
											class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
											비밀번호확인</label>
										<div class="col-sm-4">
											<input type="password" class="form-control" id="pwChk"
												name="pwChk" value="${user.user_pw}" placeholder="비밀번호를 확인해주세요."/>
											<p id="pwChkNotice" class="form-control-static"></p>
										</div>
									</div>

									<div class="form-group">
										<label for="birth" class="col-sm-2 control-label xs-mt10"><i
											class="text-danger nano-small" aria-hidden="true"></i>
											생년월일</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="birth"
												name="birth" value="${user.birth}" />
										</div>
										<label for="sex" class="col-sm-2 control-label xs-mt10"><i
											class="text-danger nano-small" aria-hidden="true"></i> 성별</label>
										<div class="col-sm-4">
											<select id="sex" name="sex" class="form-control">
												<option value="F">여성</option>
												<option value="M">남성</option>
											</select>
										</div>
									</div>

									<div class="form-group">
										<label for="company" class="col-sm-2 control-label"><i
											class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
											기업명</label>
										<div class="col-sm-4">
											<select id="company" name="company" class="form-control">
												<option value="">기업 선택</option>
												<c:forEach var="company" items="${companyList}">
													<option value="${company.company_seq}">${company.company_name}</option>
												</c:forEach>
											</select>
										</div>
									</div>

									<div class="form-group">
										<label for="zip_code" class="col-sm-2 control-label"><i
											class="text-danger nano-small" aria-hidden="true"></i> 우편번호</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="zip_code"
												name="zip_code" value="${user.zip_code}" />
										</div>
									</div>

									<div class="form-group">
										<label for="addr1" class="col-sm-2 control-label"><i
											class="text-danger nano-small" aria-hidden="true"></i> 기본주소</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="addr1"
												name="addr1" value="${user.addr1}" />
										</div>
										<label for="addr2" class="col-sm-2 control-label"><i
											class="text-danger nano-small" aria-hidden="true"></i> 상세주소</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="addr2"
												name="addr2" value="${user.addr2}" />
										</div>
									</div>

									<div class="form-group">
										<label for="email" class="col-sm-2 control-label"><i
											class="text-danger nano-small" aria-hidden="true"></i> 이메일</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="email"
												name="email" value="${user.email}" />
										</div>
										<label for="email_ok" class="col-sm-2 control-label xs-mt10"><i
											class="text-danger nano-small" aria-hidden="true"></i> email
											수신여부</label>
										<div class="col-sm-4">
											<select id="email_ok" name="email_ok" class="form-control">
												<option value="Y">예</option>
												<option value="N">아니오</option>
											</select>
										</div>
									</div>

									<div class="form-group">
										<label for="user_hp" class="col-sm-2 control-label xs-mt10"><i
											class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
											휴대폰</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="user_hp"
												name="user_hp" value="${user.user_hp}" maxlength="11"
												placeholder="휴대폰 번호를 입력해주세요."/>
											<p id="hpNotice" class="form-control-static"></p>
										</div>
										<label for="sms_ok" class="col-sm-2 control-label xs-mt10"><i
											class="text-danger nano-small" aria-hidden="true"></i> SMS
											수신여부</label>
										<div class="col-sm-4">
											<select id="sms_ok" name="sms_ok" class="form-control">
												<option value="Y">예</option>
												<option value="N">아니오</option>
											</select>
										</div>
									</div>

									<!-- //기본사항 -->

								</div>
								<div class="text-right">
									<button type="button" id="saveBtn" class="btn btn-primary">저장하기</button>
									<button type="button" class="btn btn-default"
										onclick="cancel()">취소하기</button>
								</div>
							</fieldset>
						</form>
						<!-- //게시판 정보 -->
					</div>
				</div>
				<!-- //콘테이너 -->
			</div>
			<!-- //Main Content -->
		</div>
		<!-- //Page Content -->
	</div>
	<!-- //Admin Wrapper -->
</body>
<script>

    // Input Elements
    let idInput = document.getElementById('user_id');
    let nameInput = document.getElementById('user_name');
    let pwInput = document.getElementById('user_pw');
    let pwChkInput = document.getElementById('pwChk');
    let hpInput = document.getElementById('user_hp');
    let sexInput = document.getElementById('sex');
    let companyInput = document.getElementById('company');
    let email_okInput = document.getElementById('email_ok');
    let sms_okInput = document.getElementById('sms_ok');
    // Other Elements
    let idNotice = document.getElementById('idNotice');
    let pwChkNotice = document.getElementById('pwChkNotice');
    let hpNotice = document.getElementById('hpNotice');
    let saveBtn = document.getElementById('saveBtn');

    // Validation Status
    let isValidId = false;
    let isValidHp = false;
    let isValidPw = false;

    // Validation Regular Expression
    let idRegex = /^[a-z0-9]{6,20}$/;
	const hpRegex = /^[0-9]{11}$/;
    let numberOnlyRegex = /^[0-9]+$/;
    let pwRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()\-_=+\\|[\]{};:'",.<>/?]).{8,16}$/;

    // New variables
    let isSubmitting = false;
    const debounceDelay = 300; // 디바운스 지연 시간 (밀리초)

    // Debounce function
    function debounce(func, delay) {
        let timeoutId;
        return function (...args) {
            clearTimeout(timeoutId);
            timeoutId = setTimeout(() => func.apply(this, args), delay);
        };
    }

    // Page Loaded
    document.addEventListener('DOMContentLoaded', function() {

        // Set SelectBox Option Selected And is_out Display
        let id = '${user.user_id}';
        let sex = '${user.sex}';
        let company_seq = '${user.company_seq}';
        let email_ok = '${user.email_ok}';
        let sms_ok = '${user.sms_ok}';
        sexInput.value = id ? sex : 'F';
        companyInput.value = id ? company_seq : "";
        email_okInput.value = id ? email_ok : 'N';
        sms_okInput.value = id ? sms_ok : 'N';
        let saveUrl = '/admin/updateUserMng';
        let saveMsg = '수정이 완료되었습니다.';

        // Save Previous Value
        let prevIdValue = idInput.value;
        let prevHpValue = hpInput.value;

        if(!id){
            saveUrl = '/admin/insertUserMng';
            saveMsg = '회원 등록이 완료되었습니다.';
        }else{
            isValidId = true;
        }

        // Set idInput Disabled
        idInput.disabled = !!id;


        idInput.addEventListener('focus', function() {
            // Save Current Value
            prevIdValue = idInput.value;
        });
        // id Check
        idInput.addEventListener('focusout', debounce(function() {
            if (idInput.value === '') {
                idNotice.textContent = '';
                isValidId = false;
                return;
            }

            if (!idRegex.test(idInput.value) || numberOnlyRegex.test(idInput.value)) {
                idNotice.textContent = '아이디는 6~20자 영문 소문자, 숫자로만 구성되어야 하며, 숫자로만 구성될 수 없습니다.';
                idNotice.style.color = 'red';
                isValidId = false;
                return;
            }

            if (idInput.value === prevIdValue) {
                if(id){
                    idNotice.textContent = "사용 가능한 아이디입니다.";
                    idNotice.style.color = 'green';
                    isValidId = true;
                }
                return;
            }

            let formData = new FormData();
            formData.append('id', idInput.value);

            fetch('/admin/chkUserId', {
                method: 'POST',
                body: formData
            })
                .then(response => response.json())
                .then(data => {
                    if(data.result > 0){
                        idNotice.textContent = '사용할 수 없는 아이디입니다. 다른 아이디를 입력해 주세요.';
                        idNotice.style.color = 'red';
                        isValidId = false;
                    }else {
                        idNotice.textContent = '사용 가능한 아이디입니다.';
                        idNotice.style.color = 'green';
                        isValidId = true;
                    }
                })
                .catch(error => {
                    console.error('Error:', error);
                    alert('아이디 확인 중 오류가 발생했습니다. 다시 시도해 주세요.');
                });
        }, debounceDelay));


        hpInput.addEventListener('focus', function() {
            // Save Current Value
            prevHpValue = hpInput.value;
        });
        // hp Check
        hpInput.addEventListener('focusout', debounce(function() {
            if(hpInput.value === ''){
				hpNotice.textContent = '휴대폰 번호를 입력해주세요.';
                hpNotice.textContent = '';
                isValidHp = false;
                return;
            }

            if (!hpRegex.test(hpInput.value)) {
                hpNotice.textContent = "휴대폰 번호는 '-'를 제외한 숫자로만 11자리를 입력해주셔야 합니다.";
                hpNotice.style.color = 'red';
                isValidHp = false;
                return;
            }

            if (hpInput.value === prevHpValue) {
                if(!id){
                    isValidHp = false;
                }else{
                    hpNotice.textContent = "사용 가능한 휴대폰 번호입니다.";
                    hpNotice.style.color = 'green';
                    isValidHp = true;
                }
                return;
            }

            let formData = new FormData();
            formData.append('hp', hpInput.value);
            if(id){
                formData.append('id', idInput.value);
            }

            fetch('/admin/chkUserHp', {
                method: 'POST',
                body: formData
            })
                .then(response => response.json())
                .then(data => {
                    if(data.result > 0){
                        hpNotice.textContent = '사용할 수 없는 휴대폰 번호입니다. 다른 번호를 입력해 주세요.';
                        hpNotice.style.color = 'red';
                        isValidHp = false;
                    }else {
                        hpNotice.textContent = '사용 가능한 휴대폰 번호입니다.';
                        hpNotice.style.color = 'green';
                        isValidHp = true;
                    }
                })
                .catch(error => {
                    console.error('Error:', error);
                    alert('휴대폰 번호 확인 중 오류가 발생했습니다. 다시 시도해 주세요.');
                });
        }, debounceDelay));
/*

        hpInput.addEventListener('keydown', function(e) {
            let value = e.target.value;

            // 백스페이스 시 '-' 자동 제거
            if (e.key === 'Backspace' && (value.endsWith('-') || value.endsWith('--'))) {
                e.target.value = value.slice(0, -1);
            }
        });
*/

        // pw Check
        pwChkInput.addEventListener('focusout', function() {
            let pwMatch = (pwInput.value === pwChkInput.value);
            let validLength = (pwInput.value.length >= 8 && pwInput.value.length <= 16);

            if(!pwRegex.test(pwInput.value)){
                pwChkNotice.textContent = '비밀번호는 영어 소문자, 대문자, 숫자, 특수문자를 포함하여 8~16자여야 합니다.';
                pwChkNotice.style.color = 'red';
                isValidPw = false;
            } else if (!validLength) {
                pwChkNotice.textContent = '비밀번호는 8~16자 이어야 합니다.';
                pwChkNotice.style.color = 'red';
                isValidPw = false;
            } else if (!pwMatch) {
                pwChkNotice.textContent = '비밀번호와 비밀번호 확인이 일치하지 않습니다.';
                pwChkNotice.style.color = 'red';
                isValidPw = false;
            } else {
                pwChkNotice.textContent = '사용 가능한 비밀번호입니다.';
                pwChkNotice.style.color = 'green';
                isValidPw = true;
            }
        });

        saveBtn.addEventListener('click', function() {
            if (isSubmitting) {
                alert('이미 처리 중입니다. 잠시만 기다려주세요.');
                return;
            }

            // 필수 입력 필드 유효성 검사
            if (!idInput.value || !nameInput.value || !pwInput.value || !pwChkInput.value || !hpInput.value) {
                alert('필수 입력 필드를 모두 입력해주세요.');
                return;
            } else if(!isValidId){
                alert('아이디 값을 확인해주세요.');
                idNotice.textContent = "아이디를 확인해주세요.";
                idNotice.style.color = 'red';
                return;
            } else if(!isValidPw){
                alert('비밀번호를 확인해주세요.');
                pwChkNotice.textContent = "비밀번호를 확인해주세요.";
                pwChkNotice.style.color = 'red';
                return;
            } else if(!isValidHp){
                alert('휴대폰 번호를 확인해주세요.');
                hpNotice.textContent = "휴대폰 번호를 확인해주세요.";
                hpNotice.style.color = 'red';
                return;
            }

            isSubmitting = true;
            saveBtn.disabled = true;

            // let formData = new FormData(document.querySelector('.form-horizontal'));
            let inputArr = $('.form-horizontal').find('input, select');
            let arr = ['user_id', 'user_name', 'user_pw', 'pwChk', 'birth', 'sex', 'company_seq', 'zip_code', 'addr1', 'addr2', 'email', 'email_ok', 'user_hp', 'sms_ok'];
            let formData = new FormData();
            arr.forEach((e,idx) => {
                formData.append(e, inputArr[idx].value);
            })

            if(id){
                formData.append('user_seq', '${user.user_seq}');
            }
            fetch(saveUrl, {
                method: 'POST',
                body: formData
            })
                .then(response => response.json())
                .then(data => {
                    if(data.result > 0){
                        alert(saveMsg);
                        setTimeout(function() {
                            window.location.href = '/admin/userMng';
                        }, 500);
                    }else{
                        alert('작업에 실패했습니다. 관리자에게 문의하세요.');
                    }
                })
                .catch(error => {
                    console.error('Error:', error);
                    alert('저장 중 오류가 발생했습니다. 다시 시도해 주세요.');
                })
                .finally(() => {
                    isSubmitting = false;
                    saveBtn.disabled = false;
                });
        });

    });

/*    function formatHpNumber(input) {
        let value = input.value.replace(/\D/g, ''); // 숫자만 남기기

        if (value.length >= 3 && value.length <= 6) {
            input.value = value.slice(0, 3) + '-' + value.slice(3);
        } else if (value.length > 6) {
            input.value = value.slice(0, 3) + '-' + value.slice(3, 7) + '-' + value.slice(7, 11);
        } else {
            input.value = value;
        }
    }*/

    function cancel(){
        if(confirm('작성을 취소하시겠습니까?\n변경사항이 저장되지 않을 수 있습니다.')){
            window.location.href = "/admin/userMng";
        }
    }



</script>
</html>