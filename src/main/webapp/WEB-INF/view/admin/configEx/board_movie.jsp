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
							<h2>동영상 게시판</h2>
						</div>
						<div class="col-md-7 text-right">
							<ol class="breadcrumb hidden-xs">
								<li><a href="./"><i class="glyphicon glyphicon-home"></i>
										홈</a></li>
								<li>자료실</li>
								<li class="active">동영상 게시판</li>
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
					<div class="row">
						<div class="col-md-6">
							<div class="vod_big">
								<div class="vod_load">
									<!-- 동영상 출력 -->
									<div class="sr-only">
										<div class="h6">
											<strong>인터넷 익스플로러 8 동영상 플레이어 키보드 사용법</strong>
										</div>
										<ul>
											<li>'Tab'키로 동영상 플레이어에 접근하면 플레이어 하단에 제어 패널이 나타납니다. 제어 패널의
												항목 이동은 'Tab', 뒤로 가기는'Shift + Tab'으로 이동하며 원하는 기능의 실행은
												'space'키를 누릅니다.</li>
											<li>재생 : 'space'키를 눌러서 화면을 재생시키거나 일시 정지시킵니다. 정지 :
												'space'키를 눌러서 현재 재생중인 동영상을 정지시킵니다.</li>
											<li>음소거 : 'space'키를 눌러서 소리를 소거합니다. 음소거 해지: 음소거 상태에서
												'space'키를 누르면 소리가 재생됩니다.</li>
											<li>볼륨조절: 키보드의 "↑"↓" 키로 소리의 크기를 조절합니다.</li>
										</ul>
									</div>
									<video width="100%" controls poster="../../data/vod-pview.jpg"
										class="img-rounded">
										<source type="video/mp4" src="../../data/sample.mp4">
										<object type="video/mp4"
											classid="clsid:22D6F312-B0F6-11D0-94AB-0080C74C7E95"
											id="wPlayer" width="100%">
											<param name="Filename" value="../../data/sample.mp4">
											<param name="autostart" value="0">
											<param name="displaymode" value="4">
											<param name="enabled" value="1">
											<param name="fullscreen" value="1">
											<param name="invokeurls" value="1">
											<param name="showcontrols" value="1">
											<param name="transparentatstart" value="1">
											<param name="displaybackcolor" value="0">
											<a
												href="http://windows.microsoft.com/ko-kr/windows/download-windows-media-player"
												class="btnWmp" target="_blank" title="새창 열림"> <img
												src="/img/user/bg_wmp.png"
												alt="동영상을 보시려면 Window Media Player가 필요합니다 / Window Media Player 다운로드">
											</a>
										</object>
									</video>
									<!-- //동영상 출력 -->
								</div>
								<div class="vod_contents well">
									<strong>광주창조경제혁신센터가 모바일을 기반으로 하는 소상공인용 O2O 서비스를
										선보였습니다. 소상공인들은 이 무료 어플리케이션을 이용해 영업을 위한 다양한 서비스를 제공받을 수 있습니다.<br />
										<br /> 현대자동차그룹은 지난 6일 광주창조경제혁신센터에서 현대차그룹과 광주시 관계자 등이 참석한 가운데,
										광주시 지역 경제 활성화와 소상공인 영업 지원을 위한 모바일 앱, O2O 지원 시스템의 런칭 행사를 가졌습니다.<br />
										<br /> O2O 지원 시스템은 사업주와 이용 고객이 모바일로 연결돼 실시간으로 소통하고, 위치를 기반으로
										한 다양한 서비스를 이용할 수 있는 혁신적인 소상공인용 영업 지원 플랫폼입니다.<br />
										광주창조경제혁신센터는 이날 런칭 행사에서 소상공인들이 모바일에서 원스톱 마케팅을 진행할 수 있는 위치기반 무료
										모바일 앱의 활용 방법과 효용성에 대해 설명했습니다.
									</strong>
								</div>
							</div>
							<!-- 버튼 -->
							<div class="row">
								<div class="col-xs-12">
									<a href="?BoardMode=write" class="btn btn-primary">글쓰기</a>
								</div>
							</div>
							<hr class="hidden-lg">
							<!-- //버튼 -->
						</div>
						<div class="col-md-6">
							<!-- 동영상 리스트 -->
							<div class="row vod">
								<!-- Loop -->
								<div class="col-sm-6 col-md-12">
									<div class="row">
										<div class="col-xs-4 col-sm-5">
											<a href="#" class="vod_wrap">
												<div class="vod_mask">재생</div> <img
												src="/img/user/vod_sample01.jpg" alt=""
												class="img-responsive img-rounded" />
											</a>
										</div>
										<div class="col-xs-8 col-sm-7">
											<div class="text-overflow">
												<a href="#"><strong>소상공인 위한 모바일</strong></a>
											</div>
											<div class="vod_contents mb0">광주창조경제혁신센터가 모바일을 기반으로 하는
												소상공인용 O2O...</div>
											<span class="text-muted small num-webfont">2018.10.13</span>
										</div>
									</div>
									<hr />
								</div>
								<!-- //Loop -->

								<!-- Loop -->
								<div class="col-sm-6 col-md-12">
									<div class="row">
										<div class="col-xs-4 col-sm-5">
											<a href="#" class="vod_wrap">
												<div class="vod_mask">재생</div> <img
												src="/img/user/vod_sample02.jpg" alt=""
												class="img-responsive img-rounded" />
											</a>
										</div>
										<div class="col-xs-8 col-sm-7">
											<div class="text-overflow">
												<a href="#"><strong>소상공인 위한 모바일</strong></a>
											</div>
											<div class="vod_contents mb0">광주창조경제혁신센터가 모바일을 기반으로 하는
												소상공인용 O2O...</div>
											<span class="text-muted small num-webfont">2018.10.13</span>
										</div>
									</div>
									<hr />
								</div>
								<!-- //Loop -->

								<!-- Loop -->
								<div class="col-sm-6 col-md-12">
									<div class="row">
										<div class="col-xs-4 col-sm-5">
											<a href="#" class="vod_wrap">
												<div class="vod_mask">재생</div> <img
												src="/img/user/vod_sample03.jpg" alt=""
												class="img-responsive img-rounded" />
											</a>
										</div>
										<div class="col-xs-8 col-sm-7">
											<div class="text-overflow">
												<a href="#"><strong>소상공인 위한 모바일</strong></a>
											</div>
											<div class="vod_contents mb0">광주창조경제혁신센터가 모바일을 기반으로 하는
												소상공인용 O2O...</div>
											<span class="text-muted small num-webfont">2018.10.13</span>
										</div>
									</div>
									<hr />
								</div>
								<!-- //Loop -->

								<!-- Loop -->
								<div class="col-sm-6 col-md-12">
									<div class="row">
										<div class="col-xs-4 col-sm-5">
											<a href="#" class="vod_wrap">
												<div class="vod_mask">재생</div> <img
												src="/img/user/vod_sample04.jpg" alt=""
												class="img-responsive img-rounded" />
											</a>
										</div>
										<div class="col-xs-8 col-sm-7">
											<div class="text-overflow">
												<a href="#"><strong>소상공인 위한 모바일</strong></a>
											</div>
											<div class="vod_contents mb0">광주창조경제혁신센터가 모바일을 기반으로 하는
												소상공인용 O2O...</div>
											<span class="text-muted small num-webfont">2018.10.13</span>
										</div>
									</div>
									<hr />
								</div>
								<!-- //Loop -->
							</div>
							<!-- //동영상 리스트 -->

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
						</div>
					</div>
					<!-- //게시물 -->

					<!-- 목록 검색 -->
					<form class="form-inline panel panel-default text-center mt20"
						name="searchForm" action="#">
						<fieldset>
							<legend class="sr-only">게시글의 분야,제목으로 검색하세요.</legend>
							<div class="panel-body">
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
							</div>
						</fieldset>
					</form>
					<!-- //목록 검색 -->
					<!-- //게시판 목록 -->
				</div>
			</div>
			<!-- //콘텐츠 -->
		</div>
	</div>
	<!-- //콘테이너 -->
</body>
</html>