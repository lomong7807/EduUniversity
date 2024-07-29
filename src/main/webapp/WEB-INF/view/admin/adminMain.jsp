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
						<!-- 방문자수~접속통계 -->
						<div class="section">
							<div class="tab-content pb0">
								<div role="tabpanel" class="" id="">
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
																<td class="text-right num-webfont">${regUserCount.today}</td>
															</tr>
															<!-- //Loop -->

															<!-- Loop -->
															<tr>
																<td>어제</td>
																<td class="text-right num-webfont">${regUserCount.yesterday}</td>
															</tr>
															<!-- //Loop -->

															<!-- Loop -->
															<tr>
																<td>7일</td>
																<td class="text-right num-webfont">${regUserCount.lastWeek}</td>
															</tr>
															<!-- //Loop -->

															<!-- Loop -->
															<tr>
																<td>1개월</td>
																<td class="text-right num-webfont">${regUserCount.lastMonth}</td>
															</tr>
															<!-- //Loop -->

															<!-- Loop -->
															<tr>
																<td>6개월</td>
																<td class="text-right num-webfont">${regUserCount.lastSixMonth}</td>
															</tr>
															<!-- //Loop -->
														</tbody>
														<tfoot>
															<tr>
																<td>전체</td>
																<td class="text-right num-webfont">${regUserCount.total}</td>
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
															class="mr5 ti-bar-chart-alt"></i> 회원 가입수 (
															${regUserCountWeekly.sevenDaysAgoDate}~${regUserCountWeekly.todayDate} )</strong>
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
							</div>
						</div>
						<!-- //방문자수~접속통계 -->

						<!-- 방문자수~접속통계 -->
						<div class="section">
							<div class="tab-content pb0">
								<div role="tabpanel" class="
								 active"
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
									</div>
								</div>
							</div>
						</div>
						<!-- //방문자수~접속통계 -->

						<div role="tabpanel" class="tab-pane" id="statistics-tab2">
							<div class="row">
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

						<!-- 공지사항 및 고객센터 -->
						<div class="section">
							<div class="row">
								<div class="col-sm-6 ">
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
								<div class="col-sm-6 ">
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
								<div class="col-sm-12 col-lg-4 hidden">
									<!-- 고객센터 -->
									<div class="panel panel-primary">
										<div class="panel-heading">
											<h4>
												<strong class="text-info">고객센터</strong>
											</h4>
											<span class="pull-right clickable"><i
												class="ti-arrow-circle-up"></i></span>
										</div>
										<div class="panel-body">
											<div class="customer-wrap">
												<div class="row">
													<div class="col-xs-8 col-sm-12 col-lg-8">
														<div class="row">
															<div class="col-sm-3 col-md-4 col-lg-12 line-loop">
																<div class="customer-tel  num-webfont">
																	<strong>070-1234-5678</strong> <span><a
																		href="mailto:cshelp@jsp.com">cshelp@jsp.com</a></span>
																</div>
															</div>
															<div class="col-sm-4 col-md-4 col-lg-12 line-loop">
																<div class="customer-info">
																	<span>평일 : <em class="num-webfont">AM 9:00
																			~ PM 08:00</em></span> <span>토요일 : <em class="num-webfont">AM
																			9:00 ~ PM 16:00</em></span>
																</div>
															</div>
															<div class="col-sm-5 col-md-4 col-lg-12">
																<div class="customer-sns-wrap">
																	<div class="media customer-sns">
																		<div class="media-left media-middle">
																			<a
																				href="https://www.viewnlive.net/_admin/member/login.html">
																				<img src="/img/admin/kakao-talk.jpg" alt="...">
																			</a>
																		</div>
																		<div class="media-body media-middle">
																			<div class="row">
																				<div class="col-xs-8 col-lg-6 text-left">
																					<h6>@JSP</h6>
																					<a href="https://pf.kakao.com/mandarin9"
																						target="_blank"
																						class="btn btn-xs btn-default mt10">플러스 친구</a>
																				</div>
																				<div class="col-xs-4 col-lg-6 text-left">
																					<a href="/site/board/344"> <img
																						src="/img/admin/qrcode.png">
																					</a>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div
														class="col-xs-4 col-sm-12 col-lg-4 text-right hidden-md hidden-sm">
														<a href="/v/66"> <img
															src="/img/admin/customer-img.png" alt=""
															class="customer-img">
														</a>
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
		$(document).ready(function ($) {
			c3generateLoad();

			let visitToday = ${visitorByToday};
			/* 금일 접속한 총 방문수 */
			c3.generate({
				bindto: "#hbC3gauge",
				data: {
					columns: [['data', visitToday]],
					type: "gauge"
				},
				gauge: {
					width: 50,
					label: {
						format: function (value, ratio) {
							return value;
						},
					},
					min: 0,
					max: 1000,
					units: ''
				},
				color: {
					pattern: [$.colors("blue", 500)]
				},
				padding: {
					bottom: 10
				},
				size: {
					height: 171
				}
			});

			/* 서버시간 기준 방문수 */
			c3.generate({
				bindto: "#hbC3Combination",
				data: {
					x: "x",
					columns: [
						["x", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"],
						["현재시간 기준", 107, 116, 113, 68, 98, 51, 72, 158, 128, 197, 148, 129, 80, 98, 120, 135, 82, 124, 178, 83, 50, 40, 60, 50],
						["서버시간 기준", 200, 133, 134, 99, 56, 130, 98, 150, 135, 169, 147, 130, 55, 81, 120, 96, 155, 139, 83, 93, 165, 200, 124, 99]
					],
					type: "bar"
				},
				color: {
					pattern: [$.colors("red", 500), $.colors("blue", 500)]
				},
				axis: {
					x: {
						label: "시각",
						max: 24,
						min: 1,
						tick: {
							outer: false,
							format: "%H"
						}
					},
					y: {
						label: "방문수",
						max: 200,
						min: 0,
						tick: {
							outer: false,
							count: 5,
							values: [0, 50, 100, 150, 200]
						}
					}
				},
				grid: {
					x: {
						show: false
					},
					y: {
						show: true
					}
				},
				size: {
					height: 242
				}
			});

			function c3generateLoad() {

				let today = ${regUserCountWeekly.today};
				let oneDayAgo = ${regUserCountWeekly.oneDayAgo};
				let twoDaysAgo = ${regUserCountWeekly.twoDaysAgo};
				let threeDaysAgo = ${regUserCountWeekly.threeDaysAgo};
				let fourDaysAgo = ${regUserCountWeekly.fourDaysAgo};
				let fiveDaysAgo = ${regUserCountWeekly.fiveDaysAgo};
				let sixDaysAgo = ${regUserCountWeekly.sixDaysAgo};
				let sevenDaysAgo = ${regUserCountWeekly.sevenDaysAgo};
				/* 회원가입수(최근 7일) */
				c3.generate({
					bindto: "#hbC3Zoom",
					data: {
						columns: [
							["가입자수",
							today,
							oneDayAgo,
							twoDaysAgo,
							threeDaysAgo,
							fourDaysAgo,
							fiveDaysAgo,
							sixDaysAgo,
							sevenDaysAgo
						]],
						colors: {
							sample: $.colors("red", 500)
						}
					},
					zoom: {
						enabled: true
					},
					legend: {
						show: false
					},
					size: {
						height: 242
					},
					grid: {
						x: {
							show: false
						},
						y: {
							show: true
						}
					},
					axis: {
						x: {
							label: "일 전",
						},
						y: {
							label: "가입자수",
						}
					}
				});

				let deviceVisitData = ${deviceVisitDataJson};

				let mobile = 0;
				let tablet = 0;
				let desktop = 0;
				let otherDevice = 0;

				// 데이터 처리
				deviceVisitData.forEach(function(item) {
					switch(item.deviceType) {
						case 'Mobile':
							mobile = item.visitCount;
							break;
						case 'Tablet':
							tablet = item.visitCount;
							break;
						case 'Desktop':
							desktop = item.visitCount;
							break;
						default:
							otherDevice = item.visitCount;
					}
				});

				/* 기기장치별 방문 비율 */
				c3.generate({
					bindto: "#hbC3Donut",
					data: {
						columns: [
							["스마트폰", mobile],
							["데스크톱", desktop],
							["태블릿", tablet],
							["알수없음", otherDevice]
						],
						type: "donut"
					},
					color: {
						pattern: [$.colors("blue", 500), $.colors("red", 500), $.colors("orange", 500), $.colors("green", 500)]
					},
					legend: {
						position: "right"
					},
					donut: {
						label: {
							show: true
						},
						width: 54,
						title: "디바이스"
					},
					size: {
						height: 242
					}
				});


				let deviceVisitDailyData = ${deviceVisitDailyDataJson};



				/* 기기장치별 최근 방문수 */
				c3.generate({
					bindto: "#hbSimpleLine",
					data: {
						x: "x",
						columns: [
							["x", "2016-01-05", "2016-01-06", "2016-01-07", "2016-01-08"],
							["스마트폰", 115, 49, 200, 29],
							["태블릿", 30, 100, 135, 200],
							["데스크톱", 200, 163, 13, 120],
							["알수없음", 2, 10, 3, 40]
						]
					},
					color: {
						pattern: [$.colors("red", 500), $.colors("blue", 500), $.colors("orange", 500), $.colors("green", 500)]
					},
					padding: {
						right: 30
					},
					axis: {
						x: {
							label: "날짜",
							type: "timeseries",
							tick: {
								outer: false,
								format: "%Y-%m-%d"
							}
						},
						y: {
							label: "방문수",
							max: 200,
							min: 0,
							tick: {
								outer: false,
								count: 5,
								values: [0, 50, 100, 150, 200]
							}
						}
					},
					grid: {
						x: {
							show: false
						},
						y: {
							show: true
						}
					},
					size: {
						height: 242
					}
				});

				let browserVisitData = ${browserVisitDataJson};

				console.log(browserVisitData);

				let chrome = 0;
				let firefox = 0;
				let ie = 0;
				let safari = 0;
				let edge = 0;
				let other = 0;

				// 데이터 처리
				browserVisitData.forEach(function(item) {
					switch(item.browser) {
						case 'Chrome':
							chrome = item.visitCount;
							break;
						case 'Firefox':
							firefox = item.visitCount;
							break;
						case 'Safari':
							safari = item.visitCount;
							break;
						case 'Edge':
							edge = item.visitCount;
							break;
						case 'Internet Explorer':
							ie = item.visitCount;
							break;
						default:
							other = item.visitCount;
					}
				});

				console.log(chrome);
				console.log(other);

				/* 방문자 브라우저 */
				c3.generate({
					bindto: "#hbC3Pie",
					data: {
						columns: [
							["Chrome", chrome],
							["Firefox", firefox],
							["Internet Explorer", ie],
							["Safari", safari],
							["Microsoft Edge", edge],
							["Other", other]
						],
						type: "pie"
					},
					color: {
						pattern: [
							$.colors("blue", 500),
							$.colors("red", 500),
							$.colors("green", 500),
							// $.colors("yellow", 500),
							$.colors("orange", 500),
							$.colors("purple", 500),
							$.colors("brown", 500)
						]
					},
					legend: {
						position: "bottom"
					},
					pie: {
						label: {
							show: false
						}
					},
					size: {
						height: 242
					}
				});

				let userCount = ${visitorRatio.userCount};
				let unknownCount = ${visitorRatio.unknownCount};
				/* 회원 비회원 방문자 비율 */
				c3.generate({
					bindto: "#hbC3Donut2",
					data: {
						columns: [
							["회원", userCount],
							["비회원", unknownCount]
						],
						type: "donut"
					},
					color: {
						pattern: [$.colors("red", 500), $.colors("blue", 500)]
					},
					legend: {
						position: "right"
					},
					donut: {
						label: {
							show: true
						},
						width: 54,
						title: "회원"
					},
					size: {
						height: 242
					}
				});
			}
		});
	</script>
</body>
</html>