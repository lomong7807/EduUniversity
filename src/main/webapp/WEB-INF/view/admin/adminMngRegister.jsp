<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <title>AdminMngRegister</title>
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
                            <h3 class="text-info mt5">관리자 관리</h3>
                        </div>
                        <div class="col-xs-6 text-right">
                            <i class="fa fa-star text-danger nano-small" aria-hidden="true"></i> 필수항목
                        </div>
                    </div>
                    <!-- //페이지 명 -->

                    <!-- 게시판 정보 -->
                    <form class="form-horizontal">
                        <fieldset>
                            <!-- 기본사항 -->
                            <div class="well wh-bg">
                                <div class="form-group">
                                    <label for="id" class="col-sm-2 control-label"><i class="fa fa-star text-danger nano-small" aria-hidden="true"></i> 아이디</label>
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control" id="id" name="id" value="${admin.id}"/>
                                        <p id="idNotice" class="form-control-static"></p>
                                    </div>
                                    <label for="name" class="col-sm-2 control-label"><i class="fa fa-star text-danger nano-small" aria-hidden="true"></i> 성명</label>
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control" id="name" name="name" value="${admin.name}"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="pw" class="col-sm-2 control-label"><i class="fa fa-star text-danger nano-small" aria-hidden="true"></i> 비밀번호</label>
                                    <div class="col-sm-4">
                                        <input type="password" class="form-control" id="pw" name="pw" value="${admin.pw}"/>
                                    </div>
                                    <label for="pwChk" class="col-sm-2 control-label xs-mt10"><i class="fa fa-star text-danger nano-small" aria-hidden="true"></i> 비밀번호확인</label>
                                    <div class="col-sm-4">
                                        <input type="password" class="form-control" id="pwChk" name="pwChk" value="${admin.pw}"/>
                                        <p id="pwChkNotice" class="form-control-static"></p>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="hp" class="col-sm-2 control-label xs-mt10"><i class="fa fa-star text-danger nano-small" aria-hidden="true"></i> 휴대폰</label>
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control" id="hp" name="hp" value="${admin.hp}" maxlength="13" placeholder="000-0000-0000" oninput="formatHpNumber(this)"/>
                                        <p id="hpNotice" class="form-control-static"></p>
                                    </div>
                                    <label for="tel" class="col-sm-2 control-label"><i class="text-danger nano-small" aria-hidden="true"></i> 일반전화</label>
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control" id="tel" name="tel" value="${admin.tel}"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="email" class="col-sm-2 control-label"><i class="text-danger nano-small" aria-hidden="true"></i> 이메일</label>
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control" id="email" name="email" value="${admin.email}"/>
                                    </div>
                                    <label for="sex" class="col-sm-2 control-label xs-mt10"><i class="text-danger nano-small" aria-hidden="true"></i> 성별</label>
                                    <div class="col-sm-4">
                                        <select id="sex" name="sex" class="form-control">
                                            <option value="F">여성</option>
                                            <option value="M">남성</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="role" class="col-sm-2 control-label"><i class="text-danger nano-small" aria-hidden="true"></i> 등급</label>
                                    <div class="col-sm-4">
                                        <select id="role" name="role" class="form-control">
                                            <option value="0">시스템관리자</option>
                                            <option value="1">일반관리자</option>
                                            <option value="2">기관관리자</option>
                                        </select>
                                    </div>
                                    <label for="is_out" class="col-sm-2 control-label xs-mt10"><i class="text-danger nano-small" aria-hidden="true"></i> 탈퇴여부</label>
                                    <div class="col-sm-4">
                                        <select id="is_out" name="is_out" class="form-control">
                                            <option value="N">아니오</option>
                                            <option value="Y">예</option>
                                        </select>
                                    </div>
                                </div>

                                <!-- //기본사항 -->
                                <div class="text-right">
                                    <button type="button" id="saveBtn" class="btn btn-primary" onclick="save()">저장하기</button>
                                    <button type="button" class="btn btn-default" onclick="cancel()">취소하기</button>
                                </div>
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
    let idInput = document.getElementById('id');
    let nameInput = document.getElementById('name');
    let pwInput = document.getElementById('pw');
    let pwChkInput = document.getElementById('pwChk');
    let hpInput = document.getElementById('hp');
    let sexInput = document.getElementById('sex');
    let roleInput = document.getElementById('role');
    let is_outInput = document.getElementById('is_out');
    // Other Elements
    let idNotice = document.getElementById('idNotice');
    let pwChkNotice = document.getElementById('pwChkNotice');
    let hpNotice = document.getElementById('hpNotice');
    let is_outWrapper = document.querySelector('label[for="is_out"]');
    let saveBtn = document.getElementById('saveBtn');

    // Validation Status
    let isValidId = false;
    let isValidHp = false;
    let isValidPw = false;

    // Validation Regular Expression
    let idRegex = /^[a-z0-9]{4,12}$/;
    let hpRegex = /^[0-9]{3}-[0-9]{4}-[0-9]{4}$/;
    let numberOnlyRegex = /^[0-9]+$/;
    let pwRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()\-_=+\\|[\]{};:'",.<>/?]).{8,16}$/;

    // Debounce Use
    let isSubmitting = false;
    const debounceDelay = 500; // 디바운스 지연 시간 (밀리초)

    // Debounce function
    function debounce(func, delay) {
        let timeoutId;
        return function (...args) {
            clearTimeout(timeoutId);
            timeoutId = setTimeout(() => func.apply(this, args), delay);
        };
    }

    /////////////////////////////////////////////////////////////////
    ///////////////////////// Page Loaded
    /////////////////////////////////////////////////////////////////
    document.addEventListener('DOMContentLoaded', function() {
        // Set SelectBox Option Selected And is_out Display
        let id = '${admin.id}';
        let sex = '${admin.sex}';
        let roleSeq = '${admin.role_seq}';
        let is_out = '${admin.is_out}';
        sexInput.value = id ? sex : 'F';
        roleInput.value = id ? roleSeq : 1;
        is_outInput.value = id ? is_out : 'N';
        let saveUrl = '/admin/updateAdminMng';
        let saveMsg = '수정이 완료되었습니다.';

        // Save Previous Value
        let prevIdValue = idInput.value;
        let prevHpValue = hpInput.value;

        if(!id){
            is_outInput.style.display = 'none';
            is_outWrapper.style.display = 'none';
            saveUrl = '/admin/insertAdminMng';
            saveMsg = '관리자 등록이 완료되었습니다.';
        }else{
            isValidId = true;
        }

        // Set idInput Disabled
        idInput.disabled = !!id;


        /////////////////////////////////////////////////////////////////
        ///////////////////////// id Check
        /////////////////////////////////////////////////////////////////
        idInput.addEventListener('focus', function() {
            // Save Current Value
            prevIdValue = idInput.value;
        });
        idInput.addEventListener('focusout', debounce(function() {
            if (idInput.value === '') {
                idNotice.textContent = '';
                isValidId = false;
                return;
            }

            if (!idRegex.test(idInput.value) || numberOnlyRegex.test(idInput.value)) {
                idNotice.textContent = '아이디는 4~12자 영문 소문자, 숫자로만 구성되어야 하며, 숫자로만 구성될 수 없습니다.';
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

            fetch('/admin/chkAdminMngId', {
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

        /////////////////////////////////////////////////////////////////
        ///////////////////////// hp Check
        /////////////////////////////////////////////////////////////////
        hpInput.addEventListener('focus', function() {
            // Save Current Value
            prevHpValue = hpInput.value;
        });
        hpInput.addEventListener('focusout', debounce(function() {
            if(hpInput.value === ''){
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

            fetch('/admin/chkAdminMngHp', {
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

        hpInput.addEventListener('keydown', function(e) {
            let value = e.target.value;

            // 백스페이스 시 '-' 자동 제거
            if (e.key === 'Backspace' && (value.endsWith('-') || value.endsWith('--'))) {
                e.target.value = value.slice(0, -1);
            }
        });

        /////////////////////////////////////////////////////////////////
        ///////////////////////// pw Check
        /////////////////////////////////////////////////////////////////
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

        /////////////////////////////////////////////////////////////////
        ///////////////////////// save
        /////////////////////////////////////////////////////////////////
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
                return;
            } else if(!isValidPw){
                alert('비밀번호를 확인해주세요.');
                return;
            } else if(!isValidHp){
                alert('휴대폰 번호를 확인해주세요.');
                return;
            }

            isSubmitting = true;
            saveBtn.disabled = true;

            let formData = new FormData(document.querySelector('.form-horizontal'));
            if(id){
                formData.append('admin_seq', '${admin.admin_seq}');
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
                            window.location.href = '/admin/adminMng';
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

    function formatHpNumber(input) {
        let value = input.value.replace(/\D/g, ''); // 숫자만 남기기

        if (value.length >= 3 && value.length <= 6) {
            input.value = value.slice(0, 3) + '-' + value.slice(3);
        } else if (value.length > 6) {
            input.value = value.slice(0, 3) + '-' + value.slice(3, 7) + '-' + value.slice(7, 11);
        } else {
            input.value = value;
        }
    }

    /////////////////////////////////////////////////////////////////
    ///////////////////////// cancel
    /////////////////////////////////////////////////////////////////
    function cancel(){
        if(confirm('작성을 취소하시겠습니까?\n변경사항이 저장되지 않을 수 있습니다.')){
            window.location.href = "/admin/adminMng";
        }
    }



</script>
</html>