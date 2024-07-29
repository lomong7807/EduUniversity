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
<title>DashBoard</title>
<%@ include file="layout/header.jsp"%>
</head>
<body class="admin">
	<!-- Admin Wrapper -->
	<div id="ubhome-wrapper">
		<!-- Page Content -->
		<div id="content-wrapper" class="dashboard-main">
			<!-- Main Content -->
			<div class="main-content">
				<!-- 콘테이너 -->
				<div id="container">
					<div class="dashboard">
						<!-- 수업 건 -->
						<div class="section">
							<div class="panel panel-primary class-ea-wrap">
								<div class="panel-body">
									<div class="row text-center">
										<div class="col-xs-4 col-sm-2 loop">
											<div class="class-ea-line">
												<h6>오늘 예정 수업</h6>
												<a href="#"><strong class="num-webfont hit">17</strong></a>건
											</div>
										</div>
										<div class="col-xs-4 col-sm-2 loop">
											<div class="class-ea-line">
												<h6>출석 수업</h6>
												<strong class="num-webfont">7</strong>건
											</div>
										</div>
										<div class="col-xs-4 col-sm-2 loop loop-mobile">
											<div class="class-ea-line">
												<h6>결석 수업</h6>
												<strong class="num-webfont">5</strong>건
											</div>
										</div>
										<div class="col-xs-4 col-sm-2 loop">
											<div class="class-ea-line">
												<h6>SKIP 수업</h6>
												<strong class="num-webfont">2</strong>건
											</div>
										</div>
										<div class="col-xs-4 col-sm-2 loop">
											<div class="class-ea-line">
												<h6>HOLD 수업</h6>
												<strong class="num-webfont">3</strong>건
											</div>
										</div>
										<div class="col-xs-4 col-sm-2 loop">
											<div class="class-ea-line">
												<h6>미 수업</h6>
												<strong class="num-webfont hit">0</strong>건
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- //수업 건 -->

						<!-- 캘린더 및 스케쥴 -->
						<div class="section">
							<div class="row">
								<div class="col-sm-12 col-lg-3">
									<!-- 캘린더 -->
									<div class="panel panel-primary">
										<div class="panel-heading">
											<h4>
												<strong class="text-info">캘린더 <span
													class="num-webfont">(2018-05-13)</span></strong>
											</h4>
											<span class="pull-right clickable"><i
												class="ti-arrow-circle-up"></i></span>
										</div>

										<div class="panel-body p0">
											<!-- 달력 -->
											<div class="table-calendar">
												<div class="row">
													<div
														class="col-sm-6 col-sm-offset-3 col-lg-12 col-lg-offset-0">
														<div class="row table-calendar-head">
															<div class="col-xs-2 col-lg-2">
																<a href="#"> <i class="ti-angle-left"></i>
																</a>
															</div>
															<div class="col-xs-4 col-lg-4">
																<select id="table-calendar-year"
																	class="form-control input-sm num-webfont">
																	<option value="2017">2017</option>
																	<option value="2018" selected="selected">2018</option>
																	<option value="2019">2019</option>
																	<option value="2020">2020</option>
																</select>
															</div>
															<div class="col-xs-4 col-lg-4">
																<select id="table-calendar-month"
																	class="form-control input-sm num-webfont">
																	<option value="01">01</option>
																	<option value="02">02</option>
																	<option value="03">03</option>
																	<option value="04">04</option>
																	<option value="05" selected="selected">05</option>
																	<option value="06">06</option>
																	<option value="07">07</option>
																	<option value="08">08</option>
																	<option value="09">09</option>
																	<option value="10">10</option>
																	<option value="11">11</option>
																	<option value="12">12</option>
																</select>
															</div>
															<div class="col-xs-2 col-lg-2 text-right">
																<a href="#"> <i class="ti-angle-right"></i>
																</a>
															</div>
														</div>
													</div>
												</div>

												<table class="table text-center">
													<colgroup>
														<col style="width: 15%;">
														<col style="width: 14%;">
														<col style="width: 14%;">
														<col style="width: 14%;">
														<col style="width: 14%;">
														<col style="width: 14%;">
														<col style="width: 15%;">
													</colgroup>
													<thead>
														<tr>
															<th scope="col">일</th>
															<th scope="col">월</th>
															<th scope="col">화</th>
															<th scope="col">수</th>
															<th scope="col">목</th>
															<th scope="col">금</th>
															<th scope="col">토</th>
														</tr>
													</thead>
													<tbody class="num-webfont">
														<!-- Loop -->
														<tr>
															<td class="text-danger"></td>
															<td></td>
															<td><a href="#">1</a></td>
															<td><a href="#">2</a></td>
															<td><a href="#">3</a></td>
															<td><a href="#">4</a></td>
															<td class="text-danger"><a href="#">5</a></td>
														</tr>
														<!-- //Loop -->

														<!-- Loop -->
														<tr>
															<td class="text-danger"><a href="#">6</a></td>
															<td class="text-danger"><a href="#">7</a></td>
															<td><a href="#">8</a></td>
															<td><a href="#">9</a></td>
															<td><a href="#">10</a></td>
															<td><a href="#">11</a></td>
															<td class="text-primary"><a href="#">12</a></td>
														</tr>
														<!-- //Loop -->

														<!-- Loop -->
														<tr>
															<td class="text-danger"><a href="#">13</a></td>
															<td><a href="#">14</a></td>
															<!-- 등록된 행사 예 -->
															<td class="event"><a href="#">15</a></td>
															<!-- //등록된 행사 예 -->
															<td><a href="#">16</a></td>
															<td><a href="#">17</a></td>
															<td><a href="#">18</a></td>
															<td class="text-primary"><a href="#">19</a></td>
														</tr>
														<!-- //Loop -->

														<!-- Loop -->
														<tr>
															<td class="text-danger"><a href="#">20</a></td>
															<td><a href="#">21</a></td>
															<!-- 등록된 축제 예 -->
															<td class="text-danger"><a href="#">22</a></td>
															<!-- //등록된 축제 예 -->
															<td><a href="#">23</a></td>
															<td><a href="#">24</a></td>
															<td><a href="#">25</a></td>
															<td class="text-primary"><a href="#">26</a></td>
														</tr>
														<!-- //Loop -->

														<!-- Loop -->
														<tr>
															<td class="text-danger"><a href="#">27</a></td>
															<td><a href="#">28</a></td>
															<td><a href="#">29</a></td>
															<td><a href="#">30</a></td>
															<td><a href="#">31</a></td>
															<td></td>
															<td></td>
														</tr>
														<!-- //Loop -->
													</tbody>
												</table>
											</div>
											<!-- //달력 -->
										</div>
									</div>
									<!-- //캘린더 -->
								</div>
								<div class="col-sm-7 col-md-6 col-lg-5">
									<!-- 결제상태 -->
									<div class="panel panel-primary">
										<div class="panel-heading">
											<h4>
												<strong class="text-info">결제상태</strong>
											</h4>
											<a href="#" class="pull-right clickable-more"><i
												class="ti-plus"></i></a>
										</div>

										<div class="panel-body">
											<table
												class="table table-flat table-flat-last text-center hidden-xs hidden-sm">
												<colgroup>
													<col style="width: 15%;">
													<col style="width: 10%;">
													<col>
													<col style="width: 24%;">
												</colgroup>
												<thead>
													<tr>
														<th scope="col">시간</th>
														<th scope="col">분</th>
														<th scope="col">입금자</th>
														<th scope="col">상태</th>
													</tr>
												</thead>
											</table>
											<div class="table-scroll">
												<table class="table table-flat table-flat-last text-center">
													<colgroup>
														<col style="width: 15%;">
														<col style="width: 10%;">
														<col>
														<col style="width: 16%;">
													</colgroup>
													<tbody>
														<!-- Loop -->
														<tr>
															<td class="num-webfont">07</td>
															<td class="num-webfont">25</td>
															<td class="text-left subject-td">김정원 <span
																class="num-webfont">(pou934)</span>
															</td>
															<td><span class="label label-xs label-primary">완료</span></td>
														</tr>
														<!-- //Loop -->

														<!-- Loop -->
														<tr>
															<td class="num-webfont">15</td>
															<td class="num-webfont">00</td>
															<td class="text-left subject-td">조미진 <span
																class="num-webfont">(pkj6453)</span>
															</td>
															<td><span class="label label-xs label-warning">대기중</span></td>
														</tr>
														<!-- //Loop -->
														<!-- Loop -->
														<tr>
															<td class="num-webfont">20</td>
															<td class="num-webfont">40</td>
															<td class="text-left subject-td">이소연 <span
																class="num-webfont">(leedw53)</span>
															</td>
															<td><span class="label label-xs label-danger">실패</span></td>
														</tr>
														<!-- //Loop -->
														<!-- Loop -->
														<tr>
															<td class="num-webfont">17</td>
															<td class="num-webfont">10</td>
															<td class="text-left subject-td">조미진 <span
																class="num-webfont">(jomi453)</span>
															</td>
															<td><span class="label label-xs label-default">취소</span></td>
														</tr>
														<!-- //Loop -->

														<!-- Loop -->
														<tr>
															<td class="num-webfont">18</td>
															<td class="num-webfont">25</td>
															<td class="text-left subject-td">김미영 <span
																class="num-webfont">(egd5563)</span>
															</td>
															<td><span class="label label-xs label-primary">완료</span></td>
														</tr>
														<!-- //Loop -->

														<!-- Loop -->
														<tr>
															<td>19</td>
															<td>30</td>
															<td class="text-left subject-td">이소연 <span
																class="num-webfont">(leedw53)</span>
															</td>
															<td><span class="label label-xs label-primary">완료</span></td>
														</tr>
														<!-- //Loop -->
													</tbody>
												</table>
											</div>
										</div>
									</div>
									<!-- //결제상태 -->
								</div>
								<div class="col-sm-5 col-md-6 col-lg-4">
									<!-- 레벨테스트 스케쥴 -->
									<div class="panel panel-primary">
										<div class="panel-heading">
											<h4>
												<strong class="text-info">최근 가입회원</strong>
											</h4>
											<a href="#" class="pull-right clickable-more"><i
												class="ti-plus"></i></a>
										</div>

										<div class="panel-body">
											<table
												class="table table-flat table-flat-last text-center hidden-xs hidden-sm">
												<colgroup>
													<col style="width: 15%;">
													<col style="width: 10%;">
													<col>
												</colgroup>
												<thead>
													<tr>
														<th scope="col">시간</th>
														<th scope="col">분</th>
														<th scope="col">회원정보</th>
													</tr>
												</thead>
											</table>
											<div class="table-scroll">
												<table class="table table-flat table-flat-last text-center">
													<colgroup>
														<col style="width: 15%;">
														<col style="width: 10%;">
														<col>
													</colgroup>
													<tbody>
														<!-- Loop -->
														<tr>
															<td class="num-webfont">07</td>
															<td class="num-webfont">25</td>
															<td class="text-left subject-td">김정원 <span
																class="num-webfont"><span class="hidden-sm">(pou934)</span></span>
															</td>
														</tr>
														<!-- //Loop -->

														<!-- Loop -->
														<tr>
															<td class="num-webfont">10</td>
															<td class="num-webfont">10</td>
															<td class="text-left subject-td">강성훈 <span
																class="num-webfont"><span class="hidden-sm">(eeosb1004)</span></span>
															</td>
														</tr>
														<!-- //Loop -->

														<!-- Loop -->
														<tr>
															<td class="num-webfont">15</td>
															<td class="num-webfont">00</td>
															<td class="text-left subject-td">조미진 <span
																class="num-webfont"><span class="hidden-sm">(pkj6453)</span></span>
															</td>
														</tr>
														<!-- //Loop -->

														<!-- Loop -->
														<tr>
															<td class="num-webfont">17</td>
															<td class="num-webfont">10</td>
															<td class="text-left subject-td">조미진 <span
																class="num-webfont"><span class="hidden-sm">(jomi453)</span>1</span>
															</td>
														</tr>
														<!-- //Loop -->

														<!-- Loop -->
														<tr>
															<td class="num-webfont">18</td>
															<td class="num-webfont">25</td>
															<td class="text-left subject-td">김미영 <span
																class="num-webfont"><span class="hidden-sm">(egd5563)</span></span>
															</td>
														</tr>
														<!-- //Loop -->

														<!-- Loop -->
														<tr>
															<td class="num-webfont">19</td>
															<td class="num-webfont">30</td>
															<td class="text-left subject-td">이소연 <span
																class="num-webfont"><span class="hidden-sm">(leedw53)</span></span>
															</td>
														</tr>
														<!-- //Loop -->

														<!-- Loop -->
														<tr>
															<td class="num-webfont">20</td>
															<td class="num-webfont">40</td>
															<td class="text-left subject-td">이소연 <span
																class="num-webfont"><span class="hidden-sm">(leedw53)</span></span>
															</td>
														</tr>
														<!-- //Loop -->

														<!-- Loop -->
														<tr>
															<td class="num-webfont">22</td>
															<td class="num-webfont">25</td>
															<td class="text-left subject-td">차미영 <span
																class="num-webfont"><span class="hidden-sm">(gefd653)</span></span>
															</td>
														</tr>
														<!-- //Loop -->
													</tbody>
												</table>
											</div>
										</div>
									</div>
									<!-- //레벨테스트 스케쥴 -->
								</div>
							</div>
						</div>
						<!-- //캘린더 및 스케쥴 -->

						<!-- 방문자수~접속통계 -->
						<div class="section">
							<ul class="nav nav-tabs nav-tabs-primary" role="tablist"
								id="nav-tabs">
								<li role="presentation" class="active"><a
									href="#statistics-tab1" aria-controls="statistics-tab1"
									role="tab" data-toggle="tab">방문현황</a></li>
								<li role="presentation"><a href="#statistics-tab2"
									aria-controls="statistics-tab2" role="tab" data-toggle="tab">기기별분포</a></li>
								<li role="presentation"><a href="#statistics-tab3"
									aria-controls="statistics-tab3" role="tab" data-toggle="tab">회원가입</a></li>
								<li role="presentation"><a href="#statistics-tab4"
									aria-controls="statistics-tab4" role="tab" data-toggle="tab">방문분석</a></li>
							</ul>
							<div class="tab-content pb0">
								<div role="tabpanel" class="tab-pane active"
									id="statistics-tab1">
									<div class="row">
										<div class="col-lg-4 col-md-12">
											<div class="row">
												<!-- 금일 접속한 총 방문수 -->
												<div class="col-lg-12 col-sm-6">
													<div class="panel panel-primary">
														<div class="panel-heading">
															<h4>
																<strong class="text-info"><i
																	class="mr5 ti-pie-chart"></i> 금일 접속한 총 방문수</strong>
															</h4>
															<span class="pull-right clickable"><i
																class="ti-arrow-circle-up"></i></span>
														</div>
														<div class="panel-body text-center">
															<div id="hbC3gauge"></div>
														</div>
													</div>
												</div>
												<!-- //금일 접속한 총 방문수 -->

												<div class="col-lg-12 col-sm-6">
													<!-- 평균페이지뷰 -->
													<div class="dashboard-widget">
														<div class="row">
															<div class="col-xs-6 col-sm-12 col-lg-6 md-mb20 xs-mb0">
																<div class="widget-icon bg-success pull-left">
																	<i class="ti-layout-media-center-alt"></i>
																</div>
																<div class="widget-body">
																	<div class="title">9.52</div>
																	<div class="comment">평균 페이지뷰</div>
																</div>
															</div>
															<div class="col-xs-6 col-sm-12 col-lg-6">
																<div class="widget-icon bg-info pull-left">
																	<i class="ti-timer"></i>
																</div>
																<div class="widget-body">
																	<div class="title num-webfont">04:12</div>
																	<div class="comment">평균 체류시간</div>
																</div>
															</div>
															<div
																class="col-xs-6 col-sm-12 col-lg-6 md-mt20 hidden-lg hidden-xs">
																<div class="widget-icon bg-primary pull-left">
																	<i class="ti-settings"></i>
																</div>
																<div class="widget-body">
																	<div class="title num-webfont">324,850</div>
																	<div class="comment">전체 방문자 수</div>
																</div>
															</div>
														</div>
													</div>
													<!-- //평균페이지뷰 -->
												</div>
											</div>
										</div>

										<!-- 전년도 대비 방문수 -->
										<div class="col-lg-4 col-md-6">
											<div class="panel panel-primary">
												<div class="panel-heading">
													<h4>
														<strong class="text-info"><i
															class="mr5 ti-bar-chart"></i> 전년도 대비 방문수</strong>
													</h4>
													<span class="pull-right clickable"><i
														class="ti-arrow-circle-up"></i></span>
												</div>
												<div class="panel-body text-center">
													<div id="hbC3Subchart"></div>
												</div>
											</div>
										</div>
										<!-- //전년도 대비 방문수 -->

										<!-- 서버시간 기준 방문수 -->
										<div class="col-lg-4 col-md-6">
											<div class="panel panel-primary">
												<div class="panel-heading">
													<h4>
														<strong class="text-info"><i class="mr5 ti-time"></i>
															서버시간 기준 방문수</strong>
													</h4>
													<span class="pull-right clickable"><i
														class="ti-arrow-circle-up"></i></span>
												</div>
												<div class="panel-body text-center">
													<div id="hbC3Combination"></div>
												</div>
											</div>
										</div>
										<!-- 서버시간 기준 방문수 -->
									</div>
								</div>
								<div role="tabpanel" class="tab-pane" id="statistics-tab2">
									<div class="row">
										<!-- 검색엔진 -->
										<div class="col-lg-3 col-sm-6">
											<div class="panel panel-primary">
												<div class="panel-heading">
													<h4>
														<strong class="text-info"><i
															class="mr5 fa ti-search"></i> 검색엔진</strong>
													</h4>
													<span class="pull-right clickable"><i
														class="ti-arrow-circle-up"></i></span>
												</div>
												<div class="panel-body">
													<table class="table table-flat table-flat-last">
														<colgroup>
															<col style="width: 50%;">
															<col style="width: 50%;">
														</colgroup>
														<thead>
															<tr>
																<th scope="col" class="text-left">검색엔진</th>
																<th scope="col" class="text-right">고유 방문자 수</th>
															</tr>
														</thead>
														<tbody>
															<!-- Loop -->
															<tr>
																<td class="num-webfont"><a href="#">Google</a></td>
																<td class="text-right num-webfont">745</td>
															</tr>
															<!-- //Loop -->

															<!-- Loop -->
															<tr>
																<td class="num-webfont"><a href="#">Naver</a></td>
																<td class="text-right num-webfont">156</td>
															</tr>
															<!-- //Loop -->

															<!-- Loop -->
															<tr>
																<td class="num-webfont"><a href="#">Daum</a></td>
																<td class="text-right num-webfont">93</td>
															</tr>
															<!-- //Loop -->

															<!-- Loop -->
															<tr>
																<td class="num-webfont"><a href="#">Yahoo</a></td>
																<td class="text-right num-webfont">28</td>
															</tr>
															<!-- //Loop -->

															<!-- Loop -->
															<tr>
																<td class="num-webfont"><a href="#">Nate</a></td>
																<td class="text-right num-webfont">28</td>
															</tr>
															<!-- //Loop -->

															<!-- Loop -->
															<tr>
																<td class="num-webfont"><a href="#">bing</a></td>
																<td class="text-right num-webfont">28</td>
															</tr>
															<!-- //Loop -->
														</tbody>
													</table>
												</div>
											</div>
										</div>
										<!-- 검색엔진 -->

										<!-- 기기장치별 방문 비율 -->
										<div class="col-lg-4 col-sm-6">
											<div class="panel panel-primary">
												<div class="panel-heading">
													<h4>
														<strong class="text-info"><i
															class="mr5 ti-pie-chart"></i> 기기장치별 방문 비율</strong>
													</h4>
													<span class="pull-right clickable"><i
														class="ti-arrow-circle-up"></i></span>
												</div>
												<div class="panel-body text-center">
													<div id="hbC3Donut"></div>
												</div>
											</div>
										</div>
										<!-- 기기장치별 방문 비율 -->

										<!-- 기기장치별 최근 방문수 -->
										<div class="col-lg-5 col-sm-12">
											<div class="panel panel-primary">
												<div class="panel-heading">
													<h4>
														<strong class="text-info"><i
															class="mr5 ti-bar-chart"></i> 기기장치별 최근 방문수</strong>
													</h4>
													<span class="pull-right clickable"><i
														class="ti-arrow-circle-up"></i></span>
												</div>
												<div class="panel-body text-center">
													<div id="hbSimpleLine"></div>
												</div>
											</div>
										</div>
										<!-- //기기장치별 최근 방문수 -->
									</div>
								</div>
								<div role="tabpanel" class="tab-pane" id="statistics-tab3">
									<div class="row">
										<!-- 방문자 브라우저 -->
										<div class="col-lg-4 col-sm-6">
											<div class="panel panel-primary">
												<div class="panel-heading">
													<h4>
														<strong class="text-info"><i
															class="mr5 ti-pie-chart"></i> 방문자 브라우저</strong>
													</h4>
													<span class="pull-right clickable"><i
														class="ti-arrow-circle-up"></i></span>
												</div>
												<div class="panel-body text-center">
													<div id="hbC3Pie"></div>
												</div>
											</div>
										</div>
										<!-- //방문자 브라우저 -->

										<!-- 회원 가입수 -->
										<div class="col-lg-3 col-sm-6">
											<div class="panel panel-primary">
												<div class="panel-heading">
													<h4>
														<strong class="text-info"><i
															class="mr5 ti-id-badge"></i> 회원 가입수</strong>
													</h4>
													<span class="pull-right clickable"><i
														class="ti-arrow-circle-up"></i></span>
												</div>
												<div class="panel-body">
													<table class="table table-flat">
														<colgroup>
															<col style="width: 50%;">
															<col style="width: 50%;">
														</colgroup>
														<thead>
															<tr>
																<th scope="col" class="text-left">구분</th>
																<th scope="col" class="text-right">가입자 수</th>
															</tr>
														</thead>
														<tbody>
															<!-- Loop -->
															<tr>
																<td>오늘</td>
																<td class="text-right num-webfont">2384</td>
															</tr>
															<!-- //Loop -->

															<!-- Loop -->
															<tr>
																<td>어제</td>
																<td class="text-right num-webfont">1678</td>
															</tr>
															<!-- //Loop -->

															<!-- Loop -->
															<tr>
																<td>7일</td>
																<td class="text-right num-webfont">1219</td>
															</tr>
															<!-- //Loop -->

															<!-- Loop -->
															<tr>
																<td>1개월</td>
																<td class="text-right num-webfont">425</td>
															</tr>
															<!-- //Loop -->

															<!-- Loop -->
															<tr>
																<td>6개월</td>
																<td class="text-right num-webfont">308</td>
															</tr>
															<!-- //Loop -->
														</tbody>
														<tfoot>
															<tr>
																<td>전체</td>
																<td class="text-right num-webfont">6318</td>
															</tr>
														</tfoot>
													</table>
												</div>
											</div>
										</div>
										<!-- 회원 가입수 -->

										<!-- 회원가입수(최근 7일) -->
										<div class="col-lg-5 col-sm-12">
											<div class="panel panel-primary">
												<div class="panel-heading">
													<h4>
														<strong class="text-info"><i
															class="mr5 ti-bar-chart-alt"></i> 회원가입수(최근 7일)</strong>
													</h4>
													<span class="pull-right clickable"><i
														class="ti-arrow-circle-up"></i></span>
												</div>
												<div class="panel-body text-center">
													<div id="hbC3Zoom"></div>
												</div>
											</div>
										</div>
										<!-- //회원가입수(최근 7일) -->
									</div>
								</div>
								<div role="tabpanel" class="tab-pane" id="statistics-tab4">
									<div class="row">
										<!-- 회원 비회원 방문자 비율 -->
										<div class="col-lg-4 col-sm-6">
											<div class="panel panel-primary">
												<div class="panel-heading">
													<h4>
														<strong class="text-info"><i
															class="mr5 ti-desktop"></i> 회원 비회원 방문자 비율</strong>
													</h4>
													<span class="pull-right clickable"><i
														class="ti-arrow-circle-up"></i></span>
												</div>
												<div class="panel-body text-center">
													<div id="hbC3Donut2"></div>
												</div>
											</div>
										</div>
										<!-- 회원 비회원 방문자 비율 -->

										<!-- 회원그룹별 방문자수 -->
										<div class="col-lg-4 col-sm-6">
											<div class="panel panel-primary">
												<div class="panel-heading">
													<h4>
														<strong class="text-info"><i
															class="mr5 ti-pie-chart"></i> 회원그룹별 방문자수</strong>
													</h4>
													<span class="pull-right clickable"><i
														class="ti-arrow-circle-up"></i></span>
												</div>
												<div class="panel-body text-center">
													<div id="hbC3Pie2"></div>
												</div>
											</div>
										</div>
										<!-- //회원그룹별 방문자수 -->

										<!-- 년별 방문자 -->
										<div class="col-lg-4 col-sm-12">
											<div class="panel panel-primary">
												<div class="panel-heading">
													<h4>
														<strong class="text-info"><i
															class="mr5 ti-bar-chart"></i> 년별 방문자</strong>
													</h4>
													<span class="pull-right clickable"><i
														class="ti-arrow-circle-up"></i></span>
												</div>
												<div class="panel-body text-center">
													<div id="hbSimpleBar"></div>
												</div>
											</div>
										</div>
										<!-- //년별 방문자 -->
									</div>
								</div>
							</div>
						</div>
						<!-- //수강신청~접속통계 -->

						<!-- 공지사항 및 고객센터 -->
						<div class="section">
							<div class="row">
								<div class="col-sm-6 col-lg-4">
									<!-- Q&A -->
									<div class="panel panel-primary">
										<div class="panel-heading">
											<h4>
												<strong class="text-info">Q&A</strong>
											</h4>
											<a href="#" class="pull-right clickable-more"><i
												class="ti-plus"></i></a>
										</div>

										<div class="panel-body p0">
											<table
												class="table text-center table-striped table-fixed widget-showlist mb0">
												<tbody>
													<!-- Loop -->
													<tr>
														<td class="text-left"><a href="javascript:void(0);"
															class="subject-link">학교 상담서비스는 어떻게 이용하나요?</a></td>
														<td class="td-date hidden-xs num-webfont">2024-07-01</td>
													</tr>
													<!-- //Loop -->

													<!-- Loop -->
													<tr>
														<td class="text-left"><a href="javascript:void(0);"
															class="subject-link">입학신청은 어떻게 하나요?</a></td>
														<td class="td-date hidden-xs num-webfont">2024-07-01</td>
													</tr>
													<!-- //Loop -->

													<!-- Loop -->
													<tr>
														<td class="text-left"><a href="javascript:void(0);"
															class="subject-link">장학금 신청은 어떻게 하나요?</a></td>
														<td class="td-date hidden-xs num-webfont">2018-07-10</td>
													</tr>
													<!-- //Loop -->
													<!-- Loop -->
													<tr>
														<td class="text-left"><a href="javascript:void(0);"
															class="subject-link">졸업 요건은 무엇인가요?</a></td>
														<td class="td-date hidden-xs num-webfont">2018-07-10</td>
													</tr>
													<!-- //Loop -->
													<!-- Loop -->
													<tr>
														<td class="text-left"><a href="javascript:void(0);"
															class="subject-link">진학 상담은 어떻게 받을 수 있나요?</a></td>
														<td class="td-date hidden-xs num-webfont">2018-07-10</td>
													</tr>
													<!-- //Loop -->
												</tbody>
											</table>
										</div>
									</div>
									<!-- //Q&A -->
								</div>
								<div class="col-sm-6 col-lg-4">
									<!-- 공지사항 -->
									<div class="panel panel-primary">
										<div class="panel-heading">
											<h4>
												<strong class="text-info">공지사항</strong>
											</h4>
											<a href="#" class="pull-right clickable-more"><i
												class="ti-plus"></i></a>
										</div>

										<div class="panel-body p0">
											<table
												class="table text-center table-striped table-fixed widget-showlist mb0">
												<tbody>

													<!-- Loop -->
													<tr>
														<td class="text-left"><a href="javascript:void(0);"
															class="subject-link">카카오톡 플러스 친구 추가방법</a></td>
														<td class="td-date hidden-xs num-webfont">2017-09-08</td>
													</tr>
													<!-- //Loop -->

													<!-- Loop -->
													<tr>
														<td class="text-left"><a href="javascript:void(0);"
															class="subject-link">2024년 1학기 학부모 간담회 일정 안내</a></td>
														<td class="td-date hidden-xs num-webfont">2024-05-13</td>
													</tr>
													<!-- //Loop -->

													<!-- Loop -->
													<tr>
														<td class="text-left"><a href="javascript:void(0);"
															class="subject-link">교내 체육관 리모델링 공사 안내</a></td>
														<td class="td-date hidden-xs num-webfont">2024-04-10</td>
													</tr>
													<!-- //Loop -->

													<!-- Loop -->
													<tr>
														<td class="text-left"><a href="javascript:void(0);"
															class="subject-link">2024년 2학기 개강 및 주요 일정 안내</a></td>
														<td class="td-date hidden-xs num-webfont">2024-04-10</td>
													</tr>
													<!-- //Loop -->
														<!-- Loop -->
													<tr>
														<td class="text-left"><a href="javascript:void(0);"
															class="subject-link"> 비상 대피 훈련 안내</a></td>
														<td class="td-date hidden-xs num-webfont">2024-04-10</td>
													</tr>
													<!-- //Loop -->
												</tbody>
											</table>
										</div>
									</div>
									<!-- //공지사항 -->
								</div>
								<div class="col-sm-12 col-lg-4">
									<!-- 고객센터 -->
									<div class="panel panel-primary">
											<div class="panel-heading">
												<h4><strong class="text-info">고객센터</strong></h4>
												<span class="pull-right clickable"><i class="ti-arrow-circle-up"></i></span>
											</div>
											<div class="panel-body">
												<div class="customer-wrap">
													<div class="row">
														<div class="col-xs-8 col-sm-12 col-lg-8">
															<div class="row">
																<div class="col-sm-3 col-md-4 col-lg-12 line-loop">
																	<div class="customer-tel  num-webfont">
																		<strong>070-1234-5678</strong>
																		<span><a href="mailto:cshelp@jsp.com">cshelp@jsp.com</a></span>
																	</div>
																</div>
																<div class="col-sm-4 col-md-4 col-lg-12 line-loop">
																	<div class="customer-info">
																		<span>평일 : <em class="num-webfont">AM 9:00 ~ PM 08:00</em></span>
																		<span>토요일 : <em class="num-webfont">AM 9:00 ~ PM 16:00</em></span>
																	</div>
																</div>
																<div class="col-sm-5 col-md-4 col-lg-12">
																	<div class="customer-sns-wrap">
																		<div class="media customer-sns">
																			<div class="media-left media-middle">
																				<img src="/img/admin/kakao-talk.jpg" alt="...">
																			</div>
																			<div class="media-body media-middle">
																				<div class="row">
																					<div class="col-xs-8 col-lg-6 text-left">
																						<h6>@JSP</h6>
																						<a href="https://pf.kakao.com/mandarin9" target="_blank" class="btn btn-xs btn-default mt10">플러스 친구</a>
																					</div>
																					<div class="col-xs-4 col-lg-6 text-left">
																						<img src="/img/admin/qrcode.png" alt="...">
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="col-xs-4 col-sm-12 col-lg-4 text-right hidden-md hidden-sm">
															<img src="/img/admin/customer-img.png" alt="" class="customer-img">
														</div>
													</div>
												</div>
											</div>
										</div>
									<!-- //고객센터 -->
								</div>
							</div>
						</div>
						<!-- //공지사항 및 고객센터 -->
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
		$(document).ready(
				function($) {
					$('a[data-toggle="tab"]').on('shown.bs.tab', function(e) {
						c3generateLoad();
					})
					/* 금일 접속한 총 방문수 */
					c3.generate({
						bindto : "#hbC3gauge",
						data : {
							columns : [ [ 'data', 683 ] ],
							type : "gauge"
						},
						gauge : {
							width : 50,
							label : {
								format : function(value, ratio) {
									return value;
								},
							},
							min : 0,
							max : 1000,
							units : ''
						},
						color : {
							pattern : [ $.colors("blue", 500) ]
						},
						padding : {
							bottom : 10
						},
						size : {
							height : 171
						}
					});

					/* 전년도 대비 방문수 */
					c3
							.generate({
								bindto : "#hbC3Subchart",
								data : {
									x : "x",
									columns : [
											[ "x", "1", "2", "3", "4", "5",
													"6", "7", "8", "9", "10",
													"11", "12" ],
											[ "2015", 1000, 1650, 1400, 2700,
													2000, 1400, 2200, 2100,
													190, 1000, 1700, 2500 ],
											[ "2016", 1010, 800, 1000, 850,
													1250, 900 ] ],
									type : "spline"
								},
								axis : {
									x : {
										label : "달",
										max : 12,
										min : 1,
										tick : {
											outer : !1,
											format : "%m"
										}
									},
									y : {
										label : "방문수",
										max : 2500,
										min : 0,
										tick : {
											outer : !1,
											count : 6,
											values : [ 0, 500, 1000, 1500,
													2000, 2500 ]
										}
									}
								},
								color : {
									pattern : [ $.colors("red", 500),
											$.colors("blue", 500) ]
								},
								subchart : {
									show : !0
								},
								size : {
									height : 242
								}
							});

					/* 서버시간 기준 방문수 */
					c3.generate({
						bindto : "#hbC3Combination",
						data : {
							x : "x",
							columns : [
									[ "x", "1", "2", "3", "4", "5", "6", "7",
											"8", "9", "10", "11", "12", "13",
											"14", "15", "16", "17", "18", "19",
											"20", "21", "22", "23", "24" ],
									[ "현재시간 기준", 107, 116, 113, 68, 98, 51, 72,
											158, 128, 197, 148, 129, 80, 98,
											120, 135, 82, 124, 178, 83, 50, 40,
											60, 50 ],
									[ "서버시간 기준", 200, 133, 134, 99, 56, 130,
											98, 150, 135, 169, 147, 130, 55,
											81, 120, 96, 155, 139, 83, 93, 165,
											200, 124, 99 ] ],
							type : "bar"
						},
						color : {
							pattern : [ $.colors("red", 500),
									$.colors("blue", 500) ]
						},
						axis : {
							x : {
								label : "시각",
								max : 24,
								min : 1,
								tick : {
									outer : !1,
									format : "%H"
								}
							},
							y : {
								label : "방문수",
								max : 200,
								min : 0,
								tick : {
									outer : !1,
									count : 5,
									values : [ 0, 50, 100, 150, 200 ]
								}
							}
						},
						grid : {
							x : {
								show : !1
							},
							y : {
								show : !0
							}
						},
						size : {
							height : 242
						}
					});

					function c3generateLoad() {
						/* 기기장치별 방문 비율 */
						c3.generate({
							bindto : "#hbC3Donut",
							data : {
								columns : [ [ "스마트폰", 120 ], [ "데스크톱", 80 ],
										[ "태블릿", 40 ], [ "알수없음", 10 ] ],
								type : "donut"
							},
							color : {
								pattern : [ $.colors("blue", 500),
										$.colors("red", 500),
										$.colors("orange", 500),
										$.colors("green", 500) ]
							},
							legend : {
								position : "right"
							},
							donut : {
								label : {
									show : 1
								},
								width : 54,
								title : "디바이스"
							},
							size : {
								height : 242
							}
						});

						/* 기기장치별 최근 방문수 */
						c3.generate({
							bindto : "#hbSimpleLine",
							data : {
								x : "x",
								columns : [
										[ "x", "2016-01-05", "2016-01-06",
												"2016-01-07", "2016-01-08" ],
										[ "스마트폰", 115, 49, 200, 29 ],
										[ "태블릿", 30, 100, 135, 200 ],
										[ "데스크톱", 200, 163, 13, 120 ],
										[ "알수없음", 2, 10, 3, 40 ] ]
							},
							color : {
								pattern : [ $.colors("red", 500),
										$.colors("blue", 500),
										$.colors("orange", 500),
										$.colors("green", 500) ]
							},
							padding : {
								right : 30
							},
							axis : {
								x : {
									label : "날짜",
									type : "timeseries",
									tick : {
										outer : !1,
										format : "%Y-%m-%d"
									}
								},
								y : {
									label : "방문수",
									max : 200,
									min : 0,
									tick : {
										outer : !1,
										count : 5,
										values : [ 0, 50, 100, 150, 200 ]
									}
								}
							},
							grid : {
								x : {
									show : !1
								},
								y : {
									show : !0
								}
							},
							size : {
								height : 242
							}
						});

						/* 방문자 브라우저 */
						c3
								.generate({
									bindto : "#hbC3Pie",
									data : {
										columns : [ [ "Chrome", 30 ],
												[ "Firefox", 25 ],
												[ "Internet Explorer", 16 ],
												[ "Safari", 11 ],
												[ "Chromium", 8 ],
												[ "Microsoft Edge", 6 ],
												[ "Opera", 4 ] ],
										type : "pie"
									},
									color : {
										pattern : [ $.colors("blue", 500),
												$.colors("red", 500),
												$.colors("green", 500),
												$.colors("yellow", 500),
												$.colors("orange", 500),
												$.colors("purple", 500),
												$.colors("brown", 500) ]
									},
									legend : {
										position : "bottom"
									},
									pie : {
										label : {
											show : !1
										}
									},
									size : {
										height : 242
									}
								});

						/* 회원가입수(최근 7일) */
						c3.generate({
							bindto : "#hbC3Zoom",
							data : {
								columns : [ [ "sample",
										Math.floor(Math.random() * 99),
										Math.floor(Math.random() * 99),
										Math.floor(Math.random() * 99),
										Math.floor(Math.random() * 99),
										Math.floor(Math.random() * 99),
										Math.floor(Math.random() * 99),
										Math.floor(Math.random() * 99) ] ],
								colors : {
									sample : $.colors("red", 500)
								}
							},
							zoom : {
								enabled : !0
							},
							legend : {
								show : 0
							},
							size : {
								height : 242
							},
							grid : {
								x : {
									show : !1
								},
								y : {
									show : !0
								}
							},
							axis : {
								x : {
									label : "일",
								},
								y : {
									label : "방문수",
								}
							}
						});

						/* 회원 비회원 방문자 비율 */
						c3.generate({
							bindto : "#hbC3Donut2",
							data : {
								columns : [ [ "회원", 112 ], [ "비회원", 66 ] ],
								type : "donut"
							},
							color : {
								pattern : [ $.colors("red", 500),
										$.colors("blue", 500) ]
							},
							legend : {
								position : "right"
							},
							donut : {
								label : {
									show : 1
								},
								width : 54,
								title : "회원"
							},
							size : {
								height : 242
							}
						});

						/* 회원그룹별 방문자수 */
						c3.generate({
							bindto : "#hbC3Pie2",
							data : {
								columns : [ [ "교사", 32 ], [ "학생", 24 ],
										[ "조리사", 17 ], [ "경비", 10 ],
										[ "관리자", 5 ] ],
								type : "pie"
							},
							color : {
								pattern : [ $.colors("blue", 500),
										$.colors("red", 500),
										$.colors("green", 500),
										$.colors("yellow", 500),
										$.colors("orange", 500) ]
							},
							legend : {
								position : "right"
							},
							pie : {
								label : {
									show : !1
								}
							},
							size : {
								height : 242
							}
						});

						/* 년별 방문자 */
						c3
								.generate({
									bindto : "#hbSimpleBar",
									data : {
										x : "x",
										columns : [
												[ "x", "2014", "2015", "2016",
														"2017", "2018" ],
												[ "y", 6700, 10000, 6530,
														16500, 26731 ] ],
										type : "bar",
										labels : {
											format : {
												y : d3.format(",")
											}
										}
									},
									tooltip : {
										show : 0
									},
									color : {
										pattern : [ $.colors("blue", 500) ]
									},
									axis : {
										x : {
											label : "년",
											max : 2018,
											min : 2014,
											tick : {
												outer : !1,
												format : "%Y"
											}
										},
										y : {
											label : "방문수",
											max : 25000,
											min : 0,
											tick : {
												outer : !1,
												count : 7,
												values : [ 0, 5000, 10000,
														15000, 20000, 25000 ]
											}
										}
									},
									legend : {
										show : 0
									},
									grid : {
										x : {
											show : !1
										},
										y : {
											show : !0
										}
									},
									size : {
										height : 242
									}
								});
					}
				})
	</script>
</body>
</html>