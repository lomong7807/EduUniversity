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

					<div class="page-label labels">
						<strong>자료실</strong> <span
							class="pull-right clickable hidden-md hidden-lg"><i
							class="fa fa-chevron-up"></i></span>
					</div>

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
						<li class="list-group-item"><a href="../board/question.html"
							class=""><span><strong>자주묻는질문 게시판</strong></span></a></li>
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
						<div class="col-md-5">
							<h2>갤러리 게시판</h2>
						</div>
						<div class="col-md-7 text-right">
							<ol class="breadcrumb hidden-xs">
								<li><a href="./"><i class="glyphicon glyphicon-home"></i>
										홈</a></li>
								<li>자료실</li>
								<li class="active">갤러리 게시판</li>
							</ol>
						</div>
					</div>
				</div>

				<div id="customer_container">
					<!-- 게시판 보기 -->
					<div class="panel panel-default">
						<div class="panel-body">
							<h5 class="panel-title view-title text-info">[공지] 중국어 발음 반복
								훈련으로 중국어 발음 완벽 마스터!</h5>
							<ul class="list-group">
								<li class="list-group-item">
									<div class="row">
										<div class="col-sm-7">
											작성일 : <span class="num-webfont">2018-08-28 18:35</span>
										</div>
										<div class="col-sm-2 text-right hidden-xs">
											조회 : <span class="num-webfont">874</span>
										</div>
										<div class="col-sm-3 text-right">작성자 : 관리자</div>
									</div>
								</li>
								<li class="list-group-item">
									<div class="row">
										<div class="col-sm-6">
											<div>
												<span>파일1 : </span><a href="/img/user/sample01.jpg"
													class="text-danger">sample01.jpg</a>
											</div>
											<div>
												<span>파일2 : </span><a href="/img/user/sample02.jpg"
													class="text-danger">sample02.jpg</a>
											</div>
										</div>
										<div class="col-sm-6 text-right">
											<a
												href="https://plus.google.com/share?url=http%3A%2F%2Fwww.sciencetimes.co.kr%2F%3Fnews%3D%25EA%25B5%25AC%25EA%25B8%2580-sns-%25EC%258B%259C%25EC%259E%25A5%25EC%2584%259C-%25ED%258E%2598%25EC%259D%25B4%25EC%258A%25A4%25EB%25B6%2581%25EA%25B3%25BC-%25EC%25A0%2584%25EB%25A9%25B4%25EC%25A0%2584"
												target="blank" title="새 창으로 이동" class=" ico_sns"> <i
												class="ti-google"></i>
											</a> <a
												href="http://www.facebook.com/sharer.php?s=100&p[url]=http://mandarin.com&p[title]=성조부터 회화까지 체계적으로 중국어를 배울 수 있습니다!&p[summary]=&p[images][0]=http://mandarin.com"
												target="blank" title="새 창으로 이동" class=" ico_sns"> <i
												class="ti-facebook"></i>
											</a> <a
												href="http://twitter.com/home?status=성조부터 회화까지 체계적으로 중국어를 배울 수 있습니다!%20http://mandarin.com"
												target="blank" title="새 창으로 이동" class=" ico_sns"> <i
												class="ti-twitter-alt"></i>
											</a>
										</div>
									</div>
								</li>
							</ul>

							<div class="bbs_memo">
								<!-- owl carousel -->
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
																".customNavigation .next")
																.click(
																		function() {
																			$(
																					".owl-carousel")
																					.trigger(
																							'owl.next');
																		})
														$(
																".customNavigation .prev")
																.click(
																		function() {
																			$(
																					".owl-carousel")
																					.trigger(
																							'owl.prev');
																		})
														$(
																".customNavigation .play")
																.click(
																		function() {
																			$(
																					".owl-carousel")
																					.trigger(
																							'owl.play',
																							1000);
																		})
														$(
																".customNavigation .stop")
																.click(
																		function() {
																			$(
																					".owl-carousel")
																					.trigger(
																							'owl.stop');
																		})
													});
								</script>
								<!-- //게시물이 하나이상일 경우에만 노출 -->
								<!-- //owl carousel -->

								<p>대한민국의 공공부문 정보화 사업 시 플랫폼별 표준화된 개발 프레임워크를 말한다. 2007년부터
									2012년 까지 5단계 구축사업을 완료하여 특정 업체의 종속성 심화와 사업별 공통 컴포넌트 중복 개발을 막기 위해
									개발하여 2014년 기준으로 표준프레임워크 버전 3.1이 배포 중에 있다. 중국어 발음과 기초 회화를 단기간에
									마스터 하고 싶은 학습자</p>

								<p>여러사이트를 따로 혹은 같이 운영 할 수 있습니다. 중국어가 어떤거라는 것 정도 배울 수 있었던 그런
									유익한 강좌 였다고 생각합니다.</p>

								<p>홈페이지 관리자는 반드시 만다린의 설치 페이지를 통해 적용할 웹 서버에 만다린을 설치해야 하며, 이후
									웹 서버의 모든 어플리케이션에서 공통으로 참조하는 헤더파일에 만다린을 적용(헤더로 선언) 해주어야만 합니다.
									만다린을 홈페이지에 적용을 하게 되면, 사용자가 전달하는 GET, POST, COOKIE, FILES 중국어를
									태어나서 처음 접하는 직장인입니다.</p>

							</div>


						</div>
					</div>


					<!-- 덧글보기 -->
					<div class="panel panel-default">
						<div class="panel-body">
							<!-- Loop -->
							<div class="clear">
								<div class="text-info">
									<i class="glyphicon glyphicon-user"></i> <strong>김정수</strong> <span
										class="ml10 text-muted num-webfont">2018-08-28 18:35</span>
								</div>
								<p class="small-hb mb5 p5">중국어가 어떤거라는 것 정도 배울 수 있었던 그런 유익한
									강좌 였다고 생각합니다.</p>
							</div>
							<hr>
							<!-- //Loop -->

							<!-- Loop -->
							<div class="clear">
								<div class="text-info">
									<i class="glyphicon glyphicon-user"></i> <strong>정가은</strong> <span
										class="ml10 text-muted num-webfont">2018-08-22 20:13</span>
								</div>
								<p class="small-hb mb5 p5">중국어를 태어나서 처음 접하는 직장인입니다.</p>
							</div>
							<hr>
							<!-- //Loop -->

							<!-- Loop -->
							<div class="clear">
								<div class="text-info">
									<i class="glyphicon glyphicon-user"></i> <strong>고은수</strong> <span
										class="ml10 text-muted num-webfont">2018-08-18 13:17</span>
								</div>
								<p class="small-hb mb5 p5">중국어 발음과 기초 회화를 단기간에 마스터 하고 싶은 학습자
								</p>
							</div>
							<!-- //Loop -->
						</div>
					</div>
					<!-- //덧글보기 -->


					<!-- 덧글작성 -->
					<form id="WriteForm" class="form-horizontal">
						<fieldset>
							<div class="panel panel-default">
								<div class="panel-body">
									<div class="p5">
										<h5 class="text-info mb10">댓글작성</h5>
										<!-- 비회원 -->
										<div class="form-group">
											<label for="input_name"
												class="col-sm-2 col-lg-1 control-label">작성자</label>
											<div class="col-sm-3">
												<input type="text" class="form-control" id="input_name"
													placeholder="작성자를 입력하세요." required>
											</div>
											<label for="input_password" class="col-sm-2 control-label">비밀번호</label>
											<div class="col-sm-3">
												<input type="password" class="form-control"
													id="input_password" required>
											</div>
										</div>
										<!-- //비회원 -->
										<div class="form-group">
											<label for="comment-memo" class="sr-only">덧글내용</label>
											<div class="col-sm-12">
												<textarea class="form-control" id="comment-memo"
													placeholder="내용을 작성해주세요."></textarea>
											</div>
										</div>
										<div class="text-right">
											<button type="submit" class="btn btn-primary">댓글작성</button>
										</div>
									</div>
								</div>
							</div>
						</fieldset>
					</form>
					<!-- //덧글작성 -->


					<!-- 이전/다음 -->
					<ul class="list-group">
						<li class="list-group-item"><a href="#"
							class="text-overflow dblong"><strong>이전글</strong> : [소식] 스마트폰
								앱창작터 만다린 심사위원 [네이버 뉴스]...</a></li>
						<li class="list-group-item"><a href="#"
							class="text-overflow dblong"><strong>다음글</strong> : [공지] 설치 및
								유지, 보수에 관한 공사를 진행하기 위해 2012...</a></li>
					</ul>
					<!-- //이전/다음 -->


					<div class="row">
						<div class="col-xs-6">
							<a href="?BoardMode=write" class="btn btn-default">수정</a> <a
								href="?BoardMode=write" class="btn btn-default">답변</a>
						</div>
						<div class="col-xs-6 text-right">
							<a href="?BoardMode=list" class="btn btn-default">목록</a> <a
								href="?BoardMode=write" class="btn btn-primary">글쓰기</a>
						</div>
					</div>

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
								autoHeight : true,
								transitionStyle : "fade",
								paginationNumbers : true
							});
						});
					</script>
					<!-- //게시판 보기 -->
				</div>
			</div>
			<!-- //콘텐츠 -->
		</div>
	</div>
	<!-- //콘테이너 -->

</body>
</html>