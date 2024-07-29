<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>SMS 발송 관리</title>
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

.table td {
	word-break: break-all; /* 긴 단어가 셀의 너비를 초과할 때 줄 바꿈 처리 */
}

.tag {
	display: inline-block;
	background-color: #e4e4e4;
	border-radius: 3px;
	padding: 2px 5px;
	margin: 2px;
}

.remove-tag {
	cursor: pointer;
	color: #999;
	margin-left: 5px;
}

.remove-tag:hover {
	color: #666;
}
/*모달*/
.modal {
	display: none;
	position: fixed;
	z-index: 1000;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0,0,0,0.4);
}

.modal-content {
	background-color: #fefefe;
	margin: 10% auto;
	padding: 0;
	border: 1px solid #888;
	width: 50%;
	box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
	border-radius: 5px;
}

.modal-header {
	padding: 15px 20px;
	background-color: #3498db;
	color: white;
	display: flex;
	justify-content: space-between;
	align-items: center;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
}

.modal-title {
	margin: 0;
	font-size: 18px;
}

.close {
	color: white;
	font-size: 28px;
	font-weight: bold;
	cursor: pointer;
}

.close:hover,
.close:focus {
	color: #f1f1f1;
	text-decoration: none;
}

.modal-body {
	padding: 20px;
}

.memo-box {
	background-color: #f9f9f9;
	border: 1px solid #e0e0e0;
	border-radius: 4px;
	padding: 15px;
	max-height: 300px;
	overflow-y: auto;
}

#memoContent {
	margin: 0;
	line-height: 1.5;
	white-space: pre-wrap;
	word-wrap: break-word;
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
								<h3 class="text-info mt5">SMS 발송 관리</h3>
							</div>
						</div>
						<!-- //페이지 명 -->

						<!-- 목록 -->
						<div class="customer_container dashboard">
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#sms_tab1"
									id="send_tab" data-toggle="tab">SMS 보내기</a></li>
								<li role="presentation"><a href="#sms_tab2" id="log_tab"
									data-toggle="tab">발송내역</a></li>
							</ul>
							<div class="tab-content pt20">
								<div role="tabpanel" class="tab-pane active" id="sms_tab1">
									<!-- SMS 보내기 탭 내용 -->
									<!-- 기존 SmsSendMng 페이지의 내용을 여기에 붙여넣기 -->
									<div class="row">
										<div class="col-lg-4">
											<!-- SMS 대상검색 -->
											<!-- 검색옵션 -->
											<div class="panel panel-default search_wrap mb15 searchform"
												style="border-radius: 10px;">
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
															<input type="date" name="startDate" id="startDate"
																class="form-control pointer" value=""
																data-inputmask="'mask': '9999-99-99'">
														</div>
														<div class="col-md-1">~</div>
														<div class="col-md-4 col-lg-4">
															<input type="date" name="endDate" id="endDate"
																class="form-control pointer" value=""
																data-inputmask="'mask': '9999-99-99'">
														</div>
													</div>

													<div class="row">
														<div class="col-md-5 col-lg-12">
															<div class="row ">
																<div class="col-xs-4">
																	<select id="userSearchCate" name="userSearchCate"
																		class="form-control pointer">
																		<option value="">검색구분</option>
																		<option value="name">이름</option>
																		<option value="id">아이디</option>
																	</select>
																</div>
																<div class="col-xs-5">
																	<input type="text" class="form-control"
																		id="userKeyword" name="userKeyword" value=""
																		placeholder="키워드" />
																</div>
																<div class="col-xs-3">
																	<button type="button" id="userSearchKey"
																		class="btn btn-block btn-black" onclick="">
																		검색</button>
																</div>
															</div>
														</div>

													</div>
												</div>
											</div>
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
													Total : <strong id="userTotalRecords"
														class="num_eng text-primary "></strong>
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
															id="userData-table" width="100%" cellspacing="0">
															<thead>
																<tr>
																	<th width="10%" scope="col">선택</th>
																	<th scope="col"><strong>성명</strong></th>
																	<th scope="col"><strong>아이디</strong></th>
																	<%--                                                            <th scope="col"><strong>이메일</strong></th>--%>
																	<th width="31%" scope="col"><strong>휴대전화</strong></th>
																</tr>
															</thead>
															<tbody>
																<!-- Loop -->
																<!-- //Loop -->
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
														<td><label for="reserveTime"
															class="control-label control-label-ct"><strong>예약일시</strong></label>
														</td>
														<td>
															<%--<input type="text" class="form-control " id="reserve_time" name="reserve_time" value=""/>--%>
															<input type="datetime-local" name="reserveTime"
															id="reserveTime" class="form-control pointer" value=""
															data-inputmask="'mask': '9999-99-99 99:99:99'">
														</td>
													</tr>

													<tr>
														<td colspan="2"><textarea
																class="form-control form-control-sms" rows="6"
																maxlength="90" id="templateContent"
																name="templateContent" required></textarea> <!-- [:NAME:] -->
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
																			href="javascript:setEmoticon('☆(~.^)/');">☆(~.^)/</a>
																		</td>
																		<td colspan="4"><a
																			href="javascript:setEmoticon('づ^0^)づ');">づ^0^)づ</a></td>
																		<td colspan="4"><a
																			href="javascript:setEmoticon('&(☎ ☎)&');">&amp;(☎
																				☎)&amp;</a></td>
																	</tr>
																	<tr>
																		<td colspan="3"><a
																			href="javascript:setEmoticon('(*^.^)♂');">(*^.^)♂</a>
																		</td>
																		<td colspan="3"><a
																			href="javascript:setEmoticon('(o^^)o');">(o^^)o</a></td>
																		<td colspan="3"><a
																			href="javascript:setEmoticon('o(^^o)');">o(^^o)</a></td>
																		<td colspan="2"><a
																			href="javascript:setEmoticon('=◑.◐=');">=◑.◐=</a></td>
																	</tr>
																	<tr>
																		<td colspan="4"><a
																			href="javascript:setEmoticon('_(≥∇≤)ノ');">_(≥∇≤)ノ</a>
																		</td>
																		<td colspan="4"><a
																			href="javascript:setEmoticon('q⊙.⊙p');">q⊙.⊙p</a></td>
																		<td colspan="3"><a
																			href="javascript:setEmoticon('o(>_<)o');">o(&gt;_&lt;)o</a>
																		</td>
																	</tr>
																	<tr>
																		<td colspan="2"><a
																			href="javascript:setEmoticon('^.^');">^.^</a></td>
																		<td colspan="2"><a
																			href="javascript:setEmoticon('*^^*');">*^^*</a></td>
																		<td colspan="3"><a
																			href="javascript:setEmoticon('^o^~~♬');">^o^~~♬</a></td>
																		<td colspan="2"><a
																			href="javascript:setEmoticon('^.~');">^.~</a></td>
																	</tr>
																	<tr>
																		<td colspan="5"><a
																			href="javascript:setEmoticon('S(*^___^*)S');">S(*^___^*)S</a>
																		</td>
																		<td colspan="2"><a
																			href="javascript:setEmoticon('^Δ^');">^Δ^</a></td>
																		<td colspan="4"><a
																			href="javascript:setEmoticon('＼(*^▽^*)ノ');">＼(*^▽^*)ノ</a>
																		</td>
																	</tr>
																	<tr>
																		<td colspan="2"><a
																			href="javascript:setEmoticon('^L^');">^L^</a></td>
																		<td colspan="2"><a
																			href="javascript:setEmoticon('^ε^');">^ε^</a></td>
																		<td colspan="2"><a
																			href="javascript:setEmoticon('^_^');">^_^</a></td>
																		<td colspan="3"><a
																			href="javascript:setEmoticon('(ノ^O^)ノ');">(ノ^O^)ノ</a>
																		</td>
																		<td colspan="2"><a
																			href="javascript:setEmoticon('^0^');">^0^</a></td>
																	</tr>
																</tbody>
															</table>
														</td>
													</tr>

													<tr>
														<td class="active"><label for="send_number"
															class="control-label control-label-ct"> <strong>보내는
																	번호</strong>
														</label></td>
														<td><input type="text" class="form-control"
															id="send_number" name="send_number" value="${sendNumber}"
															required /></td>
													</tr>


													<tr>
														<td class="active"><label for="receiverTags"
															class="control-label control-label-ct"> <strong>받으실
																	분</strong>
														</label></td>
														<td>
															<div id="receiverTags" class="form-control"
																style="height: auto; min-height: 34px; cursor: text;">
																<!-- 태그들이 여기에 추가됩니다 -->
															</div> <input type="hidden" id="receive" name="receive"
															value="" />
														</td>
													</tr>

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
													<button type="button" id="sendBtn"
														class="btn btn-lg btn-block btn-warning" role="button">메시지
														보내기</button>
												</div>
												<div class="col-xs-6">
													<button type="button" id="saveBtn"
														class="btn btn-lg btn-block btn-black">템플릿 저장</button>
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
															<table id="templateData-table"
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
									<!-- 발송내역 탭 내용 -->
									<!-- SmsLog 페이지의 내용을 여기에 붙여넣기 -->
									<div>
										<div>
											<fieldset>
												<!-- 목록 검색 -->
												<div class="panel panel-default text-center"
													style="border-radius: 10px; box-shadow: 3px 3px 10px -7px;">
													<div class="panel-body">
														<div class="row ">
															<div
																class="col-sm-3 text-left mt5 hidden-xs hidden-sm hidden-md">
																<strong>검색</strong>
															</div>
															<div class="col-sm-9">
																<div class="row mb10">
																	<div class="col-md-3 col-lg-3">
																		<select id="log_period_type" name="log_period_type"
																				class="form-control pointer">
																			<!--<option value="" <? if($period_type=="") echo " selected ";?>>기간구분</option>-->
																			<option value="">기간구분</option>
																			<option value="write">발송일시</option>
																			<option value="reserve">예약일시</option>
																		</select>
																	</div>

																	<div class="col-md-4 col-lg-4">
																		<input type="datetime-local" name="logStartDate" id="logStartDate"
																			   class="form-control pointer" value=""
																			   data-inputmask="'mask': '9999-99-99'">
																	</div>
																	<div class="col-md-1">~</div>
																	<div class="col-md-4 col-lg-4">
																		<input type="datetime-local" name="logEndDate" id="logEndDate"
																			   class="form-control pointer" value=""
																			   data-inputmask="'mask': '9999-99-99'">
																	</div>
																</div>
																<div class="row mb10">
																	<div class="col-sm-5">
																		<select id="logSendTypeCate" name="logSendTypeCate"
																				class="form-control pointer">
																			<option value="">발송구분</option>
																			<option value="group">단체</option>
																			<option value="individual">개별</option>
																		</select>
																	</div>
																	<div class="col-sm-5">
																		<select id="logResultCate" name="logResultCate"
																				class="form-control pointer">
																			<option value="">결과구분</option>
																			<option value="SUCCESS">성공</option>
																			<option value="FAILED">실패</option>
																		</select>
																	</div>

																</div>
																<div class="row">
																	<div class="col-sm-5">
																		<select id="logSearchCate" name="logSearchCate"
																			class="form-control pointer">
																			<option value="">검색구분</option>
																			<option value="id">아이디</option>
																			<option value="hp">휴대폰 번호</option>
																		</select>
																	</div>
																	<div class="col-sm-5">
																		<input type="text" class="form-control"
																			id="logKeyword" name="logKeyword" value=""
																			placeholder="Keyword">
																	</div>
																	<div class="col-sm-2">
																		<button type="button" id="logSearchKey"
																			class="btn btn-block btn-default">
																			<i class="fa fa-search"></i> Search
																		</button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<!-- //목록 검색 -->

												<!-- 총 게시물 수 -->
												<div class="pagetotal">
													Total: <strong id="logTotalRecords" class="text-primary">3</strong>
													count
												</div>
												<!-- //총 게시물 수 -->
												<!-- 게시물 -->
												<div id="memoModal" class="modal">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title">발송 내용</h5>
															<span class="close">&times;</span>
														</div>
														<div class="modal-body">
															<div class="memo-box">
																<p id="memoContent"></p>
															</div>
														</div>
													</div>
												</div>
												<div name="form">
													<div>
														<table id="logData-table"
															class="table text-center table-hover hidden-xs">
															<thead>
																<tr class="headings">
																	<%--<th class="hidden-xs">
                                                                <input type="checkbox" id="check-all" class="flat">
                                                            </th>--%>
																	<th class="column-title">No.</th>
																	<th class="column-title">타입</th>
																	<th class="column-title">발신번호</th>
																	<th class="column-title">아이디</th>
																	<th class="column-title">수신번호</th>
																	<th class="column-title">보낸내용</th>
																	<th class="column-title">예약일시</th>
																	<th class="column-title">전송결과</th>
																	<th class="column-title">발송일시</th>
																</tr>
															</thead>

															<tbody>

																<tr class="odd pointer">
																	<td><input type="checkbox" name="sms_log_seq[19]"
																		value="6086" class="flat"></td>
																	<td class="hidden-xs"><strong>1</strong></td>
																	<td class="hidden-xs"></td>
																	<td class="hidden-xs"><strong>[알림]손실보상법
																			관련 제도개선 국민청원 동의 협조요청 <br> <br> ○ 10월 8일
																			중소벤처기업부가 행정예고한 「2021년 3분기 손실보상 기준 등에 관한 고시 제정안」 관련하여<br>
																			○ 영업시간제한, 집합금지로만 대상을 한정하여 대다수 학원이 손실보상 지원 대상에서
																			제외되었습니다. <br> <br> ○ 우선 본회 차원에서 중소벤처기업부
																			관계관과 간담회를 진행(10월 14일)하였으나 본회 건의가 반영되지 못했습니다. <br>
																			<br> ○ 이에 제도개선을 요청하는 국민청원을 진행하오니
																	</strong></td>
																	<td class="hidden-xs"><strong>01030508900</strong></td>
																	<td class="hidden-xs"><strong>ok</strong></td>
																	<td class="hidden-xs"><strong>2021-10-15
																			17:54:36</strong></td>
																	<td class="hidden-xs"></td>
																	<td class="hidden-xs"></td>
																	<!-- 작은화면 목록 -->
																	<td class="text-left hidden-sm hidden-md hidden-lg">
																		<div class="hidden-sm hidden-md hidden-lg">
																			<ul class="list-icon mb5">
																				<!--<span class="text-info mr5">thacher2<span class="hidden-md hidden-lg"> (여)</span></span>-->
																			</ul>
																		</div>
																	</td>
																	<!--// 작은화면 목록 -->

																</tr>
															</tbody>
														</table>

														<!-- 작은화면 -->
														<div
															style="border-top: 3px solid #ddd; border-bottom: 3px solid #ddd"
															class="hidden-lg hidden-md hidden-sm">
															<ul style="border-bottom: 1px solid #ddd; padding: 10px">
																<li></li>
																<li><i class="ti-"></i> [알림]손실보상법 관련 제도개선 국민청원 동의
																	협조요청 <br> <br> ○ 10월 8일 중소벤처기업부가 행정예고한 「2021년
																	3분기 손실보상 기준 등에 관한 고시 제정안」 관련하여<br> ○ 영업시간제한,
																	집합금지로만 대상을 한정하여 대다수 학원이 손실보상 지원 대상에서 제외되었습니다. <br>
																	<br> ○ 우선 본회 차원에서 중소벤처기업부 관계관과 간담회를 진행(10월
																	14일)하였으나 본회 건의가 반영되지 못했습니다. <br> <br> ○ 이에
																	제도개선을 요청하는 국민청원을 진행하오니</li>
																<li>01031502562</li>
																<li>ok</li>
																<li>2021-10-15 17:54:36</li>
																<li></li>
																<li></li>
															</ul>

															<ul style="border-bottom: 1px solid #ddd; padding: 10px">
																<li></li>
																<li><i class="ti-"></i> [알림]손실보상법 관련 제도개선 국민청원 동의
																	협조요청 <br> <br> ○ 10월 8일 중소벤처기업부가 행정예고한 「2021년
																	3분기 손실보상 기준 등에 관한 고시 제정안」 관련하여<br> ○ 영업시간제한,
																	집합금지로만 대상을 한정하여 대다수 학원이 손실보상 지원 대상에서 제외되었습니다. <br>
																	<br> ○ 우선 본회 차원에서 중소벤처기업부 관계관과 간담회를 진행(10월
																	14일)하였으나 본회 건의가 반영되지 못했습니다. <br> <br> ○ 이에
																	제도개선을 요청하는 국민청원을 진행하오니</li>
																<li>01050917777</li>
																<li>ok</li>
																<li>2021-10-15 17:54:36</li>
																<li></li>
																<li></li>
															</ul>
														</div>

														<!-- 작은화면 -->

													</div>
												</div>
												<div class="row" style="text-align: center;">
													<!--페이징-->
													<nav class="text-center">
														<ul id="pagination"
															class="pagination pagination-sm num-webfont">

														</ul>
													</nav>
													<!--페이징-->
												</div>

												<%--<div class="row pull-right">
                                                <a href="#" class="btn btn-mini btn-default" onclick="javascript:if(confirm('해당 항목들을 정말 삭제하시겠습니까?')) document.form.submit();">
                                                    <i class="fa fa-trash"></i> Check Delete
                                                </a>
                                                <a href="#" class="btn btn-mini btn-primary" onclick="javascript:location.href='menu_edit.html?page=';">
                                                    <i class="fa fa-pencil"></i> Write
                                                </a>
                                            </div>--%>
												<!-- //게시물 -->
											</fieldset>
										</div>
									</div>
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

	<script>

    // Tracks The Current Page
    let currentPage = 1;

	// User
    let userTable = document.getElementById('userData-table');
    let startDateInput = document.getElementById('startDate');
    let endDateInput = document.getElementById('endDate');
    let userSearchCateInput = document.getElementById('userSearchCate');
    let userKeywordInput = document.getElementById('userKeyword');
	// Log
    let logSearchCateInput = document.getElementById('logSearchCate');
    let logResultCateInput = document.getElementById('logResultCate');
    let logSendTypeCateInput = document.getElementById('logSendTypeCate');
    let logDateTypeCateInput = document.getElementById('log_period_type');
    let logStartDateInput = document.getElementById('logStartDate');
    let logEndDateInput = document.getElementById('logEndDate');
    let logKeywordInput = document.getElementById('logKeyword');
	// modal
	let modal = document.getElementById('memoModal');
	let span = document.getElementsByClassName('close')[0];
	let memoContent = document.getElementById('memoContent');
	// Template
    let sendNumberInput = document.getElementById('send_number');
    let reserveTimeInput = document.getElementById('reserveTime');
    let templateContent = document.getElementById('templateContent');
    let userSearchKeyBtn = document.getElementById('userSearchKey');
    let logSearchKeyBtn = document.getElementById('logSearchKey');
    let saveBtn = document.getElementById('saveBtn');
    let sendBtn = document.getElementById('sendBtn');

    let debounceTimer;
    let currentEditingRow = null;

    const debouncedUserSearchKey = debounce(userSearchKey, 300);
    const debouncedLogSearchKey = debounce(logSearchKey, 300);
    const debouncedSave = debounce(saveTemplate, 300);
    const debouncedSend = debounce(sendSms, 300);

    userSearchKeyBtn.addEventListener('click', debouncedUserSearchKey);
    logSearchKeyBtn.addEventListener('click', debouncedLogSearchKey);
    saveBtn.addEventListener('click', debouncedSave);
    sendBtn.addEventListener('click', debouncedSend);


    let tableBody = document.querySelector('#userData-table tbody');
    let receiverTags = document.getElementById('receiverTags');
    let receiveInput = document.getElementById('receive');
    let selectAllCheckbox = document.querySelector('#selectAll'); // 전체 선택 체크박스

    function updateReceiveInput() {
        let tags = receiverTags.querySelectorAll('.tag');
        let values = Array.from(tags).map(tag => tag.getAttribute('data-value'));
        receiveInput.value = values.join(',');
    }

    function createTag(name, id, seq, hp) {
        let tag = document.createElement('span');
        tag.className = 'tag';
        tag.setAttribute('data-value', hp);
        tag.innerHTML = name+`(`+id+`)`+` <span class="remove-tag">&times;</span>`;
        tag.querySelector('.remove-tag').addEventListener('click', function(e) {
            e.stopPropagation();
            removeTag(seq, hp);
        });
        return tag;
    }

    function addTag(name, id, seq, hp) {
        let existingTag = receiverTags.querySelector(`[data-value="`+hp+`"]`);
        let checkbox = tableBody.querySelector(`input[value="`+seq+`"]`);
        if (!checkbox.checked) {
            checkbox.checked = true;
        }
        if (!existingTag) {
            let tag = createTag(name, id, seq, hp);
            receiverTags.appendChild(tag);
            updateReceiveInput();
        }
    }

    function removeTag(seq, hp) {
        let tag = receiverTags.querySelector(`[data-value="`+hp+`"]`);
        if (tag) {
            tag.remove();
            updateReceiveInput();
        }
        let checkbox = tableBody.querySelector(`input[value="`+seq+`"]`);
        if (checkbox) {
            checkbox.checked = false;
        }
    }

    function toggleUser(user, checkbox) {
        checkbox.checked = !checkbox.checked;
        if (checkbox.checked) {
            addTag(user.user_name, user.user_id, user.user_seq, user.user_hp);
        } else {
            removeTag(user.user_seq, user.user_hp);
        }
    }


    $(document).ready(function () {
        // 탭 전환 처리
        $('.nav-tabs a').click(function (e) {
            e.preventDefault();
            $(this).tab('show');

            if ($(this).attr('id') === 'log_tab') {
                logSearchKey(1);
            }
        });

        // Press Enter Call SearchKey
        $('#userKeyword').on('keyup', function(event) {
            if (event.key === 'Enter') {
                event.preventDefault();
                debouncedUserSearchKey();
            }
        });

        // Press Enter Call SearchKey
        $('#logKeyword').on('keyup', function(event) {
            if (event.key === 'Enter') {
                event.preventDefault();
                debouncedLogSearchKey();
            }
        });

        userSearchKey();
        fetchTemplate();

        // 체크박스에 대한 커서 스타일 변경
        $('#userData-table').on('mouseover', 'input[type="checkbox"]', function() {
            $(this).css('cursor', 'pointer');
        });
    });

    function setEmoticon(emoticon) {
        insertAtCursor('templateContent', emoticon);
    }

    function insertAtCursor(areaId, text) {
        const textarea = document.getElementById(areaId);
        const { selectionStart, selectionEnd, value } = textarea;
        const scrollPos = textarea.scrollTop;

        const front = value.substring(0, selectionStart);
        const back = value.substring(selectionEnd);

        textarea.value = front + text + back;

        const newCursorPos = selectionStart + text.length;
        textarea.setSelectionRange(newCursorPos, newCursorPos);

        textarea.focus();
        textarea.scrollTop = scrollPos;
    }

    function inputNullChk(func, inputId){
        if(document.getElementById(inputId).value === ''){
            return;
        }else{
            func();
        }
    }

    // User Search Function
    function userSearchKey(){

        let formData = new FormData();
        formData.append('startDate', startDateInput.value);
        formData.append('endDate', endDateInput.value);
        formData.append('searchCate', userSearchCateInput.value);
        formData.append('keyword', userKeywordInput.value);

        fetch('/admin/searchSmsMngUser', {
            method: 'POST',
            body: formData,
        })
            .then(response => response.json())
            .then(data => {
                // userList is empty
                if (data.userList.length === 0) {
                    document.querySelector('#userData-table tbody').innerHTML = '<tr><td colspan="4" class="text-center">검색된 결과가 없습니다.</td></tr>'; // Show no results message
                    document.querySelector('#userTotalRecords').textContent = 0;
                    return;
                }

                // Table Update
                document.querySelector('#userTotalRecords').textContent = data.totalRecords;
                let tableBody = document.querySelector('#userData-table tbody');
                tableBody.innerHTML = '';

                data.userList.forEach(function(user, index) {

                    let row = document.createElement('tr');
                        row.className = 'odd pointer';
                        row.innerHTML = `
                           <td class="checkbox-cell"><input type="checkbox" name="user_seq[`+ user.user_seq+ `]" value="`+ user.user_seq + `" class="flat"></td>
                            <td>`+user.user_name+`</td>
                            <td>`+user.user_id+`</td>
                            <td>`+user.formattedHp+`</td>
                        `;

                    let checkbox = row.querySelector('input[type="checkbox"]');

                    row.addEventListener('click', function(e) {
                        if (e.target.type !== 'checkbox') {
                            toggleUser(user, checkbox);
                        }
                    });

                    checkbox.addEventListener('change', function() {
                        toggleUser(user, checkbox);
                    });

                    tableBody.appendChild(row);
                });
            })
            .catch(error => {
                console.error('Error:', error);
                alert('회원을 불러오는데 실패했습니다. 관리자에게 문의하세요.');
            });
    }


    // Log Search Function
    function logSearchKey(page = 1){

        let formData = new FormData();
        formData.append('searchCate', logSearchCateInput.value);
        formData.append('resultCate', logResultCateInput.value);
        formData.append('sendTypeCate', logSendTypeCateInput.value);
        formData.append('dateTypeCate', logDateTypeCateInput.value);
        formData.append('startDate', logStartDateInput.value);
        formData.append('endDate', logEndDateInput.value);
        formData.append('keyword', logKeywordInput.value);

        fetch('/admin/searchSmsMngLog', {
            method: 'POST',
            body: formData,
        })
            .then(response => response.json())
            .then(data => {

                // Current Page Update
                currentPage = page;

                // userList is empty
                if (data.logList.length === 0) {
                    $('#pagination').hide(); // Hide pagination
                    document.querySelector('#logData-table tbody').innerHTML = '<tr><td colspan="7" class="text-center">검색된 결과가 없습니다.</td></tr>'; // Show no results message
                    document.querySelector('#logTotalRecords').textContent = 0;
                    return;
                }

                // Table Update
                document.querySelector('#logTotalRecords').textContent = data.totalRecords;
                let tableBody = document.querySelector('#logData-table tbody');
                tableBody.innerHTML = '';

                data.logList.forEach(function(log, index) {

					let successStatus = log.result === 'SUCCESS' ? '성공':'실패';
					let sendType = log.send_type === 'group' ? '단체':'개인';

					let row = '<tr class="odd pointer" data-memo="' + log.memo + '">';
                        row += '<td>' + ((data.totalRecords - (data.currentPage - 1) * data.pageSize) - index) + '</td>';
						row += '<td>' + log.sendType + '</td>';
						row += '<td>' + log.formattedSendNo + '</td>';
                        row += '<td>' + log.user_id + '</td>';
						row += '<td>' + log.formattedReceiveNo + '</td>';
                        row += '<td>' + log.title + '</td>';
                        row += '<td>' + log.formattedReserveTime + '</td>';
                        row += '<td>' + log.successStatus + '</td>';
                        row += '<td>' + log.formattedWriteTime + '</td>';
                        row += '</tr>';

                    tableBody.innerHTML += row;
                });

				// 테이블 행 클릭 이벤트
				tableBody.addEventListener('click', function(e) {
					let target = e.target.closest('tr');
					if (target) {
						let memo = target.getAttribute('data-memo');
						memoContent.textContent = memo;
						modal.style.display = "block";
					}
				});

				// 모달 닫기 버튼
				span.onclick = function() {
					modal.style.display = "none";
				}

				// 모달 외부 클릭 시 닫기
				window.onclick = function(event) {
					if (event.target == modal) {
						modal.style.display = "none";
					}
				}
                // Pagination
                let pagination = $('#pagination');
                pagination.empty();

                let totalPages = Math.ceil(data.totalRecords / data.pageSize);

                // First Page
                pagination.append('<li><a href="#" aria-label="First Page" title="First Page" onclick="goPage(1);"><span aria-hidden="true"><i class="fa fa-angle-double-left" aria-hidden="true"></i></span></a></li>');

                // Previous Page
                let prevPage = page > 1 ? page - 1 : 1;
                pagination.append('<li><a href="#" aria-label="Previous" title="Previous Page" onclick="goPage(' + prevPage + ');"><span aria-hidden="true"><i class="fa fa-angle-left" aria-hidden="true"></i></span></a></li>');

                // Page Numbers
                let startPage = Math.max(1, page - 4);
                let endPage = Math.min(totalPages, page + 4);

                // Adjust start and end page if we're near the beginning or end
                if (startPage === 1) {
                    endPage = Math.min(9, totalPages);
                } else if (endPage === totalPages) {
                    startPage = Math.max(1, totalPages - 8);
                }

                for (let i = startPage; i <= endPage; i++) {
                    if (i === page) {
                        pagination.append('<li class="active"><a href="#" onclick="goPage(' + i + ');">' + i + '</a></li>');
                    } else {
                        pagination.append('<li><a href="#" onclick="goPage(' + i + ');">' + i + '</a></li>');
                    }
                }

                // Next Page
                let nextPage = page < totalPages ? page + 1 : totalPages;
                pagination.append('<li><a href="#" aria-label="Next" title="Next Page" onclick="goPage(' + nextPage + ');"><span aria-hidden="true"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a></li>');

                // Last Page
                pagination.append('<li><a href="#" aria-label="Next" title="Last Page" onclick="goPage(' + totalPages + ');"><span aria-hidden="true"><i class="fa fa-angle-double-right" aria-hidden="true"></i></span></a></li>');
            })
            .catch(error => {
                console.error('Error:', error);
                alert('발송내역을 불러오는데 실패했습니다. 관리자에게 문의하세요.');
            });
    }

    // Pagination
    function goPage(page) {
        if(page !== currentPage){
            searchKey(page);
        }
    }

    function debounce(func, delay) {
        return function() {
            const context = this;
            const args = arguments;
            clearTimeout(debounceTimer);
            debounceTimer = setTimeout(() => func.apply(context, args), delay);
        }
    }

    function fetchTemplate(){
        let tableBody = $('#templateData-table tbody');
        fetch('/admin/getSmsMngTemplate', {
            method: 'POST',
        })
            .then(response => response.json())
            .then(data => {
                if(data.templateList.length > 0){
                    tableBody.empty();

                    data.templateList.forEach(function(template, index) {
                        let reversedIndex = data.templateList.length - index;
                        let row = '<tr class="odd pointer">';
                            row += '<td class="\'' + template.sms_template_seq + '\'"><strong>' + reversedIndex + '</strong></td>';
                            row += '<td class="text-left text-content" onclick="setTemplate(event, \'' + template.content + '\')"><strong>' + template.content + '</strong></td>';
                            row += '<td class="pt0 pb0">';
                            row += '<button type="button" class="btn btn-xs btn-default btn-modify" onclick="editTemplate(\'' + template.sms_template_seq + '\');">수정</button>';
                            row += '<button type="button" class="btn btn-xs btn-danger" onclick="deleteTemplate(\'' + template.sms_template_seq + '\');">삭제</button>';
                            row += '</td>';
                            row += '</tr>';

                        tableBody.append(row);
                    });

                }else{
                    tableBody.html('<tr><td colspan="3" class="text-center">저장된 템플릿이 없습니다.</td></tr>'); // Show no results message
                    console.log('fail');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert('템플릿을 불러오는데 실패했습니다. 관리자에게 문의하세요.');
            })
    }

    // Check SetTemplate
    function setTemplate(event, content) {
        // 클릭된 요소가 textarea 가 아니라면 setTemplate 함수를 호출
        if (event.target.tagName.toLowerCase() !== 'textarea') {
            templateContent.value = content;
        }
    }

    // Save New Template
    function saveTemplate(){

        if(templateContent.value === ''){
            alert('템플릿 내용을 입력해주세요.');
            templateContent.focus();
            return;
        }

        let formData = new FormData();
        formData.append('content', templateContent.value);
        formData.append('company_seq', '${pageContext.request.userPrincipal.principal.user.companySeq}')

        fetch('/admin/insertSmsMngTemplate', {
            method: 'POST',
            body: formData
        })
            .then(response => response.json())
            .then(data => {
                if(data.result > 0){
                    fetchTemplate();
                    templateContent.textContent = '';
                    templateContent.value = '';
                }else{
                    alert('작업에 실패했습니다. 다시 시도해주세요.');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert('작업에 실패했습니다. 관리자에게 문의하세요.');
            })
    }

    // Delete Template
    function deleteTemplate(templateSeq){

        if(!confirm('해당 템플릿을 삭제하시겠습니까?')){
            return;
        }

        let formData = new FormData();
        formData.append('sms_template_seq', templateSeq);
        formData.append('company_seq', '${pageContext.request.userPrincipal.principal.user.companySeq}')

        fetch('/admin/deleteSmsMngTemplate', {
            method: 'POST',
            body: formData
        })
            .then(response => response.json())
            .then(data => {
                if(data.result > 0){
                    alert('해당 템플릿이 삭제되었습니다.');
                    fetchTemplate();
                }else{
                    alert('작업에 실패했습니다. 다시 시도해주세요.');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert('작업에 실패했습니다. 관리자에게 문의하세요.');
            })
    }

    // Edit Template
    function editTemplate(sms_template_seq) {

        // 이미 수정 중인 행이 있다면 수정을 취소합니다.
        if (currentEditingRow) {
            cancelEditTemplate(currentEditingRow, currentEditingRow.querySelector('.text-content').textContent);
        }

        const row = document.querySelector('button[onclick="editTemplate(\'' + sms_template_seq + '\');"]').closest('tr');
        const contentCell = row.querySelector('.text-content');
        const originalContent = contentCell.textContent;

        // 현재 수정 중인 행을 저장합니다.
        currentEditingRow = row;

        // textarea 로 내용을 교체합니다.
        contentCell.innerHTML = '<textarea id="editTextarea" class="form-control" rows="3">' + originalContent + '</textarea>';

        // 버튼을 교체합니다.
        const buttonCell = row.querySelector('td:last-child');
        buttonCell.innerHTML =
        '<button type="button" class="btn btn-xs btn-success" onclick="saveEditTemplate(\'' + sms_template_seq + '\')">저장</button>'+
        '<button type="button" class="btn btn-xs btn-default" onclick="cancelEditTemplate(this.closest(\'tr\'), \''+ originalContent +'\')">취소</button>';

        const textarea = document.getElementById('editTextarea');
        textarea.focus();

        textarea.selectionStart = textarea.value.length;
        textarea.selectionEnd = textarea.value.length;
    }

    // Save Edit Template
    function saveEditTemplate(sms_template_seq) {
        const row = currentEditingRow;
        const contentCell = row.querySelector('.text-content');
        const newContent = contentCell.querySelector('textarea').value;

        if(!newContent){
            alert('수정할 템플릿의 내용을 입력해주세요.');
            return;
        }

        let formData = new FormData();
        formData.append('content', newContent);
        formData.append('sms_template_seq', sms_template_seq);
        formData.append('company_seq', '${pageContext.request.userPrincipal.principal.user.companySeq}');

        fetch('/admin/updateSmsMngTemplate',{
            method: 'POST',
            body: formData
        })
            .then(response => response.json())
            .then(data => {
                if(data.result > 0){
                    alert('템플릿의 내용이 수정되었습니다.');
                    //fetchTemplate();
                }else{
                    alert('작업에 실패했습니다. 다시 시도해주세요.');
                }
            })
            .catch(error => {
               console.error('Error:', error);
               alert('작업이 실패했습니다. 관리자에게 문의하세요.');
            });

        // 내용을 업데이트합니다.
        contentCell.innerHTML = '<strong>' + newContent + '</strong>';

        // 버튼을 원래대로 되돌립니다.
        const buttonCell = row.querySelector('td:last-child');
        buttonCell.innerHTML =
            '<button type="button" class="btn btn-xs btn-default btn-modify" onclick="editTemplate(\'' + sms_template_seq + '\');">수정</button>' +
            '<button type="button" class="btn btn-xs btn-danger" onclick="deleteTemplate(\'' + sms_template_seq + '\');">삭제</button>';

        currentEditingRow = null;
    }

    function cancelEditTemplate(row, originalContent) {

        const sms_template_seq = row.querySelector('td:first-child').getAttribute('class');
        const contentCell = row.querySelector('.text-content');
        const textarea = contentCell.querySelector('textarea');

        if(textarea.value !== originalContent){
            if(!confirm('내용 입력을 취소하시겠습니까?')){
                return;
            }
        }

        // 내용을 원래대로 되돌림
        contentCell.innerHTML = '<strong>' + originalContent + '</strong>';

        // 버튼을 원래대로 되돌림
        const buttonCell = row.querySelector('td:last-child');
        buttonCell.innerHTML =
            '<button type="button" class="btn btn-xs btn-default btn-modify" onclick="editTemplate(' + sms_template_seq + ');">수정</button>' +
            '<button type="button" class="btn btn-xs btn-danger" onclick="deleteTemplate(' + sms_template_seq + ');">삭제</button>';

        currentEditingRow = null;
    }

    // Send SMS
    function sendSms(){

        // let receivers = receiveInput.value;
		let receiverTags = document.querySelectorAll('#receiverTags .tag');
		let receivers = Array.from(receiverTags).map(tag => {
			let fullText = tag.textContent.trim();
			let name = fullText.split('(')[0];
			let id = fullText.split('(')[1].split(')')[0];
			let hp = tag.getAttribute('data-value');
			return { userId: id, userHp: hp };
		});
        let sendNumber = sendNumberInput.value;
        let content = templateContent.value;
        let reserveTime = reserveTimeInput.value;

		if(content === '' || content === null){
			alert('메시지의 내용을 입력해주세요.');
			return;
		}else if(receiverTags.length < 1){
			alert('받으실 분을 선택해주세요.');
			return;
		}

		let url = receivers.length > 1 ? '/admin/sendMultipleSms' : '/admin/sendSingleSms';
		let body = {
			receivers: receivers,
			sendNumber: sendNumber,
			content: content,
			reserveTime: reserveTime
		};

		if(receivers.length === 1){
			// 단일 SMS 발송의 경우 receivers 배열에서 첫 번째 요소만 사용
			body.receiver = receivers[0];
			delete body.receivers;
		}

		fetch(url, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(body),
        })
            .then(response => {
				if(!response.ok){
					throw new Error('Network response was not ok');
				}
				return response.json();
			})
            .then(data => {
				console.log(data);
				console.log(data.isAllSuccess);
                if(data.isAllSuccess){
					alert('SMS ' + data.resultMsg + '(총 '+ data.successCount +'건)'+'이 접수 완료되었습니다.');
					window.location.reload();
                }else{
					alert('SMS 발송 접수에 실패했습니다.\n(총 '+data.totalCount+'건 중 '+ data.failCount +'실패)\n자세한 내용은 발송기록을 통해 확인하세요.');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert('작업에 실패했습니다. 관리자에게 문의하세요.');
            })
    }


</script>
</body>
</html>