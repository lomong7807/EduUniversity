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
					<div class="dashboard">
						<!-- 페이지 명 -->
						<div class="row form-inline">
							<div class="col-xs-12 mb10">
								<h3 class="text-info mt5">관리자 관리</h3>
							</div>
							<div class="col-xs-12 text-right">
								<i class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
								필수항목
							</div>
						</div>
						<!-- //페이지 명 -->
						<!-- 내용 -->
						<div>
							<form name="form" method="post" action="menu_proc.php"
								class="form-horizontal">
								<fieldset>
									<input type="hidden" name="menu_seq" value=""> <input
										type="hidden" name="mode" value="insert"> <input
										type="hidden" name="page" value="1">
									<div class="well wh-bg mb10">
										<div class="form-group" id="form-group-target">
											<label class="col-sm-2 control-label xs-mt10"><i
												class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
												<strong>아이디</strong></label>
											<div class="col-sm-4">
												<input type="text" name="id" class="form-control" value=""
													style="max-width: 500px">
											</div>
											<label class="col-sm-2 control-label xs-mt10"> <strong>성명</strong></label>
											<div class="col-sm-4">
												<input type="text" name="name" class="form-control" value=""
													style="max-width: 500px">
											</div>
										</div>
										<div class="form-group" id="form-group-title">

											<label class="col-sm-2 control-label xs-mt10"> <strong>직급</strong></label>
											<div class="col-sm-4">
												<input type="text" name="position" class="form-control"
													value="" style="max-width: 500px">
											</div>
											<label class="col-sm-2 control-label xs-mt10"> <strong>이메일</strong></label>
											<div class="col-sm-4">
												<input type="text" name="mail" class="form-control" value=""
													style="max-width: 500px">
											</div>

										</div>

										<div class="form-group" id="form-group-pw">
											<label class="col-sm-2 control-label xs-mt10"><strong>비밀번호</strong></label>
											<div class="col-sm-4">
												<input type="password" class="form-control" name="pw"
													value="" style="max-width: 500px">
											</div>

											<label class="col-sm-2 control-label xs-mt10"><strong>비밀번호확인</strong></label>
											<div class="col-sm-4">
												<input type="password" class="form-control" name="pw2"
													value="" style="max-width: 500px">
											</div>
										</div>
										<div class="form-group" id="form-group-tel">
											<label class="col-sm-2 control-label xs-mt10"><strong>일반전화</strong></label>
											<div class="col-sm-4">
												<input type="text" name="tel" class="form-control" value=""
													style="max-width: 500px"
													onfocusout="this.value=autoHypenTel(this.value);">
											</div>

											<label class="col-sm-2 control-label xs-mt10"><strong>핸드폰</strong></label>
											<div class="col-sm-4">
												<input type="text" name="hp" class="form-control" value=""
													style="max-width: 500px"
													onfocusout="this.value=autoHypenHp(this.value);">
											</div>
										</div>
										<div class="form-group" id="form-group-email">
											<label class="col-sm-2 control-label xs-mt10"><strong>성별</strong></label>
											<div class="col-sm-4">
												<select name="sex" style="max-width: 500px"
													class="form-control pointer">
													<option value="F">여성</option>
													<option value="M">남성</option>
												</select>
											</div>
											<label class="col-sm-2 control-label xs-mt10"><strong>등급</strong></label>
											<div class="col-sm-4">
												<select name="grade" style="max-width: 500px"
													class="form-control pointer">
													<option value="">시스템관리자</option>
													<option value="">일반관리자</option>
												</select>
											</div>
										</div>

										<div class="form-group" id="form-group-email">
											<label class="col-sm-2 control-label xs-mt10"><strong>언어</strong></label>
											<div class="col-sm-4">
												<select name="lng" style="max-width: 500px"
													class="form-control pointer">
													<option value="">중국어(CHN)</option>
													<option value="">영어(ENG)</option>
													<option value="">일본어(JPN)</option>
													<option value="">한국어(KOR)</option>
												</select>
											</div>
											<label class="col-sm-2 control-label xs-mt10"><strong>탈퇴여부</strong></label>
											<div class="col-sm-4">
												<select name="is_out" style="max-width: 500px"
													class="form-control pointer">
													<option value="N">아니오</option>
													<option value="Y">예</option>
												</select>
											</div>
										</div>
									</div>
								</fieldset>
							</form>
						</div>

						<!-- //내용 -->
						<div class="row pull-right">
							<a href="#" class="btn btn-mini btn-primary"
								onclick="javascript:save();"><i class="fa fa-save"></i> Save
							</a> <a href="#" class="btn btn-mini btn-default"
								onclick="javascript:location.href='admin_list.html?page=';"><i
								class="fa fa-list"></i> Back </a>
						</div>
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