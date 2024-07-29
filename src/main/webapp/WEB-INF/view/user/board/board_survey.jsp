<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<!-- 사이드 -->
			<%@ include file="../layout/boardSidebar.jsp"%>
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

					<div class="text-center" style="border-radius: 10px;">
						<p class="mt0">
							<strong> 여러분의 의견을 충실히 반영하기 위하여 온라인 여론/설문조사를 실시하고 있습니다.<br />
								설문에 참여하시려면 현 진행 중인 <strong class="text-danger">설문참여 버튼</strong>을
								클릭하시고 참여하시기 바랍니다.
							</strong>
						</p>
					</div>

					<!-- //안내 -->

					<!-- 설문 참여하기 -->
					<div class="row poll-participate">
						<div class="col-xs-12">
							<a href="?BoardMode=write" class="btn btn-lg btn-primary"> <i
								class="fa fa-bar-chart"></i> <strong>설문하러가기</strong>
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

					<!-- 총게시물 수 & 목록검색 -->
					<div class="row mt15 mb10">
						<div class="col-sm-6">
							<!-- 총 게시물 수 -->
							<div class="pagetotal">
								Total: <strong id="totalRecords" class="text-primary">${totalRecords}</strong>
								count
							</div>
							<!-- //총 게시물 수 -->
						</div>
						<div class="col-sm-6 text-right">
							<!-- 목록 검색 -->
							<form class="form-inline search-form" name="searchForm"
								action="#">
								<fieldset>
									<div class="form-group">
										<label for="searchCate" class="sr-only">검색 옵션</label> <select
											id="searchCate" name="searchCate" class="form-control pr20">
											<option value="" selected hidden>[분류]</option>
											<option value="title">제목</option>
											<option value="content">내용</option>
										</select>
									</div>
									<div class="input-group">
										<label for="keywordInput" class="sr-only"></label> <input
											type="text" id="keywordInput" class="form-control"
											name="keyword" value="${keyword}" placeholder="키워드 입력">
										<span class="input-group-btn">
											<button type="button" class="btn btn-default"
												onclick="javascript:searchKey();">검색</button>
										</span>
									</div>
								</fieldset>
							</form>
							<!-- //목록 검색 -->
						</div>
					</div>
					<!-- //총게시물 수 & 목록검색 -->
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
										class="btn btn-sm btn-warning"><strong>진행중</strong></a></td>
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
	<%@ include file="../layout/footer1.jsp"%>
</body>
</html>