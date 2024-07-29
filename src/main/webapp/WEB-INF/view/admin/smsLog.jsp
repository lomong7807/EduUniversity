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
<title>SmsLog</title>
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
							<div class="col-sm-6">
								<h3 class="text-info mt5">SMS 발송로그</h3>
							</div>
						</div>
						<!-- //페이지 명 -->
						<!-- 목록 -->
						<div>
							<form Method="Post" id="teacher_list" name="teacher_list">
								<input type="hidden" id="schIcon" name="schIcon" value="schIcon" />
								<input type="hidden" id="sel" name="sel" />
								<fieldset>

									<!-- 목록 검색 -->
									<div class="panel panel-default text-center">
										<div class="panel-body">
											<div class="row mt10 mb10">
												<div
													class="col-sm-3 text-left mt5 hidden-xs hidden-sm hidden-md">
													<strong>Basic Data</strong>
												</div>
												<div class="col-sm-9">
													<div class="row">
														<div class="col-sm-5">
															<select id="schStatus" name="schStatus"
																class="form-control pointer">
																<option value="T">아이디</option>
																<option value="">아이디1</option>
															</select>
														</div>
														<div class="col-sm-5">
															<input type="text" class="form-control" name="keyword"
																value="" placeholder="Keyword">
														</div>
														<div class="col-sm-2">
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
									<!-- //목록 검색 -->

									<!-- 총 게시물 수 -->
									<div class="pagetotal">
										Total: <strong class="text-primary">3</strong> count
									</div>
									<!-- //총 게시물 수 -->
									<!-- 게시물 -->
									<div name="form" method="post" action="menu_proc.php">
										<input type="hidden" name="mode" value="delete">
										<div>
											<table class="table text-center table-hover hidden-xs">
												<thead>
													<tr class="headings">
														<th class="hidden-xs"><input type="checkbox"
															id="check-all" class="flat"></th>
														<th class="column-title hidden-xs">No.</th>
														<th class="column-title hidden-xs">아이디</th>
														<th class="column-title hidden-xs">메세지</th>
														<th class="column-title hidden-xs">받는번호</th>
														<th class="column-title hidden-xs">전송결과</th>
														<th class="column-title hidden-xs">등록일시</th>
														<th class="column-title hidden-xs">예약일</th>
														<th class="column-title hidden-xs">예약시간</th>
													</tr>
												</thead>

												<tbody>

													<tr class="odd pointer">
														<td><input type="checkbox" name="sms_log_seq[19]"
															value="6086" class="flat"></td>
														<td class="hidden-xs"><strong>1</strong></td>
														<td class="hidden-xs"></td>
														<td class="hidden-xs"><strong>[알림]손실보상법 관련
																제도개선 국민청원 동의 협조요청 <br> <br> ○ 10월 8일 중소벤처기업부가
																행정예고한 「2021년 3분기 손실보상 기준 등에 관한 고시 제정안」 관련하여<br> ○
																영업시간제한, 집합금지로만 대상을 한정하여 대다수 학원이 손실보상 지원 대상에서 제외되었습니다. <br>
																<br> ○ 우선 본회 차원에서 중소벤처기업부 관계관과 간담회를 진행(10월 14일)하였으나
																본회 건의가 반영되지 못했습니다. <br> <br> ○ 이에 제도개선을 요청하는
																국민청원을 진행하오니
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
													<li><i class="ti-"></i> [알림]손실보상법 관련 제도개선 국민청원 동의 협조요청
														<br> <br> ○ 10월 8일 중소벤처기업부가 행정예고한 「2021년 3분기
														손실보상 기준 등에 관한 고시 제정안」 관련하여<br> ○ 영업시간제한, 집합금지로만 대상을
														한정하여 대다수 학원이 손실보상 지원 대상에서 제외되었습니다. <br> <br> ○
														우선 본회 차원에서 중소벤처기업부 관계관과 간담회를 진행(10월 14일)하였으나 본회 건의가 반영되지
														못했습니다. <br> <br> ○ 이에 제도개선을 요청하는 국민청원을 진행하오니</li>
													<li>01031502562</li>
													<li>ok</li>
													<li>2021-10-15 17:54:36</li>
													<li></li>
													<li></li>
												</ul>

												<ul style="border-bottom: 1px solid #ddd; padding: 10px">
													<li></li>
													<li><i class="ti-"></i> [알림]손실보상법 관련 제도개선 국민청원 동의 협조요청
														<br> <br> ○ 10월 8일 중소벤처기업부가 행정예고한 「2021년 3분기
														손실보상 기준 등에 관한 고시 제정안」 관련하여<br> ○ 영업시간제한, 집합금지로만 대상을
														한정하여 대다수 학원이 손실보상 지원 대상에서 제외되었습니다. <br> <br> ○
														우선 본회 차원에서 중소벤처기업부 관계관과 간담회를 진행(10월 14일)하였으나 본회 건의가 반영되지
														못했습니다. <br> <br> ○ 이에 제도개선을 요청하는 국민청원을 진행하오니</li>
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