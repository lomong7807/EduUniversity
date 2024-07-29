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
							<h2>이달의 행사 게시판</h2>
						</div>
						<div class="col-md-7 text-right">
							<ol class="breadcrumb hidden-xs">
								<li><a href="./"><i class="glyphicon glyphicon-home"></i>
										홈</a></li>
								<li>자료실</li>
								<li class="active">이달의 행사 게시판</li>
							</ol>
						</div>
					</div>
				</div>

				<div id="customer_container">
					<!-- 게시판 목록 -->
					<!-- 페이징 -->
					<nav class="text-center">
						<div class="row">
							<div class="col-xs-6 text-left">
								<h3 class="num-webfont">2018.08</h3>
							</div>
							<div class="col-xs-6 text-right">
								<ul class="pagination pagination-sm">
									<li><a href="#" aria-label="Previous" title="이전"> <span
											aria-hidden="true"><i class="fa fa-angle-left"
												aria-hidden="true"></i></span>
									</a></li>
									<li><a href="#"><strong class="num-webfont">TODAY</strong></a></li>
									<li><a href="#" aria-label="Next" title="다음"> <span
											aria-hidden="true"><i class="fa fa-angle-right"
												aria-hidden="true"></i></span>
									</a></li>
								</ul>
							</div>
						</div>
					</nav>
					<!-- //페이징 -->

					<!-- 이달의 등록된 행사 -->
					<div class="row portfolio">
						<!-- Loop -->
						<div class="col-xs-6 col-sm-4 col-lg-4">
							<a href="?BoardMode=view" class="thumbnail">
								<div class="caption text-center mb0">
									<div class=" text-overflow">
										<strong>창립 10주년 행사</strong>
									</div>
									<div class="mt5 text-muted">
										<strong>08.12</strong> <span
											class="label label-xs label-warning ml5">행사</span>
									</div>
								</div> <img src="/img/user/sample05.jpg" class="img-responsive" alt="" />
							</a>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="col-xs-6 col-sm-4 col-lg-4">
							<a href="?BoardMode=view" class="thumbnail">
								<div class="caption text-center mb0">
									<div class=" text-overflow">
										<strong>만다린 전화화상중국어 12회 한마음 체육대회</strong>
									</div>
									<div class="mt5 text-muted">
										<strong>08.18</strong> <span
											class="label label-xs label-success ml5">축제</span>
									</div>
								</div> <img src="/img/user/sample06.jpg" class="img-responsive" alt="" />
							</a>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="col-xs-6 col-sm-4 col-lg-4">
							<a href="?BoardMode=view" class="thumbnail">
								<div class="caption text-center mb0">
									<div class=" text-overflow">
										<strong>인터넷 공사로 2층 2시간 가량 인터넷 차단</strong>
									</div>
									<div class="mt5 text-muted">
										<strong>08.28</strong> <span
											class="label label-xs label-primary ml5">알림</span>
									</div>
								</div> <img src="/img/user/sample07.jpg" class="img-responsive" alt="" />
							</a>
						</div>
						<!-- //Loop -->
					</div>
					<!-- //이달의 등록된 행사 -->

					<!-- 달력 -->
					<div class="table-calendar">
						<table class="table table-bordered text-center">
							<colgroup>
								<col>
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
							<tbody>
								<!-- Loop -->
								<tr class="text-left">
									<td class="text-danger"></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td class="text-primary"><a
										href="?BoardMode=write&amp;BoardID=calendar" class="area">
											<em class="num-webfont">1</em>
									</a></td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr class="text-left">
									<td class="text-danger"><a
										href="?BoardMode=write&amp;BoardID=calendar" class="area">
											<em class="num-webfont">2</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar"
										class="area"> <em class="num-webfont">3</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar"
										class="area"> <em class="num-webfont">4</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar"
										class="area"> <em class="num-webfont">5</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar"
										class="area"> <em class="num-webfont">6</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar"
										class="area"> <em class="num-webfont">7</em>
									</a></td>
									<td class="text-primary"><a
										href="?BoardMode=write&amp;BoardID=calendar" class="area">
											<em class="num-webfont">8</em>
									</a></td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr class="text-left">
									<td class="text-danger"><a
										href="?BoardMode=write&amp;BoardID=calendar" class="area">
											<em class="num-webfont">9</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar"
										class="area"> <em class="num-webfont">10</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar"
										class="area"> <em class="num-webfont">11</em>
									</a></td>
									<!-- 등록된 행사 예 -->
									<td class="event"><a
										href="?BoardMode=view&amp;BoardID=calendar" class="area">
											<em class="num-webfont">12</em> <span
											class="label label-xs label-warning">행사</span>
											<div>창립 10주년 행사</div>
									</a></td>
									<!-- //등록된 행사 예 -->
									<td><a href="?BoardMode=write&amp;BoardID=calendar"
										class="area"> <em class="num-webfont">13</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar"
										class="area"> <em class="num-webfont">14</em>
									</a></td>
									<td class="text-primary"><a
										href="?BoardMode=write&amp;BoardID=calendar" class="area">
											<em class="num-webfont">15</em>
									</a></td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr class="text-left">
									<td class="text-danger"><a
										href="?BoardMode=write&amp;BoardID=calendar" class="area">
											<em class="num-webfont">16</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar"
										class="area"> <em class="num-webfont">17</em>
									</a></td>
									<!-- 등록된 축제 예 -->
									<td class="event"><a
										href="?BoardMode=view&amp;BoardID=calendar" class="area">
											<em class="num-webfont">18</em> <span
											class="label label-xs label-success">축제</span>
											<div>만다린 전화화상중국어 12회 체육대회</div>
									</a></td>
									<!-- //등록된 축제 예 -->
									<td><a href="?BoardMode=write&amp;BoardID=calendar"
										class="area"> <em class="num-webfont">19</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar"
										class="area"> <em class="num-webfont">20</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar"
										class="area"> <em class="num-webfont">21</em>
									</a></td>
									<td class="text-primary"><a
										href="?BoardMode=write&amp;BoardID=calendar" class="area">
											<em class="num-webfont">22</em>
									</a></td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr class="text-left">
									<td class="text-danger"><a
										href="?BoardMode=write&amp;BoardID=calendar" class="area">
											<em class="num-webfont">23</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar"
										class="area"> <em class="num-webfont">24</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar"
										class="area"> <em class="num-webfont">25</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar"
										class="area"> <em class="num-webfont">26</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar"
										class="area"> <em class="num-webfont">27</em>
									</a></td>
									<!-- 등록된 알림 예 -->
									<td class="event"><a
										href="?BoardMode=view&amp;BoardID=calendar" class="area">
											<em class="num-webfont">28</em> <span
											class="label label-xs label-primary">알림</span>
											<div>인터넷 공사로 2시간 인터넷 차단</div>
									</a></td>
									<!-- //등록된 알림 예 -->
									<td class="text-primary"><a
										href="?BoardMode=write&amp;BoardID=calendar" class="area">
											<em class="num-webfont">29</em>
									</a></td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr class="text-left">
									<td class="text-danger"><a
										href="?BoardMode=write&amp;BoardID=calendar" class="area">
											<em class="num-webfont">30</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar"
										class="area"> <em class="num-webfont">31</em>
									</a></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td class="text-primary"></td>
								</tr>
								<!-- //Loop -->
							</tbody>
						</table>
					</div>
					<!-- //달력 -->

					<!-- 버튼 -->
					<div class="row">
						<div class="col-xs-6"></div>
						<div class="col-xs-6 text-right">
							<a href="?BoardMode=write&amp;BoardID=calendar"
								class="btn btn-primary">행사등록</a>
						</div>
					</div>
					<!-- //버튼 -->
					<!-- //게시판 목록 -->
				</div>
			</div>
			<!-- //콘텐츠 -->
		</div>
	</div>
	<!-- //콘테이너 -->
</body>
</html>