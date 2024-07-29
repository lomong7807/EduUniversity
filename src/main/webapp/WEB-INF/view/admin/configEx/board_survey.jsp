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
						<li class="list-group-item"><a href="../board/question.html"
							class=""><span><strong>자주묻는질문 게시판</strong></span></a></li>
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
							<h2>설문조사 게시판</h2>
						</div>
						<div class="col-md-7 text-right">
							<ol class="breadcrumb hidden-xs">
								<li><a href="./"><i class="glyphicon glyphicon-home"></i>
										홈</a></li>
								<li>자료실</li>
								<li class="active">설문조사 게시판</li>
							</ol>
						</div>
					</div>
				</div>

				<div id="customer_container">
					<!-- 설문조사 목록 -->
					<!-- 안내 -->
					<div class="panel panel-primary">
						<div class="panel-body text-justify">
							<p>
								<strong> 군민여러분의 의견을 충실히 반영하기 위하여 온라인 여론/설문조사를 실시하고
									있습니다.<br /> 설문에 참여하시려면 현 진행 중인 <strong class="text-danger">설문참여
										버튼</strong>을 클릭하시고 참여하시기 바랍니다.
								</strong>
							</p>
						</div>
					</div>
					<!-- //안내 -->

					<!-- 설문 참여하기 -->
					<div class="row poll-participate">
						<div class="col-xs-12">
							<div class="h6 mb15">
								<strong>2024년도 예산편성을 위한 주민의견 수렴</strong>
							</div>
						</div>
						<div class="col-xs-12">
							<a href="?BoardMode=write" class="btn btn-lg btn-primary"> <i
								class="fa fa-bar-chart"></i> <strong>설문 참여하기</strong>
							</a>
						</div>
					</div>
					<!-- //설문 참여하기 -->

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
					<div class="table-responsive">
						<table class="table text-center table-hover"
							summary="게시글 목록 입니다. 번호,제목,작성일,현황,조회">
							<caption class="sr-only">게시글 목록</caption>
							<colgroup>
								<col style="width: 9%;" class="hidden-xs">
								<col style="width: 11%;">
								<col style="width: 52%;">
								<col style="width: 28%;" class="hidden-xs">
							</colgroup>
							<thead>
								<tr>
									<th scope="col" class="hidden-xs">번호</th>
									<th scope="col">상태</th>
									<th scope="col">설문주제</th>
									<th scope="col" class="hidden-xs">설문기간</th>
								</tr>
							</thead>
							<tbody>
								<!-- 설문참여 예 -->
								<tr class="participate-line">
									<td class="hidden-xs">20</td>
									<td><a href="?BoardMode=write"
										class="btn btn-sm btn-danger"><strong>설문참여</strong></a></td>
									<td class="text-left">
										<div class="text-overflow">
											<a href="?BoardMode=view"><strong>2018년도 예산편성을
													위한 주민의견 수렴</strong></a>
										</div>
									</td>
									<td class="hidden-xs num-webfont">2018-06-11 ~ 2018-10-08</td>
								</tr>
								<!-- //설문참여 예 -->

								<!-- Loop -->
								<tr>
									<td class="hidden-xs">19</td>
									<td><strong>완료</strong></td>
									<td class="text-left">
										<div class="text-overflow">
											<a href="?BoardMode=view"><strong>지역주민 보건의료 요구도
													조사</strong></a>
										</div>
									</td>
									<td class="hidden-xs num-webfont">2018-07-09 ~ 2018-07-28</td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr>
									<td class="hidden-xs">18</td>
									<td><strong>완료</strong></td>
									<td class="text-left">
										<div class="text-overflow">
											<a href="?BoardMode=view"><strong>2015년도 예산편성을
													위한 주민의견 수렴</strong></a>
										</div>
									</td>
									<td class="hidden-xs num-webfont">2018-06-09 ~ 2018-10-10</td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr>
									<td class="hidden-xs">17</td>
									<td><strong>완료</strong></td>
									<td class="text-left">
										<div class="text-overflow">
											<a href="?BoardMode=view"><strong>2014년도 예산편성을
													위한 주민의견 수렴</strong></a>
										</div>
									</td>
									<td class="hidden-xs num-webfont">2018-11-03 ~ 2018-12-03</td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr>
									<td class="hidden-xs">16</td>
									<td><strong>완료</strong></td>
									<td class="text-left">
										<div class="text-overflow">
											<a href="?BoardMode=view"><strong>영어신문구독 만족도 조사</strong></a>
										</div>
									</td>
									<td class="hidden-xs num-webfont">2018-10-17 ~ 2018-10-31</td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr>
									<td class="hidden-xs">15</td>
									<td><strong>완료</strong></td>
									<td class="text-left">
										<div class="text-overflow">
											<a href="?BoardMode=view"><strong>수돗물 불소농도 조정
													사업에 대한 주민 여론조사</strong></a>
										</div>
									</td>
									<td class="hidden-xs num-webfont">2018-09-18 ~ 2018-11-20</td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr>
									<td class="hidden-xs">14</td>
									<td><strong>완료</strong></td>
									<td class="text-left">
										<div class="text-overflow">
											<a href="?BoardMode=view"><strong>2013년도 예산편성을
													위한 주민의견 수렴</strong></a>
										</div>
									</td>
									<td class="hidden-xs num-webfont">2018-06-26 ~ 2018-10-20</td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr>
									<td class="hidden-xs">13</td>
									<td><strong>완료</strong></td>
									<td class="text-left">
										<div class="text-overflow">
											<a href="?BoardMode=view"><strong>찾아가는 맞춤형 이동
													정보화교육 설문지</strong></a>
										</div>
									</td>
									<td class="hidden-xs num-webfont">2018-04-05 ~ 2018-06-25</td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr>
									<td class="hidden-xs">12</td>
									<td><strong>완료</strong></td>
									<td class="text-left">
										<div class="text-overflow">
											<a href="?BoardMode=view"><strong>수돗물불소농도조정사업에대한
													주민 여론조사</strong></a>
										</div>
									</td>
									<td class="hidden-xs num-webfont">2018-12-09 ~ 2018-12-20</td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr>
									<td class="hidden-xs">11</td>
									<td><strong>완료</strong></td>
									<td class="text-left">
										<div class="text-overflow">
											<a href="?BoardMode=view"><strong>영어신문구독 만족도</strong></a>
										</div>
									</td>
									<td class="hidden-xs num-webfont">2018-11-03 ~ 2018-12-03</td>
								</tr>
								<!-- //Loop -->
							</tbody>
						</table>
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
					<!-- //설문조사 목록 -->
				</div>
			</div>
			<!-- //콘텐츠 -->
		</div>
	</div>
	<!-- //콘테이너 -->
</body>
</html>