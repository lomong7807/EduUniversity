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
								<h3 class="text-info mt5">SMS발송관리</h3>
							</div>
							<div class="col-sm-6 text-right">
								<!--
					<select id="schConvert" name="schConvert" class="form-control input-sm form-control-inline">
						<option  value="S"  selected=selected>검색 자료</option>
						<option  value="C">선택 자료</option>
					</select>
					<button type="button" class="btn btn-sm btn-outline"><i class="fa fa-file-excel-o text-success" aria-hidden="true"></i> 다운로드</button>
					-->

							</div>
						</div>
						<!-- //페이지 명 -->
						<!-- 목록 -->
						<div class="customer_container dashboard">
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#sms_tab1">SMS
										보내기</a></li>
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
																	<td><input type="checkbox" /> <input
																		type="hidden" name="user_name[]" value="" /></td>
																	<td style="cursor: pointer;"><strong>박준우</strong></td>
																	<td style="cursor: pointer;"><strong>gmail@gmail.com</strong></td>
																	<td style="cursor: pointer;"><strong>010-1534-1234</strong></td>
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
															class="control-label control-label-ct"><strong>예약일시</strong></label></td>
														<td><input type="text" class="form-control "
															id="reserve_time" name="reserve_time" value="" /></td>
													</tr>

													<tr>
														<td colspan="2"><textarea
																class="form-control form-control-sms" rows="6"
																maxlength="90" id="memo" name="memo" required>[:NAME:]</textarea>
															<div class="byte mt5 mb5 text-left text-info">
																<span id="counter"></span>
															</div></td>
													</tr>
													<tr>
														<td colspan="2">
															<table class="sms_scode">
																<tbody>
																	<tr>
																		<td><a href="javascript:setEmoticon('♥');">♥</a></td>
																		<td><a href="javascript:setEmoticon('♡');">♡</a></td>
																		<td><a href="javascript:setEmoticon('★');">★</a></td>
																		<td><a href="javascript:setEmoticon('☆');">☆</a></td>
																		<td><a href="javascript:setEmoticon('▶');">▶</a></td>
																		<td><a href="javascript:setEmoticon('▷');">▷</a></td>
																		<td><a href="javascript:setEmoticon('◀');">◀</a></td>
																		<td><a href="javascript:setEmoticon('◁');">◁</a></td>
																		<td><a href="javascript:setEmoticon('∩');">∩</a></td>
																		<td><a href="javascript:setEmoticon('●');">●</a></td>
																		<td><a href="javascript:setEmoticon('■');">■</a></td>
																	</tr>
																	<tr>
																		<td><a href="javascript:setEmoticon('○');">○</a></td>
																		<td><a href="javascript:setEmoticon('□');">□</a></td>
																		<td><a href="javascript:setEmoticon('▲');">▲</a></td>
																		<td><a href="javascript:setEmoticon('▼');">▼</a></td>
																		<td><a href="javascript:setEmoticon('▒');">▒</a></td>
																		<td><a href="javascript:setEmoticon('♨');">♨</a></td>
																		<td><a href="javascript:setEmoticon('※');">※</a></td>
																		<td><a href="javascript:setEmoticon('™');">™</a></td>
																		<td><a href="javascript:setEmoticon('℡');">℡</a></td>
																		<td><a href="javascript:setEmoticon('♬');">♬</a></td>
																		<td><a href="javascript:setEmoticon('♪');">♪</a></td>
																	</tr>
																	<tr>
																		<td><a href="javascript:setEmoticon('☞');">☞</a></td>
																		<td><a href="javascript:setEmoticon('☜');">☜</a></td>
																		<td><a href="javascript:setEmoticon('♂');">♂</a></td>
																		<td><a href="javascript:setEmoticon('♀');">♀</a></td>
																		<td><a href="javascript:setEmoticon('㈜');">㈜</a></td>
																		<td><a href="javascript:setEmoticon('⊙');">⊙</a></td>
																		<td><a href="javascript:setEmoticon('◆');">◆</a></td>
																		<td><a href="javascript:setEmoticon('◇');">◇</a></td>
																		<td><a href="javascript:setEmoticon('♣');">♣</a></td>
																		<td><a href="javascript:setEmoticon('♧');">♧</a></td>
																		<td><a href="javascript:setEmoticon('☎');">☎</a></td>
																	</tr>
																	<tr>
																		<td><a href="javascript:setEmoticon('∑');">∑</a></td>
																		<td><a href="javascript:setEmoticon('▣');">▣</a></td>
																		<td><a href="javascript:setEmoticon('㉿');">㉿</a></td>
																		<td><a href="javascript:setEmoticon('『');">『</a></td>
																		<td><a href="javascript:setEmoticon('』');">』</a></td>
																		<td><a href="javascript:setEmoticon('◐');">◐</a></td>
																		<td><a href="javascript:setEmoticon('◑');">◑</a></td>
																		<td><a href="javascript:setEmoticon('ㆀ');">ㆀ</a></td>
																		<td><a href="javascript:setEmoticon('†');">†</a></td>
																		<td><a href="javascript:setEmoticon('3');">3</a></td>
																		<td><a href="javascript:setEmoticon('▦');">▦</a></td>
																	</tr>
																	<tr>
																		<td colspan="3"><a
																			href="javascript:setEmoticon('☆(~.^)/');">☆(~.^)/</a></td>
																		<td colspan="4"><a
																			href="javascript:setEmoticon('づ^0^)づ');">づ^0^)づ</a></td>
																		<td colspan="4"><a
																			href="javascript:setEmoticon('&(☎ ☎)&');">&amp;(☎
																				☎)&amp;</a></td>
																	</tr>
																	<tr>
																		<td colspan="3"><a
																			href="javascript:setEmoticon('(*^.^)♂');">(*^.^)♂</a></td>
																		<td colspan="3"><a
																			href="javascript:setEmoticon('(o^^)o');">(o^^)o</a></td>
																		<td colspan="3"><a
																			href="javascript:setEmoticon('o(^^o)');">o(^^o)</a></td>
																		<td colspan="2"><a
																			href="javascript:setEmoticon('=◑.◐=');">=◑.◐=</a></td>
																	</tr>
																	<tr>
																		<td colspan="4"><a
																			href="javascript:setEmoticon('_(≥∇≤)ノ');">_(≥∇≤)ノ</a></td>
																		<td colspan="4"><a
																			href="javascript:setEmoticon('q⊙.⊙p');">q⊙.⊙p</a></td>
																		<td colspan="3"><a
																			href="javascript:setEmoticon('o(>_<)o');">o(&gt;_&lt;)o</a></td>
																	</tr>
																	<tr>
																		<td colspan="2"><a
																			href="javascript:setEmoticon('^.^');">^.^</a></td>
																		<td colspan="2"><a
																			href="javascript:setEmoticon('(^.^)V');">(^.^)V</a></td>
																		<td colspan="2"><a
																			href="javascript:setEmoticon('*^^*');">*^^*</a></td>
																		<td colspan="3"><a
																			href="javascript:setEmoticon('^o^~~♬');">^o^~~♬</a></td>
																		<td colspan="2"><a
																			href="javascript:setEmoticon('^.~');">^.~</a></td>
																	</tr>
																	<tr>
																		<td colspan="5"><a
																			href="javascript:setEmoticon('S(*^___^*)S');">S(*^___^*)S</a></td>
																		<td colspan="2"><a
																			href="javascript:setEmoticon('^Δ^');">^Δ^</a></td>
																		<td colspan="4"><a
																			href="javascript:setEmoticon('＼(*^▽^*)ノ');">＼(*^▽^*)ノ</a></td>
																	</tr>
																	<tr>
																		<td colspan="2"><a
																			href="javascript:setEmoticon('^L^');">^L^</a></td>
																		<td colspan="2"><a
																			href="javascript:setEmoticon('^ε^');">^ε^</a></td>
																		<td colspan="2"><a
																			href="javascript:setEmoticon('^_^');">^_^</a></td>
																		<td colspan="3"><a
																			href="javascript:setEmoticon('(ノ^O^)ノ');">(ノ^O^)ノ</a></td>
																		<td colspan="2"><a
																			href="javascript:setEmoticon('^0^');">^0^</a></td>
																	</tr>
																</tbody>
															</table>
														</td>
													</tr>

													<tr>
														<td class="active"><label for="send_number"
															class="control-label control-label-ct"><strong>보내는
																	번호</strong></label></td>
														<td><input type="text" class="form-control"
															id="send_number" name="send_number" value="" required /></td>
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
													<td><input type="text" class="form-control" id="sms_w_quantity" name="" value="<?=$remain?>" required readonly="readonly" /></td>
												</tr>
												-->
													<tr>
														<td colspan="2" class="text-left">
															<div class="checkbox-inline">
																<input type="checkbox" name="sms_w_o" id="sms_w_o"
																	value="Y" /> <label for="sms_w_o" class="mb0">동일번호에
																	동일한 메시지는 한번만 </label>
															</div>
														</td>
													</tr>
												</tbody>
											</table>

											<div class="row mt15 mb15">
												<div class="col-xs-6">
													<a href="javascript:send();"
														class="btn btn-lg btn-block btn-warning" role="button">메시지
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
													<strong>SMS 템플릿</strong>
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
																		<th scope="col"><strong>메시지</strong></th>
																		<th scope="col"><strong>관리</strong></th>
																	</tr>
																</thead>
																<tbody>
																	<!-- Loop -->
																	<tr>
																		<td><strong>1</strong></td>
																		<td class="text-left text-memo"><strong><학원배상책임단체보험
																					가입 완료 안내> *보험시기：2021년 10월 1일
																				*보험종기：2022년 3월 2일 ★내년부터 3월2일자 단체보험으로 일괄가입됩니다.
																				*교육청신고：2021년 10월 6일 (연합회에서 신고) *정회원은 2022.3.2.일부
																				자동갱신 *보험보상접수：농협손해보험(1644-9000) *보험증권은 연합회 보관 (필요시
																				송부) -경상북도학원연합회</strong></td>
																		<td class="pt0 pb0">
																			<button type="button"
																				class="btn btn-xs btn-default btn-modify"
																				onclick="javascript:editMemo('<?=$v[sms_template_seq]?>','<?=$v[memo]?>');">수정</button>
																			<button type="button" class="btn btn-xs btn-danger"
																				onclick="javascript:deleteMemo('<?=$v[sms_template_seq]?>');">삭제</button>
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
									<form class="panel panel-default search_wrap mb15"
										name="searchform" action="#">
										<div class="panel-body p10">
											<div class="row">
												<div class="col-lg-12">
													<div class="row">
														<div class="col-xs-2">
															<input type="tel" class="form-control datetimepicker"
																id="search_date_start" name="" value="" required />
														</div>
														<div class="col-xs-2">
															<input type="tel" class="form-control datetimepicker"
																id="search_date_end" name="" value="" required />
														</div>
														<div class="col-xs-2">
															<select class="form-control" id="search_option">
																<option>선택</option>
																<option>수신인</option>
																<option>수신번호</option>
																<option>학생명</option>
															</select>
														</div>
														<div class="col-xs-3">
															<input type="text" class="form-control"
																id="search_keyword" name="" value="" required
																placeholder="키워드" />
														</div>
														<div class="col-xs-1">
															<button type="submit" class="btn btn-block btn-black">검색</button>
														</div>
														<div class="col-xs-2 text-right"></div>
													</div>
												</div>
											</div>
										</div>
									</form>

									<table
										class="table text-center table-bordered table-striped table-fixed">
										<thead>
											<tr>
												<th width="10%" scope="col"><strong>발신인</strong></th>
												<th width="8%" scope="col"><strong>수신인</strong></th>
												<th width="11%" scope="col"><strong>수신번호</strong></th>
												<th width="10%" scope="col"><strong>발신번호</strong></th>
												<th width="8%" scope="col"><strong>학생명</strong></th>
												<th width="7%" scope="col"><strong>구분</strong></th>
												<th scope="col"><strong>보낸내용</strong></th>
												<th width="8%" scope="col"><strong>결과</strong></th>
											</tr>
										</thead>
										<tbody>




											<!-- Loop -->
											<tr>
												<td>2018-04-08</td>
												<td>김인주</td>
												<td>01022416857</td>
												<td>0214753657</td>
												<td>강성훈</td>
												<td>LMS</td>
												<td class="text-left text-memo">이번주까지 미납된 부분을 완납하시기
													바랍니다.</td>
												<td>전송성공</td>
											</tr>
											<!-- //Loop -->

											<!-- Loop -->
											<tr>
												<td>2018-04-08</td>
												<td>김인주</td>
												<td>01022416857</td>
												<td>0214753657</td>
												<td>강성훈</td>
												<td>SMS</td>
												<td class="text-left text-memo">이번주까지 미납된 부분을 완납하시기
													바랍니다.</td>
												<td>전송성공</td>
											</tr>
											<!-- //Loop -->

										</tbody>
									</table>

									<nav class="text-center">
										<ul class="pagination pagination-sm">
											<li><a href="#" aria-label="Previous" title="처음"> <span
													aria-hidden="true">&lt;&lt;</span>
											</a></li>
											<li><a href="#" aria-label="Previous" title="이전"> <span
													aria-hidden="true">&lt;</span>
											</a></li>
											<li class="active"><a href="#">1</a></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#">4</a></li>
											<li><a href="#">5</a></li>
											<li><a href="#" aria-label="Next" title="다음"> <span
													aria-hidden="true">&gt;</span>
											</a></li>
											<li><a href="#" aria-label="Next" title="마지막"> <span
													aria-hidden="true">&gt;&gt;</span>
											</a></li>
										</ul>
									</nav>
									<!-- //SMS 발송내역 -->
								</div>
							</div>
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