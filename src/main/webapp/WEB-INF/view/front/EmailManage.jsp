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
.table .sms_scode {
	width: 100%;
	border-top: none !important;
}

.table .sms_scode td {
	padding: 0 !important;
	border: 1px solid #ddd !important;
}

.table .sms_scode td a {
	display: block;
	padding: 4px 0 5px;
}

.table .sms_scode td a:hover {
	color: #000;
	background-color: #eee;
}

.table-fixed {
	table-layout: fixed;
}

.fixed-table-container {
	
}

.fixed-table-body {
	height: 670px;
	overflow-x: auto;
}

.fixed-table-address-body {
	height: 600px;
	overflow-x: auto;
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
						<div class="row form-inline mb20">
							<div class="col-sm-6">
								<h3 class="text-info mt5">이메일 발송관리</h3>
							</div>
						</div>
						<!-- //페이지 명 -->
						<!-- 목록 -->
						<div class="row">
							<div>
								<div class="customer_container dashboard">
									<ul class="nav nav-tabs" role="tablist">
										<li role="presentation" class="active"><a
											href="#sms_tab1">E-mail 보내기</a></li>
										<li role="presentation"><a href="smslog_list.html">발송내역</a></li>
									</ul>
									<div class="tab-content pt20">
										<div role="tabpanel" class="tab-pane active" id="sms_tab1">
											<div class="row">
												<div class="col-lg-4">
													<!-- SMS 대상검색 -->

													<!-- 검색옵션 -->
													<form class="panel panel-default search_wrap mb15"
														name="searchform" action="sms_edit.html">
														<div class="panel-body p15">
															<div class="row mb10">
																<div class="col-md-3 col-lg-3">
																	<select id="period_type" name="period_type"
																		class="form-control pointer">
																		<!--<option value="" <? if($period_type=="") echo " selected ";?>>기간구분</option>-->
																		<option>가입일시</option>
																	</select>
																</div>

																<div class="col-md-4 col-lg-4">
																	<input type="date" name="sday"
																		class="form-control pointer" value=""
																		data-inputmask="'mask': '9999-99-99'">
																</div>
																<div class="col-md-1">~</div>
																<div class="col-md-4 col-lg-4">

																	<input type="date" name="eday"
																		class="form-control pointer" value=""
																		data-inputmask="'mask': '9999-99-99'">
																</div>
															</div>
															<div class="row">
																<div class="col-md-5 col-lg-12">
																	<div class="row ">
																		<div class="col-xs-4">
																			<select id="member_type" name="member_type"
																				class="form-control pointer">
																				<option value="">신청구분</option>
																				<option value="C">컨텐츠</option>
																				<option value="O">오프라인교육</option>
																				<option value="M">인강</option>
																			</select>
																		</div>
																		<div class="col-xs-5">

																			<input type="text" class="form-control"
																				id="search_keyword" name="search_keyword" value=""
																				placeholder="키워드" />
																		</div>
																		<div class="col-xs-3">
																			<button type="submit" class="btn btn-block btn-black">검색</button>
																		</div>
																	</div>
																</div>

															</div>
														</div>
													</form>
													<!-- //검색옵션 -->

													<!-- 전체학생목록 -->
													<div class="mb5 write_loop">
														<div class="checkbox-inline">
															<label for="sms_c_all"> <input type="checkbox"
																name="sms_c_all" id="sms_c_all" value=""
																onclick="checkAll(this.checked);" />전체
															</label>
														</div>
														<div class="row text-right mr5">
															Total : <strong class="num_eng text-primary ">1</strong>
														</div>
													</div>
													<form class="table_write" name="sms_form"
														action="sms_proc.html" method="post"
														enctype="multipart/form-data">

														<div class="table_section">
															<div
																class="table_container table_container_h fixed-table-address-body">
																<table
																	class="table table-bordered text-center table-hover table-fixed display"
																	id="all_table" width="100%" cellspacing="0">
																	<thead>
																		<tr>
																			<th width="10%" scope="col">선택</th>
																			<th scope="col"><strong>성명</strong></th>
																			<th scope="21%"><strong>이메일</strong></th>
																			<th width="31%" scope="col"><strong>휴대전화</strong></th>
																		</tr>
																	</thead>
																	<tbody>
																		<!-- Loop -->
																		<tr>
																			<td><input type="checkbox"
																				id="hp<?=$v[user_id2]?>" name="hp[]"
																				value="<?=$v[hp]?>"
																				data-user_name="<?=$v[user_name]?>"
																				data-member_type="<?=$v[member_type]?>" /> <input
																				type="hidden" name="user_name[]" value="" /></td>
																			<td
																				onclick="javascript:setClick('hp<?=$v[user_id2]?>');"
																				style="cursor: pointer;"><strong>박준우</strong></td>
																			<td
																				onclick="javascript:setClick('hp<?=$v[user_id2]?>');"
																				style="cursor: pointer;"><strong>gmail@gmail.com</strong></td>
																			<td
																				onclick="javascript:setClick('hp<?=$v[user_id2]?>');"
																				style="cursor: pointer;"><strong>010-1534-1234</strong></td>
																		</tr>
																		<!-- //Loop -->
																		<? } ?>

																	</tbody>
																</table>
															</div>
														</div>
														<!-- //전체학생목록 -->
														<!-- //SMS 대상검색 -->
													</form>
												</div>
												<div class="col-lg-3">
													<!-- SMS 내용 -->
													<input type="hidden" name="mode" value="send" /> <input
														type="hidden" name="sms_template_seq" value="" />
													<table
														class="table table-bordered text-center table-fixed mb10">
														<colgroup>
															<col style="width: 35%;">
															<col>
														</colgroup>
														<tbody>
															<tr>
																<td><label for=""
																	class="control-label control-label-ct"><strong>제목</strong></label></td>
																<td><input type="text" class="form-control "
																	id="title" name="title" value="" /></td>
															</tr>
															<tr>
																<td colspan="2"><textarea
																		class="form-control form-control-sms" rows="6"
																		maxlength="90" id="memo" name="memo" required>[:NAME:]</textarea>
																	<div class="byte mt5 mb5 text-left text-info">
																		<span id="counter"></span>
															</tr>
															<tr>
																<td class="active"><label for="send_email"
																	class="control-label control-label-ct"><strong>발신
																			이메일</strong></label></td>
																<td><input type="text" class="form-control"
																	id="send_email" name="send_email" value="" required /></td>
															</tr>
															<tr>
																<td class="active"><label for="sms_w_r_num"
																	class="control-label control-label-ct"><strong>받으실
																			분</strong></label></td>
																<td><input type="text" class="form-control"
																	id="receive" name="receive" value="" /></td>
															</tr>
															<!--
													<tr>
														<td class="active"><label for="sms_w_quantity" class="control-label control-label-ct">남은 수량</label></td>
														<td><input type="text" class="form-control" id="sms_w_quantity" name="" value="<?= $remain ?>" required readonly="readonly" /></td>
													</tr>
													-->

														</tbody>
													</table>

													<div class="row mt15 mb15">
														<div class="col-xs-6">
															<a href="javascript:send();"
																class="btn btn-lg btn-block btn-warning" role="button">메일
																보내기</a>
														</div>
														<div class="col-xs-6">
															<a href="javascript:save();"
																class="btn btn-lg btn-block btn-black" role="button">템플릿
																저장</a>
														</div>
													</div>
													</form>
													<!-- SMS 내용 -->
												</div>
												<div class="col-lg-5">
													<!-- SMS 템플릿 -->
													<div class="table_section">
														<h5 class="text-info mb10">
															<strong> E-Mail 템플릿</strong>
														</h5>
														<p>
															<strong>자주 이용하는 메시지를 저장할 수 있습니다. 수정 및 삭제가 가능합니다.</strong>
														</p>
														<div class="table_container table_container_h mt25">
															<div class="fixed-table-container">
																<div class="fixed-table-body">

																	<table id="sms_list"
																		class="table text-center table-hover table-fixed  table-not-bordered ">
																		<colgroup>
																			<col style="width: 11%;">
																			<col>
																			<col style="width: 24%;">
																		</colgroup>
																		<thead>
																			<tr>
																				<th scope="col"><strong>선택</strong></th>
																				<th scope="col"><strong>제목</strong></th>
																				<th scope="col"><strong>메시지</strong></th>
																				<th scope="col"><strong>관리</strong></th>
																			</tr>
																		</thead>
																		<tbody>
																			<!-- Loop -->
																			<tr>
																				<td><strong>1</strong></td>
																				<td><a
																					href="javascript:setMemo('<?= $v[memo] ?>','<?= $v[title] ?>');">
																						<strong>ㅎㅇㅇㅎ</strong>
																				</a></td>
																				<td class="text-center text-memo"
																					style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis"><a
																					href="javascript:setMemo('<?= $v[memo] ?>','<?= $v[title] ?>');">
																						<strong>ㅎㅇㅎㅇ</strong>
																				</a></td>
																				<td class="pt0 pb0">
																					<button type="button"
																						class="btn btn-xs btn-default btn-modify"
																						onclick="javascript:editMemo('<?= $v[sms_template_seq] ?>','<?= $v[memo] ?>','<?= $v[title] ?>');">수정</button>
																					<button type="button" class="btn btn-xs btn-danger"
																						onclick="javascript:deleteMemo('<?= $v[sms_template_seq] ?>');">삭제</button>
																				</td>
																			</tr>
																			<!-- //Loop -->
																		</tbody>
																	</table>
																</div>
															</div>
														</div>
													</div>
													<!-- //SMS 템플릿 -->
												</div>
											</div>
										</div>

										<div role="tabpanel" class="tab-pane" id="sms_tab2">
											<!-- SMS 발송내역 -->
											<!-- //SMS 발송내역 -->
										</div>
									</div>
								</div>
								<!-- //콘텐츠 -->
							</div>
							<tr>
								<div class="row pull-right">
									<a href="#" class='<?= $btn_class ?>'
										onclick="javascript:<?= $v[script] ?>"><i
										class="<?= $v[icon] ?>"></i> <?= $v[title] ?> </a>
								</div>
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