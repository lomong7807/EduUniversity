<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
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
							<h2>일반 게시판</h2>
						</div>
						<div class="col-md-7 text-right">
							<ol class="breadcrumb hidden-xs">
								<li><a href="./"><i class="glyphicon glyphicon-home"></i>
										홈</a></li>
								<li>자료실</li>
								<li class="active">일반 게시판</li>
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
								Pages<strong class="text-info">1</strong>
							</div>
							<!-- //총 게시물 수 -->
						</div>
					</div>
					<!-- //총게시물 수 & 카테고리 타입2 -->

					<!-- 게시물 -->
					<div class="table-responsive">
						<table class="table text-center table-hover">
							<col style="width: 9%;">
								<col>
								<col style="width: 11%;" class="hidden-xs">
								<col style="width: 10%;" class="hidden-xs">
								<col style="width: 12%;" class="hidden-xs">
								<col style="width: 8%;" class="hidden-xs hidden-sm">
							<thead>
								<tr>
									<th scope="col">번호</th>
									<th scope="col">제목</th>
									<th scope="col" class="hidden-xs">첨부파일</th>
									<th scope="col" class="hidden-xs">글쓴이</th>
									<th scope="col" class="hidden-xs">작성일</th>
									<th scope="col" class="hidden-xs hidden-sm">조회</th>
								</tr>
							</thead>
							<tbody>
								<!-- Loop -->
								<tr>
									<td><span class="ico_notice"><strong>[공지]</strong></span></td>
									<td class="text-left">
										<div class="text-overflow">
											<a href="?BoardMode=view"><strong>학교법인 정의학원
													제331차 이사회(2021.5.21.)</strong> <span class="ico ico_new">새글</span>
											</a>
										</div>
									</td>
									<td class="hidden-xs"><a href="#" class="ico ico_file"
										target="_blank" title="1215 파일 다운로드">파일</a></td>
									<td class="hidden-xs"><strong>관리자</strong></td>
									<td class="hidden-xs"><strong>2018-08-10</strong></td>
									<td class="hidden-xs hidden-sm"><strong>33</strong></td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr>
									<td><span class="ico_notice"><strong>[공지]</strong></span></td>
									<td class="text-left">
										<div class="text-overflow">
											<a href="?BoardMode=view"><strong>학교법인 정의학원
													제331차 이사회(2021.5.21.) 회의록(게시만료)</strong> </a>
										</div>
									</td>
									<td class="hidden-xs"><span class="ico ico_file_non">파일없음</span></td>
									<td class="hidden-xs"><strong>관리자</strong></td>
									<td class="hidden-xs"><strong>2018-08-10</strong></td>
									<td class="hidden-xs hidden-sm"><strong>33</strong></td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr>
									<td>8</td>
									<td class="text-left">
										<div class="text-overflow">
											<a href="?BoardMode=view"><strong>학교법인 정의학원
													제331차 이사회(2021.5.21.)</strong> <span class="ico ico_img">이미지첨부</span>
											</a>
										</div>
									</td>
									<td class="hidden-xs"><a href="#" class="ico ico_file"
										target="_blank" title="1213 파일 다운로드">파일</a></td>
									<td class="hidden-xs"><strong>관리자</strong></td>
									<td class="hidden-xs"><strong>2018-08-10</strong></td>
									<td class="hidden-xs hidden-sm"><strong>33</strong></td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr>
									<td>7</td>
									<td class="text-left">
										<div class="text-overflow">
											<a href="?BoardMode=view"><strong>학교법인 정의학원
													제331차 이사회(2021.5.21.)</strong> <span
												class="ico ico_secret">비밀글</span> </a>
										</div>
									</td>
									<td class="hidden-xs"><span class="ico ico_file_non">파일없음</span></td>
									<td class="hidden-xs"><strong>관리자</strong></td>
									<td class="hidden-xs"><strong>2018-08-10</strong></td>
									<td class="hidden-xs hidden-sm"><strong>33</strong></td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr>
									<td>6</td>
									<td class="text-left">
										<div class="text-overflow">
											<a href="?BoardMode=view"><strong>학교법인 정의학원
													제331차 이사회(2021.5.21.) 회의록(게시만료)</strong> </a>
										</div>
									</td>
									<td class="hidden-xs"><span class="ico ico_file_non">파일없음</span></td>
									<td class="hidden-xs"><strong>관리자</strong></td>
									<td class="hidden-xs"><strong>2018-08-10</strong></td>
									<td class="hidden-xs hidden-sm"><strong>33</strong></td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr>
									<td>5</td>
									<td class="text-left">
										<div class="text-overflow">
											<a href="?BoardMode=view"><strong>학교법인 정의학원
													제331차 이사회(2021.5.21.) 회의록(게시만료)</strong> </a>
										</div>
									</td>
									<td class="hidden-xs"><a href="#" class="ico ico_file"
										target="_blank" title="1210 파일 다운로드">파일</a></td>
									<td class="hidden-xs"><strong>관리자</strong></td>
									<td class="hidden-xs"><strong>2018-08-10</strong></td>
									<td class="hidden-xs hidden-sm"><strong>33</strong></td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr>
									<td>4</td>
									<td class="text-left">
										<div class="text-overflow">
											<a href="?BoardMode=view"><strong>학교법인 정의학원
													제331차 이사회(2021.5.21.) 회의록(게시만료)</strong> </a>
										</div>
									</td>
									<td class="hidden-xs"><span class="ico ico_file_non">파일없음</span></td>
									<td class="hidden-xs"><strong>관리자</strong></td>
									<td class="hidden-xs"><strong>2018-08-10</strong></td>
									<td class="hidden-xs hidden-sm"><strong>33</strong></td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr>
									<td>3</td>
									<td class="text-left">
										<div class="text-overflow">
											<a href="?BoardMode=view"><strong>학교법인 정의학원
													제331차 이사회(2021.5.21.) 회의록(게시만료)</strong> </a>
										</div>
									</td>
									<td class="hidden-xs"><span class="ico ico_file_non">파일없음</span></td>
									<td class="hidden-xs">관리자</td>
									<td class="hidden-xs">2018-08-10</td>
									<td class="hidden-xs hidden-sm">33</td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr>
									<td>2</td>
									<td class="text-left">
										<div class="text-overflow">
											<a href="?BoardMode=view"><strong>학교법인 정의학원
													제331차 이사회(2021.5.21.) 회의록(게시만료)</strong> </a>
										</div>
									</td>
									<td class="hidden-xs"><span class="ico ico_file_non">파일없음</span></td>
									<td class="hidden-xs"><strong>관리자</strong></td>
									<td class="hidden-xs"><strong>2018-08-10</strong></td>
									<td class="hidden-xs hidden-sm"><strong>33</strong></td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr>
									<td>1</td>
									<td class="text-left">
										<div class="text-overflow">
											<a href="?BoardMode=view"><strong>학교법인 정의학원
													제331차 이사회(2021.5.21.) 회의록(게시만료)</strong> </a>
										</div>
									</td>
									<td class="hidden-xs"><span class="ico ico_file_non">파일없음</span></td>
									<td class="hidden-xs"><strong>관리자</strong></td>
									<td class="hidden-xs"><strong>2018-08-10</strong></td>
									<td class="hidden-xs hidden-sm"><strong>33</strong></td>
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
					<!-- 검색 및 버튼 -->
					<div class="row mt15">
						<div class="col-sm-6">
							<!-- 목록 검색 -->
							<form class="form-inline search-form" name="searchForm"
								action="#">
								<fieldset>
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
					<br />
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