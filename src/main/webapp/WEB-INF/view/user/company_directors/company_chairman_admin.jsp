<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
<title>이사회</title>
</head>
<body>
	<%@ include file="../layout/header1.jsp"%>
	<div class="sub_visual bg-thema1"></div>
	<!-- 콘테이너 -->
	<div class="container">
		<div class="row">
			<%@ include file="../layout/boardSidebar.jsp"%>

			<!-- 콘텐츠 -->
			<div id="container" class="col-md-9">
				<div class="page-header">
					<div class="row">
						<div class="col-md-5">
							<h2>역대 이사장</h2>
						</div>
						<div class="col-md-7 text-right">
							<ol class="breadcrumb hidden-xs">
								<li><a href="./"><i class="glyphicon glyphicon-home"></i> 홈</a></li>
								<li>이사회</li>
								<li class="active">역대 이사장</li>
							</ol>
						</div>
					</div>
				</div>

				<div id="customer_container">
					<!-- 게시판 목록 -->
					<!-- 총게시물 수 & 목록검색 -->
					<div class="row mb10">
						<div class="col-sm-7 text-left">
							<!-- 총 게시물 수 -->
							<div class="pagetotal num-webfont">
								Total Article<strong class="text-primary">3</strong> / Total Pages<strong>1</strong>
							</div>
							<!-- //총 게시물 수 -->
						</div>
						<div class="col-sm-5 text-right">
							<!-- 목록 검색 -->
							<form class="form-inline search-form" name="searchForm" action="#">
								<fieldset>
									<legend class="sr-only">게시글의 분야,제목으로 검색하세요.</legend>
									<div class="form-group">
										<label for="search" class="sr-only">검색 옵션</label> <select id="search" name="search" class="form-control">
											<option value="title">제목</option>
											<option value="content">내용</option>
										</select>
									</div>
									<div class="input-group">
										<label for="searchstring" class="sr-only">키워드입력</label> <input type="text" id="searchstring" name="searchstring" value="" class="form-control" placeholder="키워드입력" /> <span
											class="input-group-btn"><button type="submit" class="btn btn-default">검색</button></span>
									</div>
								</fieldset>
							</form>
							<!-- //목록 검색 -->
						</div>
					</div>
					<!-- //총게시물 수 & 목록검색 -->
					<!-- 게시물 -->
					<div class="row portfolio">
						<!-- Loop -->
						<div class="col-sm-4">
							<a href="?BoardMode=view" class="thumbnail"> <img src="/img/user/sample07.jpg" class="img-responsive" alt="" />
								<div class="caption text-center mb0">
									<div class="text-info">
										<strong>초대 이사장 전필순</strong>
									</div>
									<div class="text-muted">1958.07.29 ~ 1962.07.28</div>
								</div>
							</a>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="col-sm-4">
							<a href="?BoardMode=view" class="thumbnail"> <img src="/img/user/sample07.jpg" class="img-responsive" alt="" />
								<div class="caption text-center mb0">
									<div class="text-info">
										<strong>제2대 이사장 한경직 </strong>
									</div>
									<div class="text-muted">1962.07.28 ~ 1975.01.21</div>
								</div>
							</a>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="col-sm-4">
							<a href="?BoardMode=view" class="thumbnail"> <img src="/img/user/sample07.jpg" class="img-responsive" alt="" />
								<div class="caption text-center mb0">
									<div class="text-info">
										<strong>제3대 이사장 김금련 </strong>
									</div>
									<div class="text-muted">1975.02.03 ~ 1977.08.13</div>
								</div>
							</a>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="col-sm-4">
							<a href="?BoardMode=view" class="thumbnail"> <img src="/img/user/sample07.jpg" class="img-responsive" alt="" />
								<div class="caption text-center mb0">
									<div class="text-info">
										<strong>제4대 이사장 김성섭 </strong>
									</div>
									<div class="text-muted">1977.08.26 ~ 1983.03.18</div>
								</div>
							</a>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="col-sm-4">
							<a href="?BoardMode=view" class="thumbnail"> <img src="/img/user/sample07.jpg" class="img-responsive" alt="" />
								<div class="caption text-center mb0">
									<div class="text-info">
										<strong>제5대 이사장 양성담 </strong>
									</div>
									<div class="text-muted">1983.05.02 ~ 1985.01.18</div>
								</div>
							</a>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="col-sm-4">
							<a href="?BoardMode=view" class="thumbnail"> <img src="/img/user/sample07.jpg" class="img-responsive" alt="" />
								<div class="caption text-center mb0">
									<div class="text-info">
										<strong>제6대 이사장 이세웅 </strong>
									</div>
									<div class="text-muted">1985.01.19 ~ 1988.03.09</div>
								</div>
							</a>
						</div>
						<!-- //Loop -->
					</div>
					<!-- //게시물 -->

					<!-- 페이징 -->
					<nav class="text-center">
						<ul class="pagination pagination-sm num-webfont">
							<li><a href="#" aria-label="Previous" title="처음"> <span aria-hidden="true"><i class="fa fa-angle-double-left" aria-hidden="true"></i></span>
							</a></li>
							<li><a href="#" aria-label="Previous" title="이전"> <span aria-hidden="true"><i class="fa fa-angle-left" aria-hidden="true"></i></span>
							</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#" aria-label="Next" title="다음"> <span aria-hidden="true"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
							</a></li>
							<li><a href="#" aria-label="Next" title="마지막"> <span aria-hidden="true"><i class="fa fa-angle-double-right" aria-hidden="true"></i></span>
							</a></li>
						</ul>
					</nav>
					<!-- //페이징 -->
					<!-- 검색 및 버튼 -->
					<div class="row mt15">
						<div class="col-sm-12 text-right">
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
	<%@ include file="../layout/footer1.jsp"%>
</body>
</html>