<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
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
<title>에듀대학교</title>
</head>
<body>
	<%@ include file="../layout/header1.jsp"%>
	<!-- Slider Type1 -->
	<section class="cd-hero js-cd-hero js-cd-autoplay">
		<ul class="cd-hero_slider">
			<li class="cd-hero_slide js-cd-slide cd-hero_slide-selected">
				<div class="cd-hero_content">
					<div class="cd-hero_text" style="background: url(/img/user/banner_sample.jpg) no-repeat center/cover;">
						<div class="cd-hero_table">
							<div class="cd-hero_cell text-left num-webfont">
								<div class="container">
									<h2 class="animated" data-animate="fadeInLeft" data-delay=".1">
										에듀대학교, <br>미래를 여는 지식의 요람
									</h2>
								</div>
							</div>
						</div>
					</div>
					<!-- <div class="cd-hero_content-bg-img" style="background-image: url(/img/user/banner_sample.jpg);">
								<img src="" alt="" class="img-responsive" />
							</div> -->
				</div>
			</li>
			<li class="cd-hero_slide js-cd-slide">
				<div class="cd-hero_content">
					<div class="cd-hero_text">
						<div class="cd-hero_table">
							<div class="cd-hero_cell text-center num-webfont">
								<div class="container">
									<h2 class="animated" data-animate="fadeInUp" data-delay=".1">Learning Chinese</h2>
									<h3 class="animated" data-animate="fadeInDown" data-delay=".2">Isn’t Challenging</h3>
									<p class="animated hidden-xs" data-animate="fadeIn" data-delay=".3">
										<strong>Start Learning</strong>
									</p>
									<a href="#" class="btn btn-lg btn-danger animated mt15 mb20 hidden-xs" data-animate="fadeInUp" data-delay=".4">
										<strong>VIEW MORE</strong> <i class="ti-arrow-circle-right small ml5"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="cd-hero_content-bg-video hidden-xs">
						<div class="embed-responsive embed-responsive-16by9 md-mt40">
							<iframe src="https://player.vimeo.com/video/287954926?autoplay=1&loop=1&autopause=0&title=0&byline=0&portrait=0&muted=1&api=1&background=1" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen class="embed-responsive-item"></iframe>
						</div>
					</div>
					<div class="cd-hero_content-bg-img hidden-sm hidden-md hidden-lg">
						<img src="/img/user/w-img2.jpg" alt="" class="img-responsive" />
					</div>
				</div>
			</li>
		</ul>
	</section>
	<!-- //Slider Type1 -->
	<div class="c-wrap">
		<!-- TV Show -->
		<div class="section section-big xs-pt15">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="embed-responsive embed-responsive-16by9 md-mt5 animated" data-animate="fadeInUp" data-delay=".1">
							<img src="/img/user/school_intro.jpg" class="img-responsive">
						</div>
					</div>
					<div class="col-md-6  lh24 ls5">
						<div class="ml40 md-ml30 m-ml0 m-mt25 xs-ml0">
							<h2 class="text-line num-webfont mt5 mb10 lh24 animated" data-animate="fadeInRight" data-delay=".2">
								<strong class="big4" style="font-weight: 600;">학교소개</strong>
							</h2>

							<h2 class="mt10 mb20 md-mb5 text-justify animated fadeInRight" data-animate="fadeInRight" data-delay=".3" style="visibility: visible; animation-delay: 0.3s;">미래를 디자인하는 캠퍼스</h2>
							<p class="mb5 md-mb5 text-justify animated" data-animate="fadeInRight" data-delay=".4">‘열정과 배움이 넘치는 곳’</p>
							<p class="mb5 m-mb5 text-justify animated" data-animate="fadeInRight" data-delay=".5"></p>
							<p class="mb30 m-mb15 text-justify animated" data-animate="fadeInRight" data-delay=".5">에듀 대학교는 창의적 학습과 글로벌 리더 양성을 위한 혁신적인 교육 환경을 제공합니다.</p>

							<a href="/site/menu/3" class="btn btn-lg btn-primary num-webfont animated" data-animate="fadeInRight" data-delay=".6">
								<strong>VIEW MORE</strong> <i class="ti-arrow-circle-right small ml5"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //TV Show -->
		<div class="section section-big xs-pt0">
			<div class="container">
				<div class="row">
					<div class="col-sm-3 xs-mb20">
						<div class="text-right m-text-center pt30" style="border-top: solid 2px #999;">
							<h2 class="text-line num-webfont mt20 mb10 lh24 animated fadeInRight" data-animate="fadeInRight" data-delay=".2" style="visibility: visible; animation-delay: 0.2s;">
								<strong class="big4" style="font-weight: 600;">공지사항</strong>
							</h2>
							<p class="mb30 m-mb15 animated fadeInRight" data-animate="fadeInRight" data-delay=".5" style="visibility: visible; animation-delay: 0.5s;">
								최신 소식과<br> 중요한 정보를 확인하세요.
							</p>
							</p>
							<a href="/site/menu/15" class="btn btn-lg btn-primary num-webfont animated fadeInRight" data-animate="fadeInRight" data-delay=".6" style="visibility: visible; animation-delay: 0.6s;">
								<strong>VIEW MORE</strong> <i class="ti-arrow-circle-right small ml5"></i>
							</a>
						</div>
					</div>
					<div class="col-sm-9">
						<div class="col-xs-2 col-sm-1 " style="border-top: solid 2px #ccc;"></div>
						<div class="col-xs-10 col-sm-11 " style="border-top: solid 2px #999;"></div>
						<div class="pt30">
							<!--상단 라인-->
							<div class="col-xs-12 " style="height: 70px;">
								<div class="col-xs-2 col-sm-1 text-center" style="height: 70px;">
									<h2 style="height: 70px; line-height: 70px; color: #6a8ee0">01</h2>
								</div>
								<div class="col-xs-8 col-sm-10 text-gray pt10 notice_text2 over pointer">
									<a>
										2024학년도 2학기 학부제 예비전공 선택 안내 <br>국제어학 프로그램 EAC (구ELP) 수강모집 안내 1) 대 상: 외국어역량걍화 및 외국어분야 졸업인증제 대체희망자 2) 신청방법:...
									</a>
								</div>
								<div class="col-xs-2 col-sm-1 text-center">
									<h2 style="height: 70px; line-height: 70px;">
										<a href="/board/index.html?board_id=hjm_notice&amp;action=view&amp;seq=688">
											<i class="fa fa-angle-double-right no_arrow" aria-hidden="true"></i>
										</a>
									</h2>
								</div>
							</div>
							<div class="col-xs-12 " style="height: 70px;">
								<div class="col-xs-2 col-sm-1 text-center" style="height: 70px;">
									<h2 style="height: 70px; line-height: 70px; color: #6a8ee0">02</h2>
								</div>
								<div class="col-xs-8 col-sm-10 text-gray pt10 notice_text2 over pointer">
									<a>
										대학생을 위한 저작권보호 가이드라인 <br> 1. 관련 : 문화체육관광부 저작권보호과-1712(2024.4.17.) 2. 문화체육관광부에서는 '범정부 케이(K)-콘텐츠 불법 유통 근...
									</a>
								</div>
								<div class="col-xs-2 col-sm-1 text-center">
									<h2 style="height: 70px; line-height: 70px;">
										<a href="/board/index.html?board_id=hjm_notice&amp;action=view&amp;seq=688">
											<i class="fa fa-angle-double-right no_arrow" aria-hidden="true"></i>
										</a>
									</h2>

								</div>
							</div>
							<div class="col-xs-12" style="height: 70px;">
								<div class="col-xs-2 col-sm-1 text-center" style="height: 70px;">
									<h2 style="height: 70px; line-height: 70px; color: #6a8ee0">03</h2>
								</div>
								<div class="col-xs-8 col-sm-10 text-gray pt10 notice_text2 over  pointer">
									<a>
										2024 청년농업인 필수교육 장소 <br>&lt;제주권역&gt; 제주 농업기술센터 주소 : 제주특별자치도 제주시 애월읍 상귀길 173(구주소: 상귀리 750-1) 제주 농업기술센터 오시는 길 바로가기 ★ 쾌적한 교육 환경을 위해 흡연은 꼭! 정해진 장소에서 부탁드리겠습니다. ★ 기타 문의사항 ☎ 061-393-3013(평일 10:00~17:00(점심시간 12:00~13:00 제외)) ✉&nbsp;korean0831@naver.com
									</a>
								</div>
								<div class="col-xs-2 col-sm-1 text-center" style="height: 70px;">
									<h2 style="height: 70px; line-height: 70px;">
										<a href="/board/index.html?board_id=hjm_notice&amp;action=view&amp;seq=688">
											<i class="fa fa-angle-double-right no_arrow" aria-hidden="true"></i>
										</a>
									</h2>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 학습과정1 -->

		<div class="section section-big">
			<div class="container">
				<div class="row">
					<div class="col-sm-8">
						<div class="mr10">
							<h2 class="text-line num-webfont mt5 mb20 lh24 animated" data-animate="fadeInRight" data-delay=".2">
								<strong class="big4" style="font-weight: 600;">뉴스</strong>
							</h2>

							<section class="cd-hero js-cd-hero js-cd-autoplay cd-hero-nobg animated xs-mb30 fadeInUp" data-animate="fadeInUp" data-delay=".3" style="visibility: visible; animation-delay: 0.3s;">
								<ul class="cd-hero_slider">
									<li class="cd-hero_slide js-cd-slide cd-hero_slide-move-left">
										<div class="cd-hero_content pr20 pl20 pt10 news_bor news">
											<a href="#">
												<div class="text-center" style="font-size: 20px;">
													<strong>대학일자리플러스센터, E-TEST(엑셀) 자격취득 과정 운영</strong>
												</div>
												<div class="mt10 news_content">광주대학교 대학일자리플러스센터는 8일부터 오는 12일까지 총 30명을 대상으로 비즈니스 엑셀 역량 강화를 위한 E-TEST(엑셀) 과정을 운영한다. E-TEST(엑셀) 과정은 국가 공인 민간자격증으로 컴퓨터활용능력 2급보다는 난이도가 낮아 취업준비생이 쉽게 접근하고 취득할 수 있는 자격증으로, 엑셀 정보활용능력을 향상시킬 수 있는 과정이다. E-TEST(엑셀) 자격취득 과정에서는 ▲엑셀 함수 ▲차트 ▲피벗테이블 ▲시나리오 ▲정렬 및 부분합 등 엑셀을 활용한 데이터 관리 및 다양한 기술을 습득할 수 있다. 신춘우 대학일자리플러스센터장은 “취업에 필요한 자격증을 다양하게 취득할 수 있도록 적극적으록 과정을 운영하고 지원하겠다”라고 말했다. 엑셀을 활용한 데이터 관리 및 다양한 기술을 습득할 수 있다. 신춘우 대학일자리플러스센터장은 “취업에 필요한 자격증을 다양하게 취득할 수 있도록 적극적으록 과정을 운영하고 지원하겠다”라고 말했다.엑셀을 활용한 데이터 관리 및 다양한 기술을 습득할 수 있다. 신춘우 대학일자리플러스센터장은 “취업에 필요한 자격증을 다양하게 취득할 수 있도록 적극적으록 과정을 운영하고 지원하겠다”라고 말했다.v엑셀을 활용한 데이터 관리 및 다양한 기술을 습득할 수 있다. 신춘우 대학일자리플러스센터장은 “취업에 필요한 자격증을 다양하게 취득할 수 있도록 적극적으록 과정을 운영하고 지원하겠다”라고 말했다.</div>
									</li>

									<li class="cd-hero_slide js-cd-slide cd-hero_slide-move-left">
										<div class="cd-hero_content pr20 pl20 pt10 news_bor news">
											<a href="#">
												<div class="text-center" style="font-size: 20px;">
													<strong>유아교육과, 이음교육 시범학교 광양중동초 방문</strong>
												</div>
												<div class="mt10  news_content">
													광주대학교(총장 김동진) 유아교육과 교수들은 4일 전라남도 광양중동초등학교(교장 오미숙)를 방문, 선진 유아교육의 다양한 사례를 살펴봤다.<br> <br>유아교육과 교수 6명이 참여한 이날 방문에서는 이음교육을 시범 운영 중인 광양중동초등학교의 유아교육과 보육, 유아교육과 초등교육의 연계성을 강화하는 다양한 교육 프로그램을 살펴보고, 학교 간 유기적인 연계 방법을 깊이 있게 이해하는 시간을 가졌다. <br> <br>김세루 학과장은 “이번 방문은 유아교육과 초등교육의 연계성을 강화하기 위한 실질적인 방법을 구상하는 데 큰 도움이 되었다”라고 말했다. <br> <br> 사범 계열인 광주대 유아교육과는 지난 2022년 교육부와 한국교육개발원의 ‘5주기 교원양성기관 역량진단평가’에서 최고 등급인 A등급을 받으며 교육부장관 표창을 수상한 바 있다. 구상하는 데 큰 도움이 되었다”라고 말했다. <br> <br> 사범 계열인 광주대 유아교육과는 지난 2022년 교육부와 한국교육개발원의 ‘5주기 교원양성기관 역량진단평가’에서 최고 등급인 A등급을 받으며 교육부장관 표창을 수상한 바 있다.구상하는 데 큰 도움이 되었다”라고 말했다. <br> <br> 사범 계열인 광주대 유아교육과는 지난 2022년 교육부와 한국교육개발원의 ‘5주기 교원양성기관 역량진단평가’에서 최고 등급인 A등급을 받으며 교육부장관 표창을 수상한 바 있다.구상하는 데 큰 도움이 되었다”라고 말했다. <br> <br> 사범 계열인 광주대 유아교육과는 지난 2022년 교육부와 한국교육개발원의 ‘5주기 교원양성기관 역량진단평가’에서 최고 등급인 A등급을 받으며 교육부장관 표창을 수상한 바 있다.
												</div>
											</a>
										</div>
									</li>

									<li class="cd-hero_slide js-cd-slide cd-hero_slide-selected cd-hero_slide-from-right">
										<div class="cd-hero_content pr20 pl20 pt10 news_bor news">
											<a href="#">
												<div class="text-center" style="font-size: 20px;">
													<strong>LINC3.0사업단,‘1학기 캡스톤디자인 경진대회’ 성료</strong>
												</div>
												<div class="mt10  news_content">
													광주대학교 LINC3.0사업단이 주최한 2024-1학기 캡스톤디자인 경진대회에서 시각영상디자인학과 ’전라복도‘팀이 영예의 대상을 차지했다.<br> <br>‘2024-1학기 캡스톤디자인 경진대회’는 LINC 3.0 참여학부(과) 40팀 중 1차 평가를 통해 선발된 20팀에 대해, 내·외부 심사위원의 발표평가로 진행됐다.<br> <br> 영예의 대상은 완도첫마을협동조합 캐릭터 개발을 통해 창의력 부분에서 높은 평가를 받은 시각영상디자인학과 ‘전라복도’팀(박현준 외 4명)이 차지했다.<br> <br>‘전라복도’ 팀장 박현준 학생은 “여러 경쟁력 있는 팀들 사이에서 대상을 받아 믿기지가 않는다. 경진대회를 통해 팀워크와 자신감을 얻을 수 있었다”라고 말했다.광주대 LINC3.0사업단 노선식 단장은 “창의적이고 우수한 과제물들이 많았던 멋진 경진대회였다”라며 “학생들의 우수과제 발굴 및 성과확산을 위해 아낌없이 지원하겠다”라고 밝혔다. <br>‘전라복도’ 팀장 박현준 학생은 “여러 경쟁력 있는 팀들 사이에서 대상을 받아 믿기지가 않는다. 경진대회를 통해 팀워크와 자신감을 얻을 수 있었다”라고 말했다.광주대 LINC3.0사업단 노선식 단장은 “창의적이고 우수한 과제물들이 많았던 멋진 경진대회였다”라며 “학생들의 우수과제 발굴 및 성과확산을 위해 아낌없이 지원하겠다”라고 밝혔다.
												</div>
											</a>
										</div>
									</li>
								</ul>

								<div class="cd-hero_nav js-cd-nav ls5">
									<nav>
										<span class="cd-hero_marker js-cd-marker cd-hero_marker-item-3"></span>
										<ul>
											<li class="">
												<a href="#0" style="display: block; white-space: nowrap; /* Prevent text from wrapping */ overflow: hidden; /* Hide the overflow text */ text-overflow: ellipsis;">
													대학일자리플러스센터,<br> E-TEST(엑셀) 자격취득 과정 운영
												</a>
											</li>
											<li class="">
												<a href="#0" style="display: block; white-space: nowrap; /* Prevent text from wrapping */ overflow: hidden; /* Hide the overflow text */ text-overflow: ellipsis;">
													유아교육과,<br>이음교육 시범학교 광양중동초 방문
												</a>
											</li>
											<li class="cd-selected">
												<a href="#0" style="display: block; white-space: nowrap; /* Prevent text from wrapping */ overflow: hidden; /* Hide the overflow text */ text-overflow: ellipsis;">
													LINC3.0사업단,<br> ‘1학기 캡스톤디자인 경진대회’ 성료
												</a>
											</li>
										</ul>
									</nav>
								</div>
							</section>
						</div>
					</div>
					<div class="col-sm-4">
						<h2 class="text-line num-webfont mt5 mb20 lh24 animated" data-animate="fadeInRight" data-delay=".2">
							<strong class="big4" style="font-weight: 600;">게시판</strong>
						</h2>
						<div class="mb20 col-12 animated fadeInRight" data-animate="fadeInRight" data-delay=".2" style="visibility: visible; animation-delay: 0.6s;">

							<div class="media-banner1 write2" style="width: 100%;">
								<div class="active">
									<a href="/site/menu/15#" class="media-overlay" style="width: 100%;">
										<div class="row pr20 pl20">
											<div class="col-xs-8">
												<div class="mr10 m-mr5">
													<h2>일반게시판</h2>
													<p class="pt10">일반게시판 보러가기</p>
												</div>
											</div>
											<div class="col-xs-4">
												<div class="ml20 xs-ml30 xs-mb10">
													<img src="/img/user/common.png" alt="" class="img-responsive  " style="max-height: 100px; max-width: 100px;">
												</div>
											</div>
										</div>
									</a>
								</div>

							</div>

						</div>
						<div class="mb20 col-12 animated fadeInRight" data-animate="fadeInRight" data-delay=".2" style="visibility: visible; animation-delay: 0.6s;">
							<div class="carousel slide main-carousel">
								<div class="media-banner1 write2" style="width: 100%;">
									<div class="carousel-inner" role="listbox">
										<div class="item active">
											<a href="/site/menu/16" class="media-overlay" style="width: 100%;">
												<div class="row pr20 pl20">
													<div class="col-xs-8">
														<div class="mr10 m-mr5">
															<h2 class=" animated fadeInRight" data-animate="fadeInRight" data-delay=".3" style="visibility: visible; animation-delay: 0.3s;">갤러리게시판</h2>
															<p>갤러리게시판 보러가기</p>
														</div>
													</div>
													<div class="col-xs-4">
														<div class="ml20 xs-ml30 xs-mb10">
															<img src="/img/user/gallery.png" alt="" class="img-responsive " style="max-height: 100px; max-width: 100px;">
														</div>
													</div>
												</div>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-12 animated fadeInRight" data-animate="fadeInRight" data-delay=".2" style="visibility: visible; animation-delay: 0.6s;">
							<div class="carousel slide main-carousel">
								<div class="media-banner1  write2" style="width: 100%;">
									<div class="carousel-inner" role="listbox">
										<div class="item active">
											<a href="/site/menu/18" class="media-overlay" style="width: 100%;">
												<div class="row pr20 pl20">
													<div class="col-xs-8">
														<div class="mr10 m-mr5">
															<h2>웹진게시판</h2>
															<p>웹진게시판 보러가기</p>
														</div>
													</div>
													<div class="col-xs-4">
														<div class="ml20 xs-ml30 xs-mb10">
															<img src="/img/user/webzin.png" alt="" class="img-responsive " style="max-height: 100px; max-width: 100px;">
														</div>
													</div>
												</div>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //학습과정1 -->
		<!-- Level Test -->
		<div class="section section-big level-test">
			<div class="container">

				<h1 class="animated mb20" data-animate="fadeIn" data-delay=".2">
					창조적인 혁신으로 <br class="hidden-sm hidden-md hidden-lg" /> 미래를 선도하는 대학 <br class="hidden-sm hidden-md hidden-lg" />
				</h1>
				<a href="/site/menu/3" class="btn btn-lg btn-primary animated" data-animate="fadeInUp" data-delay=".3">
					<strong>찾아오시는길</strong> <i class="ti-arrow-circle-right small ml5"></i>
				</a>
			</div>
		</div>
		<!-- //Level Test -->
	</div>

	<script src="//f.vimeocdn.com/js/froogaloop2.min.js"></script>
	<script src="./js/main.js"></script>
	<footer class="footer_wrap animated" data-animate="fadeIn" data-delay=".1">
		<!-- Footer_link -->
		<div class="footer_link">
			<div class="container xs-text-center ptext-right">
				<div class="footer_navi">
					<a href="javascript:void(0);" data-toggle="modal" data-target="#privacyModal" role="button">
						<span>
							<strong>개인정보취급방침</strong>
						</span>
					</a>
					<a href="javascript:void(0);" data-toggle="modal" data-target="#termsModal" role="button">
						<strong>이용약관</strong>
					</a>
				</div>
			</div>
		</div>
		<!-- //Footer_link -->

		<!-- Footer_copy -->
		<div class="footer_copy">
			<div class="container text-center">
				<strong>주식회사 만다린코리아</strong> <strong>대표이사 홍길동</strong><br class="hidden-sm hidden-md hidden-lg" /> <strong>서울특별시 종로구 종로5길 7, 16층(청담동, Tower 8)</strong><br /> <strong>사업자등록번호 123-45-67890</strong><br class="hidden-sm hidden-md hidden-lg" /> <strong>통신판매신고 제2018-서울종로-1234호</strong> <strong>개인정보관리 책임자 : 배철수</strong><br />
				<span class="num-webfont">
					<em>T. 02-11234-5678</em><em>F. 02-123-5678</em>
				</span>
				<br class="hidden-sm hidden-md hidden-lg" />
				<a href="mailto:mandarin@mandarin.com" class="footer_email num-webfont">e-mail. mandarin@mandarin.com</a>
				<address class="num-webfont">© MANDARIN. ALL RIGHTS RESERVED.</address>
			</div>
		</div>
		<!-- //Footer_copy -->
	</footer>
	</div>

	<!-- 개인정보취급방침 -->
	<div class="modal fade" id="privacyModal" tabindex="-1" role="dialog" aria-labelledby="privacyModalLabel">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close" title="창닫기">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="privacyModalLabel">
						<strong>개인정보취급방침</strong>
					</h4>
				</div>
				<div class="modal-body">
					<div class="panel panel-primary">
						<div class="panel-body text-justify">
							<strong> * 본 사이트는 회원의 개인정보를 중요시하며,'정보통신망 이용촉진 및 정보보호'에 관한 법률을 준수하고 있습니다.<br /> * 개인정보보호방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.
							</strong>
						</div>
					</div>
					<div class="terms_overflow text-justify">
						<div class="mb20">
							<h4>1.수집하는 개인정보 항목</h4>
							<div class="mt5">
								<p class="mb0">개인정보는 후원진행(계약성립) 시 요청되는 이름(실명), 주민등록번호, 주소, 연락처, 전자 우편(E-mail) 등을 말하며,또한 회원가입 이외에 추가 회원정보를 통해 회원님의 세분화된 항목의 정보를 수집하게 됩니다. 본사이트는 서비스 제공에 필요한 최소한의 정보를 수집하며, 그 내용은 다음과 같습니다.</p>
								<ul class="list-icon last">
									<li>필수항목 : 이름, 이메일, 휴대폰 번호, 주소, 거래은행, 계좌번호, 후원방법</li>
									<li>선택항목 : 소식지, 뉴스레터, sms, 연말 정산 영수증 수신 여부</li>
								</ul>
							</div>
						</div>

						<div class="mb20">
							<h4>2.개인정보의 수집 및 이용목적</h4>
							<div class="mt5">
								<p class="mb0">본 사이트는 수집한 개인정보를 다음의 목적을 위해 활용합니다.</p>
								<ul class="list-icon last">
									<li>서비스 제공에 관한 계약 이행 및 회원 관리</li>
									<li>후원업무 진행에 따른 본인확인, 개인 식별, 불만처리 등 민원처리 ,고지사항 전달에 활용</li>
									<li>이벤트 등 광고성 정보 전달</li>
								</ul>
							</div>
						</div>

						<div class="mb20">
							<h4>3.개인정보의 보유 및 이용기간</h4>
							<div class="mt5">
								<p class="mb0">회원님의 개인정보는 본사이트의 회원으로서 서비스를 이용하는 동안 본사이트에 의하여 관리되고 보호되며, 앞서 언급된 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에 당해 정보는 지체 없이 파기됩니다.</p>
							</div>
						</div>

						<div class="mb20">
							<h4>4.개인정보의 파기절차 및 방법</h4>
							<div class="mt5">
								<p class="mb0">본 사이트는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 기록을 재생할 수 없는 기술적 방법을 사용하여 해당 정보를 지체없이 파기합니다.</p>
							</div>
						</div>

						<div class="mb20">
							<h4>5.개인정보 제공</h4>
							<div class="mt5">
								<p class="mb0">본사이트는 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.</p>
								<ul class="list-icon last">
									<li>이용자들이 사전에 동의한 경우</li>
									<li>법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우</li>
								</ul>
							</div>
						</div>

						<div class="mb20">
							<h4>6.수집한 개인정보의 위탁</h4>
							<div class="mt5">
								<p class="mb0">본 사이트는 고객님의 동의없이 고객님의 정보를 외부 업체에 위탁하지 않습니다. 향후 그러한 필요가 생길 경우, 위탁 대상자와 위탁 업무 내용에 대해 고객님에게 통지하고 필요한 경우 사전 동의를 받도록 하겠습니다.</p>
							</div>
						</div>

						<div class="mb20">
							<h4>7.이용자 및 법정대리인의 권리와 그 행사방법</h4>
							<div class="mt5">
								<p class="mb0">이용자는 언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정할 수 있으며 가입해지를 요청할 수도 있습니다. 이용자들의 개인정보 조회,수정을 위해서는 '개인정보변경'(또는 '회원정보수정' 등)을 가입해지(동의철회)를 위해서는 "회원탈퇴"를 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다. 혹은 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면 지체없이 조치하겠습니다.</p>
							</div>
						</div>

						<div class="mb20">
							<h4>8.개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항</h4>
							<div class="mt5">
								<p class="mb0">귀하가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체없이 통지하여 정정이 이루어지도록 하겠습니다.</p>
							</div>
						</div>

						<div class="mb20">
							<h4>9.불만처리 및 개인정보관리 연락처</h4>
							<div class="mt5">
								<p class="mb0">사용자의 개인정보는 보다 편리하고, 유익한 정보를 전달하기 위한 기본자료로서만 활용할 것을 다시 한 번 약속 드립니다.</p>
								<ul class="list-icon last">
									<li>
										만다린 -
										<a href="http://mandarin9.com" target="_blank" title="새 창으로 이동">mandarin9.com</a>
									</li>
									<li>
										Tel)
										<a href="tel:070-1234-5678" title="전화걸기">070-1234-5678</a>
									</li>
									<li>
										E-mail)
										<a href="mailto:cshelp@mandarin9.com" target="_blank" title="새 창으로 이동">cshelp@mandarin9.com</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">창닫기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- //개인정보취급방침 -->


	<!-- 이용약관 -->
	<div class="modal fade" id="termsModal" tabindex="-1" role="dialog" aria-labelledby="termsModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close" title="창닫기">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="termsModalLabel">
						<strong>이용약관</strong>
					</h4>
				</div>
				<div class="modal-body">
					<div class="terms_overflow text-justify">
						<div class="mb20">
							<h4>제1조(목적)</h4>
							<div class="mt5">
								<p class="mb0">만다린(이하 '웹사이트'이라 한다)이 제공하는 웹사이트는 모든 사람이 자유롭게 무료로 이용함을 원칙으로 한다.</p>
							</div>
						</div>

						<div class="mb20">
							<h4>제2조(약관의 변경)</h4>
							<div class="mt5">
								<p class="mb0">웹사이트은 향후 가입자의 편의, 서비스의 질적 향상, 관계법령의 개정 및 서비스 운영상의 필요 등을 위하여 변경할 수 있다.</p>
							</div>
						</div>

						<div class="mb20">
							<h4>제3조(가입 신청)</h4>
							<div class="mt5">
								<p class="mb0">웹사이트 홈페이지의 회원가입 양식을 통해 회원가입을 신청할 수 있다.</p>
							</div>
						</div>

						<div class="mb20">
							<h4>제4조(회원)</h4>
							<div class="mt5">
								<p class="mb0">웹사이트 홈페이지의 회원은 웹사이트를 가입하는 모든 이용자를 말한다.</p>
							</div>
						</div>

						<div class="mb20">
							<h4>제5조(웹사이트 홈페이지 이용의 제한)</h4>
							<div class="mt5">
								<p class="mb0">웹사이트 홈페이지 중 각종 게시판 및 자료조회 및 등록, 수정 및 기타 등등은 홈페이지에 가입된 회원만이 이용할 수 있다.</p>
							</div>
						</div>

						<div class="mb20">
							<h4>제6조(회원 인증)</h4>
							<div class="mt5">
								<p class="mb0">웹사이트 홈페이지 등록가입을 위한 신청서를 작성할 때 가입이 인증되면 바로 자신에게 부여된 서비스를 이용할 수 있다.</p>
							</div>
						</div>

						<div class="mb20">
							<h4>제7조(신청사항의 변경 및 철회)</h4>
							<div class="mt5">
								<ul class="list-icon">
									<li>웹사이트은 접수된 신청서에 변경 또는 보완을 요하는 사항이 있을 경우에는 신청사항을 변경 또는 보완하도록 가입신청자에게 요청할 수 있다.</li>
									<li>가입신청자중 회원 등록을 철회하고자 하는 때에는 그 사실을 웹사이트 관리자에게 알려야 한다.</li>
								</ul>
							</div>
						</div>

						<div class="mb20">
							<h4>제8조(승인의 제한)</h4>
							<div class="mt5">
								<ul class="list-icon">
									<li>타인 명의를 사용한 신청에 대하여는 이를 승인하지 아니한다.</li>
									<li>웹사이트은 신청에 대하여 서비스의 정상적인 제공을 방해하거나 타 가입자의 서비스 이용에 상당한 지장을 줄 것으로 예상되는 신청에 대하여는 승인을 거절할 수 있다.</li>
								</ul>
							</div>
						</div>

						<div class="mb20">
							<h4>제9조(가입자의 의무)</h4>
							<div class="mt5">
								<p class="mb0">가입자는 이 서비스를 사용함에 있어 공공질서에 위배되거나, 타인에 대한 비방 행위, 또는 허위사실을 유포하거나 타 가입자의 서비스 이용에 장애 등을 일으킬 수 있는 사용은 금지하여야 한다.</p>
							</div>
						</div>

						<div class="mb20">
							<h4>제10조(서비스이용의 제한 및 중지)</h4>
							<div class="mt5">
								<ul class="list-icon">
									<li>
										웹사이트은 다음 각 호의 사유에 해당되는 경우에는 서비스의 제공을 제한 또는 중지할 수 있다.
										<ul class="list-icon">
											<li>전시, 사변, 천재지변 또는 이에 준하는 국가 비상사태가 발생하거나 발생할 우려가 있는 경우</li>
											<li>정기점검이나 전용선의 장애 등 부득이한 사유가 발생하여 사)가축위생방역지원본부가 서비스의 제공을 제한 또는 중지할 필요가 있다고 판단하는 경우</li>
										</ul>
									</li>
									<li>서비스의 이용을 제한 또는 중지하고자 하는 경우에 웹사이트은 그 사유, 기간 등을 명시하여 지체 없이 가입자가 알 수 있도록 공지한다.</li>
								</ul>
							</div>
						</div>

						<div class="mb20">
							<h4>제11조(서비스이용의 금지)</h4>
							<div class="mt5">
								<ul class="list-icon">
									<li>
										웹사이트은 가입자가 다음 각 호의 사유에 해당되는 경우에는 언제든지 가입자의 서비스 이용을 금지할 수 있으며 또한 그에 따른 데이터 등을 복구를 전제로 하지 아니하고 삭제할 수 있습니다.
										<ul class="list-icon">
											<li>타인명의를 사용하여 신청한 때</li>
											<li>신청서의 내용을 허위로 기재한 때</li>
											<li>가입자가 서비스 이용에 있어 부적격한 사용자로 판명된 때</li>
											<li>법령 및 이 약관을 위반하여 웹사이트가 동일한 위반사유에 대하여 시정요구를 하였음에도 불구하고 시정하지 아니한 때</li>
											<li>가입자가 이 서비스를 범죄행위 및 상업적으로 사용한 때</li>
											<li>가입자가 이 서비스를 미풍양속 및 공공질서에 반하여 사용한 때</li>
											<li>타 사용자의 서비스 이용에 심각한 장애를 일으켰을 때</li>
											<li>기타 이 서비스의 이용과 관련하여 웹사이트가 요구하는 사항을 위반 하는 경우</li>
										</ul>
									</li>
									<li>전항의 규정에 의하여 서비스의 이용을 금지 당한 가입자는 그 이용금지에 대하여 이의가 있을 때에는 그 사유를 명시하여 서면으로 웹사이트에 이의신청을 할 수 있다. 이 경우 웹사이트은 이의 신청의 타당성 등을 확인 및 검토한 후 결과를 해당가입자에게 통지한다.</li>
								</ul>
							</div>
						</div>

						<div class="mb20">
							<h4>부칙 1.(시행일)</h4>
							<div class="mt5">
								<p class="mb0">이 약관은 2019년 05월 17일부터 시행한다.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">창닫기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- //이용약관 -->

	<!-- 회원로그인 -->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close" title="창닫기">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="loginModalLabel">
						<strong>회원로그인</strong>
					</h4>
				</div>
				<div class="modal-body">
					<form>
						<fieldset>
							<div class="sc_item_title sc_item_title-s">
								만다린 중국어와<br />함께라면 기초중국어 문제 없습니다!
							</div>

							<div class="input-group mb10">
								<input type="text" class="form-control" id="m-userid1" placeholder="아이디를 입력해 주세요." required autofocus>
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-user"></i>
								</div>
							</div>
							<div class="input-group mb10">
								<input type="password" class="form-control" id="m-password1" placeholder="패스워드를 입력해 주세요." required>
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-lock"></i>
								</div>
							</div>

							<div class="row">
								<div class="col-xs-6 col-xs-offset-3">
									<button class="btn btn-md btn-primary btn-block" type="submit">로그인</button>
								</div>
							</div>

							<div class="text-center mt15">
								<a href="./membership_regist.php" class="btn btn-link">회원가입</a>
								<a href="./membership_idpwfind.php" class="btn btn-link">아이디/비밀번호 찾기</a>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- //회원로그인 -->


	<!-- 상담신청 -->
	<div class="modal fade" id="consultingModal" tabindex="-1" role="dialog" aria-labelledby="consultingModalLabel">
		<div class="modal-dialog" role="document">
			<form class="modal-content modal-content-c-t">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="consultingModalLabel">
						<strong>상담신청</strong>
					</h4>
				</div>
				<div class="modal-body">
					<div class="row mb10">
						<div class="col-sm-2">
							<label for="cr_w_date" class="control-label control-label-ct">상담일</label>
						</div>
						<div class="col-sm-3">
							<input type="tel" class="form-control datetimepicker" id="cr_w_date" name="" value="" />
						</div>
						<div class="col-sm-2 xs-mt10">
							<label for="cr_w_cate" class="control-label control-label-ct ml20 xs-ml0">상담구분</label>
						</div>
						<div class="col-sm-5">
							<div class="mt5">
								<div class="radio-inline">
									<label for="cr_w_cate_1">
										<input type="radio" name="cr_w_cate" id="cr_w_cate_1" value="" checked="checked" />전화
									</label>
								</div>
								<div class="radio-inline">
									<label for="cr_w_cate_2">
										<input type="radio" name="cr_w_cate" id="cr_w_cate_2" value="" />문자
									</label>
								</div>
								<div class="radio-inline">
									<label for="cr_w_cate_3">
										<input type="radio" name="cr_w_cate" id="cr_w_cate_3" value="" />면담
									</label>
								</div>
								<div class="radio-inline">
									<label for="cr_w_cate_4">
										<input type="radio" name="cr_w_cate" id="cr_w_cate_4" value="" />기타
									</label>
								</div>
							</div>
						</div>
					</div>

					<div class="row mb10">
						<div class="col-sm-2">
							<label for="cr_w_name" class="control-label control-label-ct">학생명</label>
						</div>
						<div class="col-sm-3">
							<input type="text" class="form-control" id="cr_w_name" name="" value="" />
						</div>
						<div class="col-sm-2 xs-mt10">
							<label for="cr_w_counselor" class="control-label control-label-ct ml20 xs-ml0">상담자</label>
						</div>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="cr_w_counselor" name="" value="" />
						</div>
					</div>

					<div class="row mb10">
						<div class="col-sm-2">
							<label for="cr_w_lecture" class="control-label control-label-ct">수강반</label>
						</div>
						<div class="col-sm-3">
							<input type="text" class="form-control" id="cr_w_lecture" name="" value="" />
						</div>
						<div class="col-sm-2 xs-mt10">
							<label for="cr_w_guardian" class="control-label control-label-ct ml20 xs-ml0">대상</label>
						</div>
						<div class="col-sm-5">
							<select id="cr_w_guardian" name="" class="form-control">
								<option value="">대상 선택</option>
								<option value="" selected="selected">어머니</option>
								<option value="">아버지</option>
								<option value="">할아버지</option>
								<option value="">할머니</option>
							</select>
						</div>
					</div>

					<div class="row mb10">
						<div class="col-xs-12">
							<label for="cr_w_consultation" class="control-label control-label-ct">상담내용</label>
						</div>
						<div class="col-xs-12">
							<textarea class="form-control" rows="5" name="cr_w_consultation" id="cr_w_consultation" required></textarea>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-md btn-primary" data-dismiss="modal">저장</button>
				</div>
			</form>
		</div>
	</div>
	<!-- //상담신청 -->


	<!-- 우편번호찾기 -->
	<div class="modal fade" id="pop-postcode" style="z-index: 100000;" tabindex="-1" role="dialog" aria-labelledby="evaluation-write" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close" title="창닫기">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="pop-postcodeLabel">
						<strong>우편번호찾기</strong>
					</h4>
				</div>
				<div id="postcode"></div>
			</div>
		</div>
	</div>
	<!-- //우편번호찾기 -->

	<script src="/js/common/animate-plus.min.js"></script>
	<script src="/js/common/jquery-ui.min.js" title="제이쿼리 UI"></script>
	<script src="/js/common/jquery-migrate-git.min.js" title="제이쿼리 하위버전 호환 플로그인"></script>
	<script src="/js/common/jquery.easing.js"></script>
	<script src="/js/common/jquery.cookie.js" title="쿠키 플로그인"></script>
	<script src="/js/common/bootstrap.min.js"></script>
	<script src="/js/common/bootstrap-datetimepicker.min.js" title="캘린더"></script>
	<script src="/js/common/bootstrap-switch.min.js" title="부트스트랩 플러그인 스위치"></script>
	<script src="/js/common/metisMenu.js" title="사이드메뉴"></script>
	<script src="/js/common/chart.min.js" title="차트 api"></script>
	<script src="/js/common/hammer.min.js" title="부트스트랩 슬라이드 터치 플러그인"></script>
	<script src="/js/common/owl.carousel.min.js" title="게시판 이미지 슬라이드"></script>
	<script src="/js/common/jquery.magnific-popup.min.js" title="게시판 이미지 클릭 팝업 슬라이드"></script>
	<script src="/js/common/jquery.rwdImageMaps.min.js" title="반응형 이미지맵 플러그인"></script>
	<script src="/js/user/customer.script.js" title="사용자 스크립트 선언"></script>
</body>
</html>