<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
<title>이사회</title>
<link href="/css/common/font-awesome.min.css" rel="stylesheet">
<link href="/css/common/NotoSansCJKkr.css" rel="stylesheet">
<!-- <link href="/css/common/NotoSansCJKjp.css" rel="stylesheet">
<link href="/css/common/NotoSansCJKsc.css" rel="stylesheet">
<link href="/css/common/NotoSansCJKtc.css" rel="stylesheet"> -->
<link href="/admin/css/theme.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/themify-icons/1.0.1/css/themify-icons.css" rel="stylesheet">
<link href="/css/common/animate.min.css" rel="stylesheet">
<link href="/css/common/bootstrap.min.css" rel="stylesheet">
<link href="/css/common/bootstrap-datetimepicker.min.css" rel="stylesheet">
<link href="/css/common/c3.min.css" rel="stylesheet">
<link href="/css/common/themify.min.css" rel="stylesheet">
<link href="/css/common/NotoSansCJKkr.css" rel="stylesheet">
<link href="/css/common/NotoSansKR.css" rel="stylesheet">
<link href="/css/common/common.css" rel="stylesheet">
<link href="/css/common/common.responsive.css" rel="stylesheet">
<link href="/css/admin/theme.css" rel="stylesheet">

<!-- Scripts -->
<script src="/js/common/modernizr.min.js"></script>
<script src="/js/common/jquery.min.js"></script>
<script src="/js/common/moment.js"></script>
<script src="/js/common/animate-plus.min.js"></script>
<script src="/js/common/jquery-ui.min.js" title="제이쿼리 UI"></script>
<script src="/js/common/jquery-migrate-git.min.js" title="제이쿼리 하위버전 호환 플로그인"></script>
<script src="/js/common/jquery.easing.js" title="이징"></script>
<script src="/js/common/bootstrap.min.js" title="부트스트랩"></script>
<script src="/js/common/bootstrap-switch.min.js" title="부트스트랩 switch"></script>
<script src="/js/common/bootstrap-datetimepicker.min.js" title="부트스트랩 DateTimePicker"></script>
<script src="/js/common/c3.min.js" title="차트 api"></script>
<script src="/js/admin/customer.script.js" title="사용자 선언"></script>

</head>
<body>

	<!-- 콘테이너 -->
	<div class="container">
		<div class="row">
			<!-- 사이드 -->
			<div id="sidebar" class="col-md-3">
				<div class="sidebar_wrap">
					<h2 class="page-label labels">
						<strong>자료실</strong> <span
							class="pull-right clickable hidden-md hidden-lg"><i
							class="fa fa-chevron-up"></i></span>
					</h2>

					<ul id="sidebar_navi" class="list-group">
						<li class="list-group-item"><a
							href="../board/board_notice.html" class=""><span><strong>공지사항</strong></span></a>
						</li>
						<li class="list-group-item"><a
							href="../board/board_common.html" class=""><span><strong>일반
										게시판</strong></span></a></li>
						<li class="list-group-item"><a
							href="../board/board_gallery.html" class=""><span><strong>갤러리
										게시판</strong></span></a></li>
						<li class="list-group-item"><a
							href="../board/board_portfolio.html" class=""><span><strong>포트폴리오
										게시판</strong></span></a></li>
						<li class="list-group-item"><a
							href="../board/board_webzin.html" class=""><span><strong>웹진
										게시판</strong></span></a></li>
						<li class="list-group-item"><a
							href="../board/board_block.html" class=""><span><strong>블럭
										게시판</strong></span></a></li>
						<li class="list-group-item"><a
							href="../board/board_blog_1.html" class=""><span><strong>블로그타입1
										게시판</strong></span></a></li>
						<li class="list-group-item"><a
							href="../board/board_blog_2.html" class=""><span><strong>블로그타입2
										게시판</strong></span></a></li>
						<li class="list-group-item"><a
							href="../board/question.html" class=""><span><strong>자주묻는질문
										게시판</strong></span></a></li>
						<!--<li class="list-group-item">
                  <a href="history.php"><span>타임라인(연혁)</span></a>
                </li>
                <li class="list-group-item">
                  <a href="map.php"><span>찾아오시는길</span></a>
                </li>
                <li class="list-group-item">
                  <a href="sitemap.php"><span>사이트맵</span></a>
                </li>
                <li class="list-group-item">
                  <a href="error.php"><span>에러페이지</span></a>
                </li>
                <li class="list-group-item">
                  <a href="bootstrap.php"><span>부트스트랩 샘플</span></a>
                </li>-->
					</ul>
				</div>
			</div>

			<script type="text/javascript">
				$(document).ready(function() {
					// SlideBar
					$("#sidebar_navi").metisMenu();
				});
			</script>
			<!-- //사이드 -->

			<!-- 콘텐츠 -->
			<div id="container" class="col-md-9">
				<div class="page-header">
					<div class="row">
						<div class="col-md-5 pl10">
							<h2>블로그타입2 게시판</h2>
						</div>
						<div class="col-md-7 text-right">
							<ol class="breadcrumb hidden-xs">
								<li><a href="./"><i class="glyphicon glyphicon-home"></i>
										홈</a></li>
								<li>자료실</li>
								<li class="active">블로그타입2 게시판</li>
							</ol>
						</div>
					</div>
				</div>

				<div id="customer_container">
					<!-- 게시판 목록 -->
					<!-- 카테고리 타입1 -->
					<div class="category-wrap">
						<ul>
							<li class="total"><a href="#"><strong>전체</strong></a></li>
							<li><a href="#"><strong>카테고리1</strong></a></li>
							<li><a href="#"><strong>카테고리2</strong></a></li>
							<li class="active"><a href="#"><strong>카테고리3</strong></a></li>
							<li><a href="#"><strong>카테고리4</strong></a></li>
							<li><a href="#"><strong>카테고리5</strong></a></li>
							<li><a href="#"><strong>카테고리6</strong></a></li>
							<li><a href="#"><strong>카테고리7</strong></a></li>
							<li><a href="#"><strong>카테고리8</strong></a></li>
							<li><a href="#"><strong>카테고리9</strong></a></li>
							<li><a href="#"><strong>카테고리10</strong></a></li>
							<li><a href="#"><strong>카테고리11</strong></a></li>
							<li><a href="#"><strong>카테고리12</strong></a></li>
							<li><a href="#"><strong>카테고리13</strong></a></li>
							<li><a href="#"><strong>카테고리14</strong></a></li>
							<li><a href="#"><strong>카테고리15</strong></a></li>
						</ul>
					</div>
					<!-- //카테고리 타입1 -->

					<!-- 총게시물 수 & 카테고리 타입2 -->
					<div class="row mb20">
						<div class="col-sm-7">
							<!-- 카테고리 타입2 -->
							<a href="javascript:void(0);" class="btn btn-default"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">카테고리 <span class="caret ml5"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">카테고리1</a></li>
								<li><a href="#">카테고리2</a></li>
								<li class="active"><a href="#">카테고리3</a></li>
								<li><a href="#">카테고리4</a></li>
								<li><a href="#">카테고리5</a></li>
								<li><a href="#">카테고리6</a></li>
								<li><a href="#">카테고리7</a></li>
								<li><a href="#">카테고리8</a></li>
								<li><a href="#">카테고리9</a></li>
								<li><a href="#">카테고리10</a></li>
								<li><a href="#">카테고리11</a></li>
								<li><a href="#">카테고리12</a></li>
								<li><a href="#">카테고리13</a></li>
								<li><a href="#">카테고리14</a></li>
								<li><a href="#">카테고리15</a></li>
							</ul>
							<!-- //카테고리 타입2 -->
						</div>
						<div class="col-sm-5 text-right">
							<!-- 총 게시물 수 -->
							<div class="pagetotal num-webfont">
								Total Article<strong class="text-primary">3</strong> / Total
								Pages<strong>1</strong>
							</div>
							<!-- //총 게시물 수 -->
						</div>
					</div>
					<!-- //총게시물 수 & 카테고리 타입2 -->

					<!-- 게시물 -->
					<!-- Loop -->
					<div id="num100" class="panel panel-default">
						<div class="panel-body">
							<div class="row blogpost">
								<div class="col-sm-2">
									<div class="blog-post-date num-webfont">
										<span class="day">26</span> <span class="month">Jun,
											2014</span>
									</div>
								</div>
								<div class="col-sm-10">
									<div class="h4  mt15">
										<strong>중소기업을 위한 스마트워크 제품개발</strong>
									</div>
									<div class="row post-info">
										<div class="col-xs-6 col-sm-3">
											<span class="submitted">작성자 : 이정재</span>
										</div>
										<div class="col-xs-6 col-sm-3 text-right">
											<span class="comments-count"><i
												class="fa fa-comments-o"></i> 코멘트 : <span
												class="num-webfont">63</span></span>
										</div>
										<div class="col-sm-6">
											<span class="tags"><i class="fa fa-tags"></i> <a
												href="#">전화화상중국어</a> <em>|</em> <a href="#">표준 솔루션</a> <em>|</em>
												<a href="#">디바이스</a></span>
										</div>
									</div>
								</div>
							</div>
							<div class="bbs_memo">
								<!-- carousel -->
								<div class="owl-carousel owl-theme">

									<div class="item">
										<a href="/img/user/sample05.jpg"
											class="mask-wrapper popup-img"
											title="100 이미지용 대체 텍스트 삽입 : 없을 경우 제목 출력"> <img
											data-src="/img/user/sample05.jpg" alt="slide 1"
											class="lazyOwl"> <span class="mask"><span
												class="triangle"><i class="fa fa-plus"></i></span></span>
										</a>
									</div>

									<div class="item">
										<a href="/img/user/sample06.jpg"
											class="mask-wrapper popup-img"
											title="100 이미지용 대체 텍스트 삽입 : 없을 경우 제목 출력"> <img
											data-src="/img/user/sample06.jpg" alt="slide 2"
											class="lazyOwl"> <span class="mask"><span
												class="triangle"><i class="fa fa-plus"></i></span></span>
										</a>
									</div>

									<div class="item">
										<a href="/img/user/sample07.jpg"
											class="mask-wrapper popup-img"
											title="100 이미지용 대체 텍스트 삽입 : 없을 경우 제목 출력"> <img
											data-src="/img/user/sample07.jpg" alt="slide 3"
											class="lazyOwl"> <span class="mask"><span
												class="triangle"><i class="fa fa-plus"></i></span></span>
										</a>
									</div>

								</div>

								<!-- 게시물이 하나이상일 경우에만 노출 -->
								<div class="text-center hidden-xs">
									<div class="customNavigation btn-group" role="group"
										aria-label="...">
										<button type="button" class="btn prev btn-default btn-sm">이전</button>
										<button type="button" class="btn play btn-default btn-sm">자동시작</button>
										<button type="button" class="btn stop btn-default btn-sm">정지</button>
										<button type="button" class="btn next btn-default btn-sm">다음</button>
									</div>
								</div>

								<script>
									$(document)
											.ready(
													function() {
														$(
																"#num100 .customNavigation .next")
																.click(
																		function() {
																			$(
																					"#num100 .owl-carousel")
																					.trigger(
																							'owl.next');
																		})
														$(
																"#num100 .customNavigation .prev")
																.click(
																		function() {
																			$(
																					"#num100 .owl-carousel")
																					.trigger(
																							'owl.prev');
																		})
														$(
																"#num100 .customNavigation .play")
																.click(
																		function() {
																			$(
																					"#num100 .owl-carousel")
																					.trigger(
																							'owl.play',
																							1000);
																		})
														$(
																"#num100 .customNavigation .stop")
																.click(
																		function() {
																			$(
																					"#num100 .owl-carousel")
																					.trigger(
																							'owl.stop');
																		})
													});
								</script>
								<!-- //게시물이 하나이상일 경우에만 노출 -->
								<!-- //carousel -->

								<p>대한민국의 공공부문 정보화 사업 시 플랫폼별 표준화된 개발 프레임워크를 말한다. 2007년부터
									2012년 까지 5단계 구축사업을 완료하여 특정 업체의 종속성 심화와 사업별 공통 컴포넌트 중복 개발을 막기 위해
									개발하여 2014년 기준으로 표준프레임워크 버전 3.1이 배포 중에 있다. 중국어 발음과 기초 회화를 단기간에
									마스터 하고 싶은 학습자</p>

								<p>여러사이트를 따로 혹은 같이 운영 할 수 있습니다. 중국어가 어떤거라는 것 정도 배울 수 있었던 그런
									유익한 강좌 였다고 생각합니다.</p>

								<p>홈페이지 관리자는 반드시 만다린 전화화상중국어의 설치 페이지를 통해 적용할 웹 서버에 만다린
									전화화상중국어을 설치해야 하며, 이후 웹 서버의 모든 어플리케이션에서 공통으로 참조하는 헤더파일에 만다린
									전화화상중국어을 적용(헤더로 선언) 해주어야만 합니다. 만다린 전화화상중국어을 홈페이지에 적용을 하게 되면,
									사용자가 전달하는 GET, POST, COOKIE, FILES 데이터를 만다린 전화화상중국어이 먼저 처리하여 공격
									문자열들을 사전에 차단하는 방식으로 동작 합니다.</p>
							</div>

							<div class="text-right">
								<a
									href="http://www.facebook.com/sharer.php?s=100&p[url]=http://mandarin9.com&p[title]=만다린 전화화상중국어 상용 솔루션과 연계가 가능한 표준을 제시하여 상호운용성 보장&p[summary]=&p[images][0]=http://mandarin9.com"
									target="blank" title="새 창으로 이동" class=" ico_sns"> <i
									class="fa fa-facebook-square"></i>
								</a> <a
									href="http://twitter.com/home?status=만다린 전화화상중국어 상용 솔루션과 연계가 가능한 표준을 제시하여 상호운용성 보장%20http://mandarin9.com"
									target="blank" title="새 창으로 이동" class=" ico_sns"> <i
									class="fa fa-twitter-square"></i>
								</a>
							</div>
						</div>
					</div>
					<!-- //Loop -->



					<!-- Loop -->
					<div id="num99" class="panel panel-default">
						<div class="panel-body">
							<div class="row blogpost">
								<div class="col-sm-2">
									<div class="blog-post-date num-webfont">
										<span class="day">25</span> <span class="month">Jun,
											2014</span>
									</div>
								</div>
								<div class="col-sm-10">
									<div class="h4  mt15">
										<strong>중소기업을 위한 스마트워크 제품개발</strong>
									</div>
									<div class="row post-info">
										<div class="col-xs-6 col-sm-3">
											<span class="submitted">작성자 : 이정재</span>
										</div>
										<div class="col-xs-6 col-sm-3 text-right">
											<span class="comments-count"><i
												class="fa fa-comments-o"></i> 코멘트 : 63</span>
										</div>
										<div class="col-sm-6">
											<span class="tags"><i class="fa fa-tags"></i> <a
												href="#">전화화상중국어</a> <em>|</em> <a href="#">표준 솔루션</a> <em>|</em>
												<a href="#">디바이스</a></span>
										</div>
									</div>
								</div>
							</div>
							<div class="bbs_memo">
								<!-- carousel -->
								<div class="owl-carousel owl-theme">

									<div class="item">
										<a href="/img/user/sample08.jpg"
											class="mask-wrapper popup-img"
											title="99 이미지용 대체 텍스트 삽입 : 없을 경우 제목 출력"> <img
											data-src="/img/user/sample08.jpg" alt="slide 1"
											class="lazyOwl"> <span class="mask"><span
												class="triangle"><i class="fa fa-plus"></i></span></span>
										</a>
									</div>

									<div class="item">
										<a href="/img/user/sample09.jpg"
											class="mask-wrapper popup-img"
											title="99 이미지용 대체 텍스트 삽입 : 없을 경우 제목 출력"> <img
											data-src="/img/user/sample09.jpg" alt="slide 2"
											class="lazyOwl"> <span class="mask"><span
												class="triangle"><i class="fa fa-plus"></i></span></span>
										</a>
									</div>

								</div>

								<!-- 게시물이 하나이상일 경우에만 노출 -->
								<div class="text-center hidden-xs">
									<div class="customNavigation btn-group" role="group"
										aria-label="...">
										<button type="button" class="btn prev btn-default btn-sm">이전</button>
										<button type="button" class="btn next btn-default btn-sm">다음</button>
										<button type="button" class="btn play btn-default btn-sm">자동시작</button>
										<button type="button" class="btn stop btn-default btn-sm">정지</button>
									</div>
								</div>

								<script>
									$(document)
											.ready(
													function() {
														$(
																"#num99 .customNavigation .next")
																.click(
																		function() {
																			$(
																					"#num99 .owl-carousel")
																					.trigger(
																							'owl.next');
																		})
														$(
																"#num99 .customNavigation .prev")
																.click(
																		function() {
																			$(
																					"#num99 .owl-carousel")
																					.trigger(
																							'owl.prev');
																		})
														$(
																"#num99 .customNavigation .play")
																.click(
																		function() {
																			$(
																					"#num99 .owl-carousel")
																					.trigger(
																							'owl.play',
																							1000);
																		})
														$(
																"#num99 .customNavigation .stop")
																.click(
																		function() {
																			$(
																					"#num99 .owl-carousel")
																					.trigger(
																							'owl.stop');
																		})
													});
								</script>
								<!-- //게시물이 하나이상일 경우에만 노출 -->
								<!-- //carousel -->

								<p>홈페이지 관리자는 반드시 만다린 전화화상중국어의 설치 페이지를 통해 적용할 웹 서버에 만다린
									전화화상중국어을 설치해야 하며, 이후 웹 서버의 모든 어플리케이션에서 공통으로 참조하는 헤더파일에 만다린
									전화화상중국어을 적용(헤더로 선언) 해주어야만 합니다. 만다린 전화화상중국어을 홈페이지에 적용을 하게 되면,
									사용자가 전달하는 GET, POST, COOKIE, FILES 데이터를 만다린 전화화상중국어이 먼저 처리하여 공격
									문자열들을 사전에 차단하는 방식으로 동작 합니다.</p>

								<p>대한민국의 공공부문 정보화 사업 시 플랫폼별 표준화된 개발 프레임워크를 말한다. 2007년부터
									2012년 까지 5단계 구축사업을 완료하여 특정 업체의 종속성 심화와 사업별 공통 컴포넌트 중복 개발을 막기 위해
									개발하여 2014년 기준으로 표준프레임워크 버전 3.1이 배포 중에 있다. 중국어 발음과 기초 회화를 단기간에
									마스터 하고 싶은 학습자</p>

								<p>여러사이트를 따로 혹은 같이 운영 할 수 있습니다. 중국어가 어떤거라는 것 정도 배울 수 있었던 그런
									유익한 강좌 였다고 생각합니다.</p>
							</div>

							<div class="text-right">
								<a
									href="http://www.facebook.com/sharer.php?s=100&p[url]=http://mandarin9.com&p[title]=만다린 전화화상중국어 상용 솔루션과 연계가 가능한 표준을 제시하여 상호운용성 보장&p[summary]=&p[images][0]=http://mandarin9.com"
									target="blank" title="새 창으로 이동" class=" ico_sns"> <i
									class="fa fa-facebook-square"></i>
								</a> <a
									href="http://twitter.com/home?status=만다린 전화화상중국어 상용 솔루션과 연계가 가능한 표준을 제시하여 상호운용성 보장%20http://mandarin9.com"
									target="blank" title="새 창으로 이동" class=" ico_sns"> <i
									class="fa fa-twitter-square"></i>
								</a>
							</div>
						</div>
					</div>
					<!-- //Loop -->



					<!-- Loop -->
					<div id="num98" class="panel panel-default">
						<div class="panel-body">
							<div class="row blogpost">
								<div class="col-sm-2">
									<div class="blog-post-date num-webfont">
										<span class="day">24</span> <span class="month">Jun,
											2014</span>
									</div>
								</div>
								<div class="col-sm-10">
									<div class="h4  mt15">
										<strong>중소기업을 위한 스마트워크 제품개발</strong>
									</div>
									<div class="row post-info">
										<div class="col-xs-6 col-sm-3">
											<span class="submitted">작성자 : 이정재</span>
										</div>
										<div class="col-xs-6 col-sm-3 text-right">
											<span class="comments-count"><i
												class="fa fa-comments-o"></i> 코멘트 : 63</span>
										</div>
										<div class="col-sm-6">
											<span class="tags"><i class="fa fa-tags"></i> <a
												href="#">전화화상중국어</a> <em>|</em> <a href="#">표준 솔루션</a> <em>|</em>
												<a href="#">디바이스</a></span>
										</div>
									</div>
								</div>
							</div>
							<div class="bbs_memo">
								<!-- carousel -->
								<div class="owl-carousel owl-theme">

									<div class="item">
										<a href="/img/user/sample01.jpg"
											class="mask-wrapper popup-img"
											title="98 이미지용 대체 텍스트 삽입 : 없을 경우 제목 출력"> <img
											data-src="/img/user/sample01.jpg" alt="slide 1"
											class="lazyOwl"> <span class="mask"><span
												class="triangle"><i class="fa fa-plus"></i></span></span>
										</a>
									</div>

								</div>
								<!-- //carousel -->

								<p>홈페이지 관리자는 반드시 만다린 전화화상중국어의 설치 페이지를 통해 적용할 웹 서버에 만다린
									전화화상중국어을 설치해야 하며, 이후 웹 서버의 모든 어플리케이션에서 공통으로 참조하는 헤더파일에 만다린
									전화화상중국어을 적용(헤더로 선언) 해주어야만 합니다. 만다린 전화화상중국어을 홈페이지에 적용을 하게 되면,
									사용자가 전달하는 GET, POST, COOKIE, FILES 데이터를 만다린 전화화상중국어이 먼저 처리하여 공격
									문자열들을 사전에 차단하는 방식으로 동작 합니다.</p>

								<p>대한민국의 공공부문 정보화 사업 시 플랫폼별 표준화된 개발 프레임워크를 말한다. 2007년부터
									2012년 까지 5단계 구축사업을 완료하여 특정 업체의 종속성 심화와 사업별 공통 컴포넌트 중복 개발을 막기 위해
									개발하여 2014년 기준으로 표준프레임워크 버전 3.1이 배포 중에 있다. 중국어 발음과 기초 회화를 단기간에
									마스터 하고 싶은 학습자</p>

								<p>여러사이트를 따로 혹은 같이 운영 할 수 있습니다. 중국어가 어떤거라는 것 정도 배울 수 있었던 그런
									유익한 강좌 였다고 생각합니다.</p>
							</div>

							<div class="text-right">
								<a
									href="http://www.facebook.com/sharer.php?s=100&p[url]=http://mandarin9.com&p[title]=만다린 전화화상중국어 상용 솔루션과 연계가 가능한 표준을 제시하여 상호운용성 보장&p[summary]=&p[images][0]=http://mandarin9.com"
									target="blank" title="새 창으로 이동" class=" ico_sns"> <i
									class="fa fa-facebook-square"></i>
								</a> <a
									href="http://twitter.com/home?status=만다린 전화화상중국어 상용 솔루션과 연계가 가능한 표준을 제시하여 상호운용성 보장%20http://mandarin9.com"
									target="blank" title="새 창으로 이동" class=" ico_sns"> <i
									class="fa fa-twitter-square"></i>
								</a>
							</div>
						</div>
					</div>
					<!-- //Loop -->

					<script>
						$(document).ready(function() {
							// Magnific PopUp
							if ($(".popup-img").length > 0) {
								$(".popup-img").magnificPopup({
									type : "image",
									gallery : {
										enabled : true,
									}
								});
							}
							;

							// Owl Carousel
							$(".owl-carousel").owlCarousel({
								lazyLoad : true,
								autoPlay : false,
								stopOnHover : true,
								singleItem : true,
								slideSpeed : 500,
								paginationSpeed : 500,
								singleItem : true,
								transitionStyle : "fade",
								paginationNumbers : true
							});
						});
					</script>
					<!-- //게시물 -->

					<!-- 페이징 -->
					<nav class="text-center">
						<ul class="pagination pagination-sm num-webfont">
							<li><a href="#" aria-label="Previous" title="처음"> <span
									aria-hidden="true"><i class="fa fa-angle-double-left"
										aria-hidden="true"></i></span>
							</a></li>
							<li><a href="#" aria-label="Previous" title="이전"> <span
									aria-hidden="true"><i class="fa fa-angle-left"
										aria-hidden="true"></i></span>
							</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#" aria-label="Next" title="다음"> <span
									aria-hidden="true"><i class="fa fa-angle-right"
										aria-hidden="true"></i></span>
							</a></li>
							<li><a href="#" aria-label="Next" title="마지막"> <span
									aria-hidden="true"><i class="fa fa-angle-double-right"
										aria-hidden="true"></i></span>
							</a></li>
						</ul>
					</nav>
					<!-- //페이징 -->
					<!-- //게시판 목록 -->
				</div>
			</div>
			<!-- //콘텐츠 -->
		</div>
	</div>
	<!-- //콘테이너 -->
</body>
</html>