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
<title>SMS 환경설정</title>
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
					<!-- 페이지 명 -->
					<div class="row form-inline ">
						<div class="col-xs-6">
							<h3 class="text-info mt5">SMS 환경설정</h3>
						</div>
						<div class="col-xs-12 text-right">
							<i class="fa fa-star text-danger nano-small" aria-hidden="true"></i>필수항목
						</div>
					</div>
					<!-- //페이지 명 -->
					<!-- 내용 -->
					<div>
						<form name="form" method="post" action="" class="form-horizontal"
							enctype="multipart/form-data">
							<fieldset>
								<div class="well wh-bg mb10"
									style="border-radius: 10px; box-shadow: 3px 3px 10px -7px;">
									<div class="form-group" id="form-group-company_id">
										<label for="company_id" class="col-sm-2 control-label xs-mt10"><strong>기업아이디</strong></label>
										<div class="col-sm-4">
											<input type="text" id="company_id" name="company_id"
												class="form-control"
												value="<c:out value="${pageContext.request.userPrincipal.principal.user.companyName}"/>"
												style="max-width: 500px" disabled>
										</div>

										<label for="sms_id" class="col-sm-2 control-label xs-mt10"><strong>SMS
												아이디(카페24)</strong></label>
										<div class="col-sm-4">
											<input type="text" id="sms_id" name="sms_id"
												class="form-control" value="${smsConfig.sms_id}"
												style="max-width: 500px">
										</div>
									</div>

									<div class="form-group" id="form-group-sms_key">
										<label for="sms_key" class="col-sm-2 control-label xs-mt10">
											<strong>SMS Key</strong>
										</label>
										<div class="col-sm-4">
											<input type="text" id="sms_key" name="sms_key"
												class="form-control" value="${smsConfig.sms_key}"
												style="max-width: 500px">
										</div>

										<label for="api_secret" class="col-sm-2 control-label xs-mt10">
											<strong>API Key</strong>
										</label>
										<div class="col-sm-4">
											<input type="text" id="api_secret" name="api_secret"
												class="form-control" value="${smsConfig.sms_key}"
												style="max-width: 500px">
										</div>
									</div>
									<div class="form-group" id="form-group-use_sms">
										<label for="send_number"
											class="col-sm-2 control-label xs-mt10"> <strong>대표번호</strong></label>
										<div class="col-sm-4">
											<input type="text" id="send_number" name="send_number"
												class="form-control" value="${smsConfig.send_number}"
												style="max-width: 500px">
										</div>

										<label for="use_sms" class="col-sm-2 control-label xs-mt10">
											<strong>SMS 사용여부</strong>
										</label>
										<div class="col-sm-4">
											<select id="use_sms" name="use_sms" style="max-width: 500px"
												class="form-control pointer">
												<option value="Y">예</option>
												<option value="N">아니오</option>
											</select>
										</div>
									</div>



								</div>
							</fieldset>
						</form>
					</div>

					<div class="row pull-right">
						<button href="#" id="saveBtn" class="btn btn-mini btn-primary">
							저장하기
						</button>
						<%--<a href="#" class="btn btn-mini btn-default" onclick="javascript:location.href='sms_config_edit.html?page=';">
							<i class="fa fa-list"></i> Back
						</a>--%>
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
	let company_idInput = document.getElementById('company_id');
	let sms_idInput = document.getElementById('sms_id');
	let sms_keyInput = document.getElementById('sms_key');
	let send_numberInput = document.getElementById('send_number');
	let use_smsInput = document.getElementById('use_sms');
	let saveBtn = document.getElementById('saveBtn');

	let use_sms = '${smsConfig.use_sms}';
	let sms_config_seq = '${smsConfig.sms_config_seq}';
	use_smsInput.value = use_sms ? use_sms : "Y";

	let saveUrl = '/admin/smsConfigUpdate';
	let saveMsg = '수정이 완료되었습니다.';

	if(!sms_config_seq){
		console.log('123123');
		saveUrl = '/admin/smsConfigInsert';
		saveMsg = 'SMS 설정이 완료되었습니다.';
	}

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

	document.addEventListener('DOMContentLoaded', function() {

		/////////////////////////////////////////////////////////////////
		///////////////////////// save
		/////////////////////////////////////////////////////////////////
		saveBtn.addEventListener('click', function() {
			if (isSubmitting) {
				alert('이미 처리 중입니다. 잠시만 기다려주세요.');
				return;
			}
			// 필수 입력 필드 유효성 검사
			if (!company_idInput.value || !sms_idInput.value || !sms_keyInput.value || !send_numberInput.value || !use_smsInput.value) {
				alert('입력 필드를 모두 입력해주세요.');
				return;
			}

			isSubmitting = true;
			saveBtn.disabled = true;

			let formData = new FormData(document.querySelector('.form-horizontal'));
			formData.append('company_seq', '${pageContext.request.userPrincipal.principal.user.companySeq}');

			if(sms_config_seq){
				formData.append('sms_config_seq', sms_config_seq);
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
								window.location.reload();
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



</script>
</html>