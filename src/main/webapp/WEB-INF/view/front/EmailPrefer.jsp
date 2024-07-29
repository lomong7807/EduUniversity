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
<title>ComnCdMng</title>
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
					<div class="row form-inline mb10">
						<div class="col-xs-6">
							<h3 class="text-info mt5">이메일 환경설정</h3>
						</div>
						<div class="col-xs-12 text-right">
							<i class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
							필수항목
						</div>
					</div>
					<!-- //페이지 명 -->
					<!-- 내용 -->
					<div>
						<form name="form" method="post" action="sms_config_proc.php"
							class="form-horizontal" enctype="multipart/form-data">
							<fieldset>
								<input type="hidden" name="sms_config_seq" value="1"> <input
									type="hidden" name="mode" value="update"> <input
									type="hidden" name="page" value="1">
								<div class="well wh-bg mb10">
									<div class="form-group" id="form-group-company_id">
										<label class="col-sm-2 control-label xs-mt10"> <strong>기업아이디</strong></label>
										<div class="col-sm-4">
											<input type="text" name="company_id" class="form-control"
												value="admin" style="max-width: 500px">
										</div>

										<label class="col-sm-2 control-label xs-mt10"> <strong>SMS
												아이디(카페24)</strong></label>
										<div class="col-sm-4">
											<input type="text" name="sms_id" class="form-control"
												value="snsedu" style="max-width: 500px">
										</div>
									</div>
									<div class="form-group" id="form-group-sms_key">
										<label class="col-sm-2 control-label xs-mt10"> <strong>SMS
												Key</strong></label>
										<div class="col-sm-4">
											<input type="text" name="sms_key" class="form-control"
												value="3b8a8deaee21cdc2dd8d57fe7a5358e3"
												style="max-width: 500px">
										</div>

										<label class="col-sm-2 control-label xs-mt10"> <strong>대표번호</strong></label>
										<div class="col-sm-4">
											<input type="text" name="send_number" class="form-control"
												value="010-5474-2935" style="max-width: 500px">
										</div>
									</div>
									<div class="form-group" id="form-group-use_sms">
										<label class="col-sm-2 control-label xs-mt10"> <strong>SMS
												사용여부</strong></label>
										<div class="col-sm-4">
											<select name="use_sms" style="max-width: 500px"
												class="form-control pointer">
												<option value="N">아니오</option>
												<option value="Y" selected="">예</option>
											</select>
										</div>

										<label class="col-sm-2 control-label xs-mt10"> <strong>수업전
												SMS 사용여부</strong>
										</label>
										<div class="col-sm-4">
											<select name="pre_class_sms" style="max-width: 500px"
												class="form-control pointer">
												<option value="N">아니오</option>
												<option value="Y" selected="">예</option>
											</select>
										</div>
									</div>


									<div class="row">
										<div class="col-xs-12 col-sm-6 col-md-6 col-lg-2 mt30">
											<div class="label label-sm label-primary btn-block">
												<i class="fa fa-envelope"></i> 수강신청
											</div>
											<strong><textarea class="form-control "
													style="background: #eeeeee;" name="msg02" rows="10"
													onkeyup="checkLength(this.value,'msg02_check');"> [에듀에듀전화/화상중국어]
요청하신 수강신청이 완료 되었습니다.

무료 레벨테스트를 신청해 주시면 고객센터(평일 10시~18:30분) 에서 연락 드려서 레벨테스트 1회+무료수업 1회 등록해 드립니다.
먼저 무료 레벨테스트를 신청해 보세요~^^</textarea></strong>
											<div class=" ">
												<input type="text" id="msg02_check"
													value="319Bytes / 2000 Bytes " class="form-control">
											</div>
											<div class=" mb20"></div>
										</div>

										<div class="col-xs-12 col-sm-6 col-md-6 col-lg-2 mt30">
											<div class="label label-sm label-primary btn-block">
												<i class="fa fa-envelope"></i> 결제확인
											</div>
											<strong><textarea class="form-control "
													style="background: #eeeeee;" name="msg03" rows="10"
													onkeyup="checkLength(this.value,'msg03_check');">[에듀에듀전화/화상중국어]
회원님의 결제가 확인 되었습니다.

http://edl2.cafe24.com  에서 로그인 하시기 바랍니다.</textarea></strong>
											<div class=" ">
												<input type="text" id="msg03_check"
													value="152Bytes / 2000 Bytes " class="form-control">
											</div>
											<div class=" mb20">
												<strong>[:USER_NAME:] = 성명</strong>
											</div>
										</div>

										<div class="col-xs-12 col-sm-6 col-md-6 col-lg-2 mt30">
											<div class="label label-sm label-primary btn-block">
												<i class="fa fa-envelope"></i> 스케쥴등록
											</div>
											<strong><textarea class="form-control "
													style="background: #eeeeee;" name="msg04" rows="10"
													onkeyup="checkLength(this.value,'msg04_check');">[:USER_NAME:] 님이 신청한 수업의 스케쥴이 등록 되었습니다.
나의강의실에서 해당 수업의 스케쥴을 확인 부탁드립니다.
수업 시작일은 [:MDHI:] 입니다</textarea></strong>
											<div class=" ">
												<input type="text" id="msg04_check"
													value="197Bytes / 2000 Bytes " class="form-control">
											</div>
											<div class=" mb20">
												<strong>[:USER_ID:] = 아이디</strong>
											</div>
										</div>
									</div>
								</div>
							</fieldset>
						</form>
					</div>

					<div class="row pull-right">
						<a href="#" class="btn btn-mini btn-primary"
							onclick="javascript:save();"><i class="fa fa-save"></i> Save
						</a> <a href="#" class="btn btn-mini btn-default"
							onclick="javascript:location.href='sms_config_edit.html?page=';"><i
							class="fa fa-list"></i> Back </a>
					</div>

					<script type="text/javascript">
		// 폼값 체크
		function check() { 
			var f1 = document.form; 
			return true ;
		} 
	</script>
					<script>
function save() {

		
	if (check()==true)
	{
		document.form.submit(); 
	}
}



//  문자열 길이 체크 
function checkLength(text,bytesname){	
	var msglen = ~-encodeURI(text).split(/%..|./).length;	
	document.getElementById(bytesname).value=msglen + " Bytes / 2000 Bytes"; 
}

</script>




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
function searchKey(){
	console.log('aa');
	let inputArr = $('.panel-body').find('input, select');
	console.log(inputArr);
	let arr = ['common_cd', 'cd_value'];
	let formData = new FormData();
	arr.forEach((e,idx) => {
		formData.append(e, inputArr[idx].value);
		//formData.append(idx);
	})
	console.log(formData.get('common_cd'));
	console.log(formData.get('common_value'));
}
</script>
</html>