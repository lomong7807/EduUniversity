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
<style>
select {
	width: 100%;
	height: 100%;
	padding: 0 28px 0 10px;
	font-size: 15px;
	border: 0; // 기본 스타일 제거 -webkit-appearance : none; /* for chrome */
	-moz-appearance: none; /*for firefox*/
	appearance: none;
	box-sizing: border-box;
	//
	select
	박스의
	크기
	방식
	지정.
	background
	:
	transparent;
	//
	배경색
	투명
	처리
}

select::-ms-expand {
	display: none; /*for IE10,11*/
}

.select-wrap {
	height: 34px;
}
</style>
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
							<div class="col-sm-6">
								<h3 class="text-info mt5">회원종합관리</h3>
							</div>
						</div>
						<!-- //페이지 명 -->
						<!-- 목록 -->
						<div>
							<form Method="Post" id="teacher_list" name="teacher_list">
								<input type="hidden" id="schIcon" name="schIcon" value="schIcon" />
								<input type="hidden" id="sel" name="sel" />
								<fieldset>
									<div class="panel panel-default text-center">
										<div class="panel-body">
											<div class="row mt10 mb10">
												<div
													class="col-sm-3 text-left hidden-xs hidden-sm hidden-md mt5">
													<strong>Company</strong>
												</div>
												<div class="col-sm-9">
													<div class="row">
														<div class="col-sm-4">
															<select id="schDisplayYN" name="schDisplayYN"
																class="form-control pointer">
																<option>차이나유학 / china</option>
																<option value="Y">activesoft / activesoft</option>
																<option value="N"></option>
															</select>
														</div>
													</div>
												</div>
											</div>

											<div class="row mt10 mb10">
												<div
													class="col-sm-3 text-left mt5 hidden-xs hidden-sm hidden-md">
													<strong>Period</strong>
												</div>
												<div class="col-sm-9">
													<div class="row">
														<div class="col-sm-4">
															<select name="day_key" class="form-control pointer">
																<option value="">--기간검색--</option>
																<option value="write_time">등록일기준</option>
															</select>
														</div>
														<div class="col-sm-4">
															<input type="date" name="sday"
																		class="form-control pointer" value=""
																		data-inputmask="'mask': '9999-99-99'">
														</div>
														<div class="col-sm-4">
															<input type="date" name="sday"
																		class="form-control pointer" value=""
																		data-inputmask="'mask': '9999-99-99'">
														</div>
													</div>
												</div>
											</div>

											<div class="row mt10 mb10">
												<div
													class="col-sm-3 text-left mt5 hidden-xs hidden-sm hidden-md">
													<strong>Basic Data</strong>
												</div>
												<div class="col-sm-9">
													<div class="row">
														<div class="col-sm-3">
															<select name="is_lesson" class="form-control pointer"
																onchange="javascript:searchKey();"><option
																	value="ALL">수강여부선택</option>
																<option value="Y">수강중</option>
																<option value="E">수강종료</option>
																<option value="N">미수강</option></select>
														</div>
														<div class="col-sm-3">
															<select name="key" class="form-control pointer"><option
																	value="user">성명/아이디</option>
																<option value="user_id">아이디</option>
																<option value="user_name">성명</option></select>
														</div>
														<div class="col-sm-3">
															<input type="text" class="form-control" name="keyword"
																id="keyword" value="" placeholder="Keyword">
														</div>
														<div class="col-sm-3">
															<button type="button" class="btn btn-block btn-default"
																onclick="javascript:searchKey();">
																<i class="fa fa-search"></i> Search
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>



									<!-- 총 게시물 수 -->
									<div class="pagetotal">
										Total: <strong class="text-primary">3</strong> count
									</div>
									<!-- //총 게시물 수 -->
									<!-- 게시물 -->
									<div name="form" method="post" action="menu_proc.php">
										<input type="hidden" name="mode" value="delete">
										<div>
											<table class="table text-center table-hover">
												<thead>
													<tr class="headings">
														<th class="hidden-xs"><input type="checkbox"
															id="check-all" class="flat"></th>
														<th class="column-title hidden-xs">No.</th>
														<th class="column-title hidden-xs">아이디</th>
														<th class="column-title hidden-xs">성명</th>
														<th class="column-title hidden-xs">기업명</th>
														<th class="column-title hidden-xs">휴대폰</th>
														<th class="column-title hidden-xs">최근로그인</th>
														<th class="column-title hidden-xs">접속횟수</th>
														<th class="column-title hidden-xs">도구</th>
													</tr>
												</thead>

												<tbody>
													<tr class="odd pointer">
														<td><input type="checkbox" name="user_seq[0]"
															value="466" class="flat"></td>
														<td class="hidden-xs"><strong>1</strong></td>
														<td class="hidden-xs"><strong>admin</strong></td>
														<td class="hidden-xs"></td>
														<td class="hidden-xs"></td>
														<td class="hidden-xs"><a href="#"
															class="send_sms_btn " data-toggle="modal"
															data-target=".sms_send" data-hp=""><i
																class="fa fa-comment text-primary"></i></a></td>
														<td class="hidden-xs"><strong>2023-07-11
																16:27:00</strong></td>
														<td class="hidden-xs"><strong>1</strong></td>
														<td class="hidden-xs"><a
															href="login_member_proc.php?company_id=&amp;user_id=admin&amp;mode=member"
															target="_blank" class="btn btn-default  btn-xs mb5"><i
																class="fa fa-sign-in"></i> 로그인 </a> <a href="#"
															class="btn btn-xs btn-default student_id mb5"
															data-student_id="admin" data-toggle="modal"
															data-target=".view_modal""=""><i class="fa fa-pencil"></i>
																메모 </a><br></td>
														<!-- 작은화면 목록 -->
														<td class="text-left hidden-sm hidden-md hidden-lg">
															<div class="hidden-sm hidden-md hidden-lg">
																<ul class="list-icon mb5">
																	<li><span class="text-info">아이디 </span> :admin</li>
																	<li><span class="text-info">성명 </span> :</li>
																	<a
																		href="login_member_proc.php?company_id=&amp;user_id=admin&amp;mode=member"
																		target="_blank" class="btn btn-default  btn-xs mb5"><i
																		class="fa fa-sign-in"></i> 로그인 </a>
																	<a href="#"
																		class="btn btn-xs btn-default student_id mb5"
																		data-student_id="admin" data-toggle="modal"
																		data-target=".view_modal""=""><i
																		class="fa fa-pencil"></i> 메모 </a>
																	<br>
																</ul>
															</div>
														</td>
														<!--// 작은화면 목록 -->
													</tr>
												</tbody>
											</table>
										</div>
									</div>

									<div class="row" style="text-align: center;">
										<!--페이징-->

										<nav class="text-center">
											<ul class="pagination pagination-sm num-webfont">

												<li><a href="#" aria-label="First Page"
													title="First Page" onclick="javascript:goPage('1');"> <span
														aria-hidden="true"><i
															class="fa fa-angle-double-left" aria-hidden="true"></i></span>
												</a></li>

												<li><a href="#" aria-label="Previous"
													title="Previous Page" onclick="javascript:goPage('1');">
														<span aria-hidden="true"><i
															class="fa fa-angle-left" aria-hidden="true"></i></span>
												</a></li>
												<li class="active"><a href="#"
													onclick="javascript:goPage('1');">1</a></li>
												<li><a href="#" aria-label="Next" title="Next Page"
													onclick="javascript:goPage('1');"> <span
														aria-hidden="true"><i class="fa fa-angle-right"
															aria-hidden="true"></i></span>
												</a></li>

												<li><a href="#" aria-label="Next" title="Next Page"
													onclick="javascript:goPage('1');"> <span
														aria-hidden="true"><i
															class="fa fa-angle-double-right" aria-hidden="true"></i></span>
												</a></li>
											</ul>
										</nav>
										<!--페이징-->
									</div>

									<div class="row pull-right">
										<a href="#" class="btn btn-mini btn-default"
											onclick="javascript:if(confirm('해당 항목들을 정말 삭제하시겠습니까?')) document.form.submit();"><i
											class="fa fa-trash"></i> Check Delete </a> <a href="#"
											class="btn btn-mini btn-primary"
											onclick="javascript:location.href='menu_edit.html?page=';"><i
											class="fa fa-pencil"></i> Write </a>
									</div>
									<!-- //게시물 -->
								</fieldset>
							</form>
						</div>
						<!-- //목록 -->
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