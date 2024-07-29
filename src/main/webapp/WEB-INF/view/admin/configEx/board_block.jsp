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
    	<!-- Sidebar Wrapper -->
	<!-- Quick Bar -->
	<div class="contents-header">
		<button type="button" id="meta-toggle"
			class="top-quick-left btn hidden-md hidden-lg">
			<i class="fa fa-bars"></i>
		</button>
		<a href="javascript:void(0);" class="logo hidden-md hidden-lg"> <img
			src="/img/admin/mandarin-white.svg" alt="mandarin"
			class="mobile-logo" />
		</a>
		<button type="button" id="quick-toggle"
			class="top-quick-right btn hidden-md hidden-lg">
			<i class="fa fa-sort-amount-desc"></i>
		</button>
		<div class="quick-navi-wrap">
			<div class="quick-navi">
				<div class="row">
					<div
						class="col-xs-6 col-sm-6 col-lg-3 md-mb10 m-mb10 xs-mb10 add-col">
						<a href="/_admin/member/member_list.html" class="text-center"><img
							src="../img/admin/quick-01.svg" class="img" alt="quick-01">회원종합관리</a>
					</div>
					<div
						class="col-xs-6 col-sm-6 col-lg-3 md-mb10 m-mb10 xs-mb10 add-col last-col-sm">
						<a href="/_admin/teacher/teacher_list.html" class="text-center"><img
							src="../img/admin/quick-01.svg" class="img" alt="quick-02">강사관리</a>
					</div>
					<div
						class="col-xs-6 col-sm-6 col-lg-3  md-mb10 m-mb10 xs-mb10 last-col-md add-col add-col-xs odd-col">
						<a href="/_admin/realtime/realtime_category_list.html" class="text-center"><img
							src="../img/admin/quick-03.svg" class="img" alt="quick-03">실시간화상
							관리</a>
					</div>

					<div
						class="col-xs-6 col-sm-6 col-lg-3  md-mb10 m-mb10 xs-mb10 last-col-md add-col add-col-xs odd-col last-col-sm">
						<a href="/_admin/room/company_list.html" class="text-center"><img
							src="../img/admin/quick-04.svg" class="img" alt="quick-04">단체방관리</a>
					</div>
				</div>
			</div>
		</div>
	</div>

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
                  <a href="history.php" class=""><span>타임라인(연혁)</span></a>
                </li>
                <li class="list-group-item">
                  <a href="map.php" class=""><span>찾아오시는길</span></a>
                </li>
                <li class="list-group-item">
                  <a href="sitemap.php" class=""><span>사이트맵</span></a>
                </li>
                <li class="list-group-item">
                  <a href="error.php" class=""><span>에러페이지</span></a>
                </li>
                <li class="list-group-item">
                  <a href="bootstrap.php" class=""><span>부트스트랩 샘플</span></a>
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
							<h2>블럭 게시판</h2>
						</div>
						<div class="col-md-7 text-right">
							<ol class="breadcrumb hidden-xs">
								<li><a href="./"><i class="glyphicon glyphicon-home"></i>
										홈</a></li>
								<li>자료실</li>
								<li class="active">블럭 게시판</li>
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
					<div class="row mb10">
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
					<div class="row portfolio">
						<!-- Loop -->
						<div class="col-sm-4">
							<div class="thumbnail">
								<a href="bbs_block.php?BoardMode=view"> <img
									src="/img/user/sample03.jpg" class="img-responsive" alt="" />
								</a>
								<div class="caption auto pt10">
									<div class="mb10">
										<span class="label label-xs label-default">강좌</span>
									</div>
									<a href="bbs_block.php?BoardMode=view">
										<div class="h6  mb5 text-overflow">
											<strong>창의예술아카데미</strong>
										</div>
									</a>
									<div class="text-muted small mb10">예술과 기업의 파트너쉽 만들기, 매체를
										이용한 나의 예술세계 확산 신청기간 입니다...</div>
									<hr class="thin">
									<div class="btn-group btn-group-justified mb5">
										<a href="#" class="btn btn-sm btn-link" role="button"><strong>조회</strong>
											<strong class="text-danger num-webfont ml5">32</strong></a> <a
											href="#" class="btn btn-sm btn-link" role="button"><strong>좋아요</strong><strong
											class="text-danger num-webfont ml5">56</strong></a>
									</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="col-sm-4">
							<div class="thumbnail">
								<a href="bbs_block.php?BoardMode=view"> <img
									src="/img/user/sample03.jpg" class="img-responsive" alt="" />
								</a>
								<div class="caption auto pt10">
									<div class="mb10">
										<span class="label label-xs label-default">강좌</span>
									</div>
									<a href="bbs_block.php?BoardMode=view">
										<div class="h6  mb5 text-overflow">
											<strong>건축학교 토요일 11시</strong>
										</div>
									</a>
									<div class="text-muted small mb10">건축학교가 창의적인 파트너십을 가지고
										어린이와 청소년에게 건축에 대한 인식을 높이...</div>
									<hr class="thin">
									<div class="btn-group btn-group-justified mb5">
										<a href="#" class="btn btn-sm btn-link" role="button"><strong>조회</strong>
											<strong class="text-danger num-webfont ml5">32</strong></a> <a
											href="#" class="btn btn-sm btn-link" role="button"><strong>좋아요</strong><strong
											class="text-danger num-webfont ml5">56</strong></a>
									</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="col-sm-4">
							<div class="thumbnail">
								<a href="bbs_block.php?BoardMode=view"> <img
									src="/img/user/sample03.jpg" class="img-responsive" alt="" />
								</a>
								<div class="caption auto pt10">
									<div class="mb10">
										<span class="label label-xs label-warning">공모전</span>
									</div>
									<a href="bbs_block.php?BoardMode=view">
										<div class="h6  mb5 text-overflow">
											<strong>한국창작음악제 작품공모</strong>
										</div>
									</a>
									<div class="text-muted small mb10">건축학교는 단순히 건조 환경을 만들어가는
										방법을 가르치는 것이 아니라, 창의적인 문제...</div>
									<hr class="thin">
									<div class="btn-group btn-group-justified mb5">
										<a href="#" class="btn btn-sm btn-link" role="button"><strong>조회</strong>
											<strong class="text-danger num-webfont ml5">32</strong></a> <a
											href="#" class="btn btn-sm btn-link" role="button"><strong>좋아요</strong><strong
											class="text-danger num-webfont ml5">56</strong></a>
									</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="col-sm-4">
							<div class="thumbnail">
								<a href="bbs_block.php?BoardMode=view"> <img
									src="/img/user/sample03.jpg" class="img-responsive" alt="" />
								</a>
								<div class="caption auto pt10">
									<div class="mb10">
										<span class="label label-xs label-primary">인문강의</span>
									</div>
									<a href="bbs_block.php?BoardMode=view">
										<div class="h6  mb5 text-overflow">
											<strong>수요일은 문화가 있는 날</strong>
										</div>
									</a>
									<div class="text-muted small mb10">다양한 문화시설의 문을 활짝 열고
										국정기조인 문화융성의 시대를 국민이 체감할 수 있...</div>
									<hr class="thin">
									<div class="btn-group btn-group-justified mb5">
										<a href="#" class="btn btn-sm btn-link" role="button"><strong>조회</strong>
											<strong class="text-danger num-webfont ml5">32</strong></a> <a
											href="#" class="btn btn-sm btn-link" role="button"><strong>좋아요</strong><strong
											class="text-danger num-webfont ml5">56</strong></a>
									</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="col-sm-4">
							<div class="thumbnail">
								<a href="bbs_block.php?BoardMode=view"> <img
									src="/img/user/sample03.jpg" class="img-responsive" alt="" />
								</a>
								<div class="caption auto pt10">
									<div class="mb10">
										<span class="label label-xs label-info">예술현장</span>
									</div>
									<a href="bbs_block.php?BoardMode=view">
										<div class="h6  mb5 text-overflow">
											<strong>역사 속 인물에게 길을 묻다</strong>
										</div>
									</a>
									<div class="text-muted small mb10">예술과들과 독자들을 연결하는 커뮤니티를
										만들고 있다. 차학경의 딕테도 그 에피소드 중...</div>
									<hr class="thin">
									<div class="btn-group btn-group-justified mb5">
										<a href="#" class="btn btn-sm btn-link" role="button"><strong>조회</strong>
											<strong class="text-danger num-webfont ml5">32</strong></a> <a
											href="#" class="btn btn-sm btn-link" role="button"><strong>좋아요</strong><strong
											class="text-danger num-webfont ml5">56</strong></a>
									</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="col-sm-4">
							<div class="thumbnail">
								<a href="bbs_block.php?BoardMode=view"> <img
									src="/img/user/sample03.jpg" class="img-responsive" alt="" />
								</a>
								<div class="caption auto pt10">
									<div class="mb10">
										<span class="label label-xs label-default">강좌</span>
									</div>
									<a href="bbs_block.php?BoardMode=view">
										<div class="h6  mb5 text-overflow">
											<strong>광복절 아르코아카이브 휴관</strong>
										</div>
									</a>
									<div class="text-muted small mb10">아르코아카이브는 8/15(금) 광복절을
										맞이하여 휴관을 합니다, 이용에 착오 없으시길 바랍...</div>
									<hr class="thin">
									<div class="btn-group btn-group-justified mb5">
										<a href="#" class="btn btn-sm btn-link" role="button"><strong>조회</strong>
											<strong class="text-danger num-webfont ml5">32</strong></a> <a
											href="#" class="btn btn-sm btn-link" role="button"><strong>좋아요</strong><strong
											class="text-danger num-webfont ml5">56</strong></a>
									</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="col-sm-4">
							<div class="thumbnail">
								<a href="bbs_block.php?BoardMode=view"> <img
									src="/img/user/sample03.jpg" class="img-responsive" alt="" />
								</a>
								<div class="caption auto pt10">
									<div class="mb10">
										<span class="label label-xs label-default">강좌</span>
									</div>
									<a href="bbs_block.php?BoardMode=view">
										<div class="h6  mb5 text-overflow">
											<strong>공공예술 아이디어 공모</strong>
										</div>
									</a>
									<div class="text-muted small mb10">아르코 공공예술 아이디어 공모 결과를
										다음과 같이 알립니다, 참여해주신 모든 분들께....</div>
									<hr class="thin">
									<div class="btn-group btn-group-justified mb5">
										<a href="#" class="btn btn-sm btn-link" role="button"><strong>조회</strong>
											<strong class="text-danger num-webfont ml5">32</strong></a> <a
											href="#" class="btn btn-sm btn-link" role="button"><strong>좋아요</strong><strong
											class="text-danger num-webfont ml5">56</strong></a>
									</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="col-sm-4">
							<div class="thumbnail">
								<a href="bbs_block.php?BoardMode=view"> <img
									src="/img/user/sample03.jpg" class="img-responsive" alt="" />
								</a>
								<div class="caption auto pt10">
									<div class="mb10">
										<span class="label label-xs label-default">강좌</span>
									</div>
									<a href="bbs_block.php?BoardMode=view">
										<div class="h6  mb5 text-overflow">
											<strong>공동창작 워크숍</strong>
										</div>
									</a>
									<div class="text-muted small mb10">참가자들은 촬영, 편집 그리고 프로젝션에
										이르는 전 과정을 활발한 토론을 거쳐 진행해...</div>
									<hr class="thin">
									<div class="btn-group btn-group-justified mb5">
										<a href="#" class="btn btn-sm btn-link" role="button"><strong>조회</strong>
											<strong class="text-danger num-webfont ml5">32</strong></a> <a
											href="#" class="btn btn-sm btn-link" role="button"><strong>좋아요</strong><strong
											class="text-danger num-webfont ml5">56</strong></a>
									</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="col-sm-4">
							<div class="thumbnail">
								<a href="bbs_block.php?BoardMode=view"> <img
									src="/img/user/sample03.jpg" class="img-responsive" alt="" />
								</a>
								<div class="caption auto pt10">
									<div class="mb10">
										<span class="label label-xs label-info">예술현장</span>
									</div>
									<a href="bbs_block.php?BoardMode=view">
										<div class="h6  mb5 text-overflow">
											<strong>자연과 미디어 컨퍼런스</strong>
										</div>
									</a>
									<div class="text-muted small mb10">전시, 출판, 영상, 컨퍼런스의 형태로
										대중과 공유하는 융복합형 공공예술실험 프로젝트...</div>
									<hr class="thin">
									<div class="btn-group btn-group-justified mb5">
										<a href="#" class="btn btn-sm btn-link" role="button"><strong>조회</strong>
											<strong class="text-danger num-webfont ml5">32</strong></a> <a
											href="#" class="btn btn-sm btn-link" role="button"><strong>좋아요</strong><strong
											class="text-danger num-webfont ml5">56</strong></a>
									</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="col-sm-4">
							<div class="thumbnail">
								<a href="bbs_block.php?BoardMode=view"> <img
									src="/img/user/sample03.jpg" class="img-responsive" alt="" />
								</a>
								<div class="caption auto pt10">
									<div class="mb10">
										<span class="label label-xs label-danger">공지</span>
									</div>
									<a href="bbs_block.php?BoardMode=view">
										<div class="h6  mb5 text-overflow">
											<strong>중국문화예술위원회 본사 이전안내</strong>
										</div>
									</a>
									<div class="text-muted small mb10">중국문화예술위원회가 전남 나주시에 위치한
										광주전남공동혁신도시로 이전합니다, 그..</div>
									<hr class="thin">
									<div class="btn-group btn-group-justified mb5">
										<a href="#" class="btn btn-sm btn-link" role="button"><strong>조회</strong>
											<strong class="text-danger num-webfont ml5">32</strong></a> <a
											href="#" class="btn btn-sm btn-link" role="button"><strong>좋아요</strong><strong
											class="text-danger num-webfont ml5">56</strong></a>
									</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="col-sm-4">
							<div class="thumbnail">
								<a href="bbs_block.php?BoardMode=view"> <img
									src="/img/user/sample03.jpg" class="img-responsive" alt="" />
								</a>
								<div class="caption auto pt10">
									<div class="mb10">
										<span class="label label-xs label-primary">인문강의</span>
									</div>
									<a href="bbs_block.php?BoardMode=view">
										<div class="h6  mb5 text-overflow">
											<strong>푸른꿈건축학교 공개 강연</strong>
										</div>
									</a>
									<div class="text-muted small mb10">올해 처음으로 선보이는
										푸른꿈건축학교에서는 건축 관련 '저자와의 만남’을 통해 책을...</div>
									<hr class="thin">
									<div class="btn-group btn-group-justified mb5">
										<a href="#" class="btn btn-sm btn-link" role="button"><strong>조회</strong>
											<strong class="text-danger num-webfont ml5">32</strong></a> <a
											href="#" class="btn btn-sm btn-link" role="button"><strong>좋아요</strong><strong
											class="text-danger num-webfont ml5">56</strong></a>
									</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="col-sm-4">
							<div class="thumbnail">
								<a href="bbs_block.php?BoardMode=view"> <img
									src="/img/user/sample03.jpg" class="img-responsive" alt="" />
								</a>
								<div class="caption auto pt10">
									<div class="mb10">
										<span class="label label-xs label-warning">공모전</span>
									</div>
									<a href="bbs_block.php?BoardMode=view">
										<div class="h6  mb5 text-overflow">
											<strong>미술관 연장 운영 안내</strong>
										</div>
									</a>
									<div class="text-muted small mb10">늦은밤까지도 작가를 찾는 8인의 등장인물
										전시 관람이 가능하오니 많은 발걸음 부탁드...</div>
									<hr class="thin">
									<div class="btn-group btn-group-justified mb5">
										<a href="#" class="btn btn-sm btn-link" role="button"><strong>조회</strong>
											<strong class="text-danger num-webfont ml5">32</strong></a> <a
											href="#" class="btn btn-sm btn-link" role="button"><strong>좋아요</strong><strong
											class="text-danger num-webfont ml5">56</strong></a>
									</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->
					</div>
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
					<!-- 검색 및 버튼 -->
					<div class="row mt15">
						<div class="col-sm-6">
							<!-- 목록 검색 -->
							<form class="form-inline search-form" name="searchForm"
								action="#">
								<fieldset>
									<legend class="sr-only">게시글의 분야,제목으로 검색하세요.</legend>
									<div class="form-group">
										<label for="search" class="sr-only">검색 옵션</label> <select
											id="search" name="search" class="form-control">
											<option value="title">제목</option>
											<option value="content">내용</option>
										</select>
									</div>
									<div class="input-group">
										<label for="searchstring" class="sr-only">키워드입력</label> <input
											type="text" id="searchstring" name="searchstring" value=""
											class="form-control" placeholder="키워드입력" /> <span
											class="input-group-btn"><button type="submit"
												class="btn btn-default">검색</button></span>
									</div>
								</fieldset>
							</form>
							<!-- //목록 검색 -->
						</div>
						<div class="col-sm-6 text-right">
							<a href="?BoardMode=write" class="btn btn-primary">글쓰기</a>
						</div>
					</div>
					<!-- //검색 및 버튼 -->
					<!-- //게시판 목록 -->
				</div>
			</div>
			<!-- //콘텐츠 -->
		</div>
	</div>
	<!-- //콘테이너 -->
</body>
</html>