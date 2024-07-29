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
							<div class="col-xs-6">
								<h3 class="text-info mt5">관리자메뉴관리</h3>
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
										<div class="form-group" id="form-group-title">
											<label class="col-sm-2 control-label xs-mt10"><i
												class="fa fa-star text-danger nano-small" aria-hidden="true"></i><strong>
													메뉴명</strong></label>
											<div class="col-sm-4">
												<input type="text" name="title" class="form-control"
													value="" style="max-width: 500px">
											</div>

											<label class="col-sm-2 control-label xs-mt10"> <strong>대표URL</strong></label>
											<div class="col-sm-4">
												<input type="text" name="url" class="form-control" value=""
													style="max-width: 500px">
											</div>
										</div>
										<div class="form-group" id="form-group-depth">
											<label class="col-sm-2 control-label xs-mt10"> <strong>메뉴단계</strong></label>
											<div class="col-sm-4 ">
												<select name="depth" style="max-width: 500px"
													class="form-control pointer">
													<option value="0" selected="">대메뉴</option>
													<option value="1">소메뉴</option>
												</select>
											</div>

											<label class="col-sm-2 control-label xs-mt10"> <strong>부모메뉴</strong></label>
											<div class="col-sm-4">
												<select name="p_menu_seq" style="max-width: 500px"
													class="form-control pointer">
													<option value="0" selected="">없음</option>
													<option value="1">환경설정</option>
													<option value="2">회원관리</option>
													<option value="3">강사관리</option>
													<option value="154">신청관리</option>
													<option value="100">클래스 관리</option>
													<option value="139">상담예약 관리</option>
													<option value="143">화상명함관리</option>
													<option value="4">동영상 관리</option>
													<option value="103">라이브동영상 관리</option>
													<option value="7">고객센터</option>
													<option value="87">회의실 관리</option>
													<option value="156">화상서버관리</option>
													<option value="8">통계관리</option>
													<option value="5">주문관리</option>
													<option value="117">회의실예약</option>
													<option value="102">오프라인교육 관리</option>
													<option value="6">수업관리</option>
													<option value="128">컨퍼런스 관리</option>
													<option value="157">문제은행</option>
												</select>
											</div>
										</div>
										<div class="form-group" id="form-group-auth_level">
											<label class="col-sm-2 control-label xs-mt10"> <strong>접근레벨</strong></label>
											<div class="col-sm-4">
												<select name="auth_level" style="max-width: 500px"
													class="form-control pointer">
													<option value="0" selected="">시스템관리자</option>
													<option value="2">일반관리자</option>
												</select>
											</div>

											<label class="col-sm-2 control-label xs-mt10"> <strong>정렬번호</strong></label>
											<div class="col-sm-4">
												<input type="text" name="order_num" class="form-control"
													value="" style="max-width: 500px">
											</div>
										</div>
										<div class="form-group" id="form-group-dir">
											<label class="col-sm-2 control-label xs-mt10"> <strong>디렉토리</strong></label>
											<div class="col-sm-4">
												<input type="text" name="dir" class="form-control" value=""
													style="max-width: 500px">
											</div>

											<label class="col-sm-2 control-label xs-mt10"> <strong>파일명</strong></label>
											<div class="col-sm-4">
												<input type="text" name="dir" class="form-control" value=""
													style="max-width: 500px">
											</div>
										</div>
										<div class="form-group" id="form-group-icon_class">
											<label class="col-sm-2 control-label xs-mt10"> <strong>아이콘
													클래스</strong></label>
											<div class="col-sm-4">
												<input type="text" name="icon_class" class="form-control"
													value="" style="max-width: 500px">
											</div>

											<label class="col-sm-2 control-label xs-mt10"> <strong>홈페이지
													표출여부</strong></label>
											<div class="col-sm-4">
												<select name="is_open" style="max-width: 500px"
													class="form-control pointer">
													<option value="N">아니오</option>
													<option value="Y">예</option>
												</select>
											</div>
										</div>
										<div class="form-group" id="form-group-target">
											<label class="col-sm-2 control-label xs-mt10"> <strong>새창여부</strong></label>
											<div class="col-sm-4">
												<select name="target" style="max-width: 500px"
													class="form-control pointer">
													<option value="" selected="">사용안함</option>
													<option value="_blank">새창</option>
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