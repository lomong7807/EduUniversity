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
<script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />
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
								<h3 class="text-info mt5">회원종합관리</h3>
							</div>
							<div class="col-xs-12 text-right">
								<i class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
								필수항목
							</div>
						</div>
						<!-- //페이지 명 -->
						<!-- 내용 -->
						<div>
							<form name="form" method="post" action="member_proc.php"
								class="form-horizontal">
								<fieldset>
									<input type="hidden" name="user_seq" value=""> <input
										type="hidden" name="mode" value="insert"> <input
										type="hidden" name="page" value="1">
									<div class="well wh-bg mb10">
										<div class="form-group" id="form-group-user_id">
											<label class="col-sm-2 control-label xs-mt10"><i
												class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
												<strong>아이디</strong></label>
											<div class="col-sm-4">
												<input type="text" name="user_id" class="form-control"
													value="" style="max-width: 500px">
											</div>

											<label class="col-sm-2 control-label xs-mt10"><i
												class="fa fa-star text-danger nano-small" aria-hidden="true"></i><strong>
													비밀번호</strong></label>
											<div class="col-sm-4">
												<input type="password" class="form-control" name="user_pw"
													value="" style="max-width: 500px">
											</div>
										</div>
										<div class="form-group" id="form-group-user_name">
											<label class="col-sm-2 control-label xs-mt10"><i
												class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
												<strong>성명</strong></label>
											<div class="col-sm-4">
												<input type="text" name="user_name" class="form-control"
													value="" style="max-width: 500px">
											</div>

											<label class="col-sm-2 control-label xs-mt10"> <strong>소속기업</strong></label>
											<div class="col-sm-4">
												<select name="company" style="max-width: 500px"
													class="form-control">
													<option value="001020">차이나유학</option>
													<option value="001017">한국자동차연합회</option>
													<option value="000001050">(주)네임텍</option>
													<option value="000001034">(주)준원지비아이</option>
													<option value="001000006">HYPS어학원</option>
													<option value="000001027">activem</option>
													<option value="000001022">activesoft</option>
													<option value="001002">com</option>
													<option value="000001037">develop</option>
													<option value="001000003">eclass</option>
													<option value="000001033">facar</option>
													<option value="001015">pt</option>
													<option value="000001031">sample1</option>
													<option value="000001030">sample2</option>
													<option value="000001032">wmall</option>
													<option value="001018">ymca</option>
													<option value="000001020">㈜ 한국자동차전문가아카데미</option>
													<option value="000001021">검사정비공업 아카데미</option>
													<option value="001014">경상북도학원연합회</option>
													<option value="000001036">기업홈페이지</option>
													<option value="001020001">띵꽈꽈</option>
													<option value="000001026">리포팅</option>
													<option value="001">본사</option>
													<option value="001013">비대면플랫폼 체험사이트</option>
													<option value="000001025">샘플사이트</option>
													<option value="000001029">서초여성가족플라자</option>
													<option value="001000010">심플클래스</option>
													<option value="000001024">씨아이더블유 주식회사</option>
													<option value="001016">일성인터내셔널</option>
													<option value="000001019">한국검사정비공업사</option>
													<option value="001000004">주식회사 엠에이</option>
													<option value="001000005">투썬캠퍼스</option>
													<option value="000001023">푸른물</option>
													<option value="000001035">학원홈페이지</option>
													<option value="001000008">혜전대학교</option>
													<option value="001000009">회사명</option>
												</select>
											</div>
										</div>
										<div class="form-group" id="form-group-birth">
											<label class="col-sm-2 control-label xs-mt10"> <strong>생년월일</strong></label>
											<div class="col-sm-4">
												<input type="text" name="birth" class="form-control"
													value="" style="max-width: 500px">
											</div>

											<label class="col-sm-2 control-label xs-mt10"> <strong>성별</strong></label>
											<div class="col-sm-4">
												<select name="sex" style="max-width: 500px"
													class="form-control pointer">
													<option value="F">여성</option>
													<option value="M">남성</option>
												</select>
											</div>
										</div>
										<div class="form-group" id="form-group-level">
											<label class="col-sm-2 control-label xs-mt10"> <strong>등급</strong></label>
											<div class="col-sm-4">
												<select name="level" style="max-width: 500px"
													class="form-control pointer">
													<option value="7">우대회원</option>
													<option value="8">일반회원</option>
												</select>
											</div>

											<label class="col-sm-2 control-label xs-mt10"> <strong>우편번호</strong></label>
											<div class="col-sm-4">
												<input type="text" name="zip_code" class="form-control"
													value="" style="max-width: 500px">
											</div>
										</div>
										<div class="form-group" id="form-group-addr1">
											<label class="col-sm-2 control-label xs-mt10"> <strong>기본주소</strong></label>
											<div class="col-sm-4">
												<input type="text" name="addr1" class="form-control"
													value="" style="max-width: 500px">
											</div>

											<label class="col-sm-2 control-label xs-mt10"> <strong>상세주소</strong></label>
											<div class="col-sm-4">
												<input type="text" name="addr2" class="form-control"
													value="" style="max-width: 500px">
											</div>
										</div>
										<div class="form-group" id="form-group-email">
											<label class="col-sm-2 control-label xs-mt10"> <strong>이메일</strong></label>
											<div class="col-sm-4">
												<input type="text" name="email" class="form-control"
													value="" style="max-width: 500px">
											</div>

											<label class="col-sm-2 control-label xs-mt10"> <strong>이메일
													수신여부</strong></label>
											<div class="col-sm-4">
												<select name="email_ok" style="max-width: 500px"
													class="form-control pointer">
													<option value="N">아니오</option>
													<option value="Y">예</option>
												</select>
											</div>
										</div>
										<div class="form-group" id="form-group-tel">
											<label class="col-sm-2 control-label xs-mt10"> <strong>전화번호</strong></label>
											<div class="col-sm-4">
												<input type="text" name="tel" class="form-control" value=""
													style="max-width: 500px"
													onfocusout="this.value=autoHypenTel(this.value);">
											</div>

											<label class="col-sm-2 control-label xs-mt10"> <strong>핸드폰번호</strong></label>
											<div class="col-sm-4">
												<input type="text" name="hp" class="form-control" value=""
													style="max-width: 500px"
													onfocusout="this.value=autoHypenHp(this.value);">
											</div>
										</div>
										<div class="form-group" id="form-group-sms_ok">
											<label class="col-sm-2 control-label xs-mt10"> <strong>SMS
													수신여부</strong></label>
											<div class="col-sm-4">
												<select name="sms_ok" style="max-width: 500px"
													class="form-control pointer">
													<option value="N">아니오</option>
													<option value="Y">예</option>
												</select>
											</div>
											<label class="col-sm-2 control-label xs-mt10"> </label>
										</div>
										<div class="form-group" id="form-group-special_note">
											<label class="col-sm-2 control-label xs-mt10"> <strong>특이사항</strong></label>
											<div class="col-sm-10">
												<input type="hidden" name="special_note" value="">
												<div id="special_note" style="height: 300px;">
													<div id="toast_editor">text field</div>
												</div>

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

<script type="text/javascript">
   const editor = new toastui.Editor({
        el: document.querySelector('#toast_editor'),
        previewStyle: 'tab',
        height: '300px',
        initialValue: ""
      });
</script>
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