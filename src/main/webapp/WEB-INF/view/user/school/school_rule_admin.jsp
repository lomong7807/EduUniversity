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
	<%@ include file="../layout/boardSidebar.jsp"%>

	<!-- 콘텐츠 -->
	<div id="container" class="col-md-9">
		<div class="page-header">
			<div class="row">
				<div class="col-md-5 pl10">
					<h2>정관 및 규정</h2>
				</div>
				<div class="col-md-7 text-right">
					<ol class="breadcrumb hidden-xs">
						<li><a href="./"><i class="glyphicon glyphicon-home"></i> 홈</a></li>
						<li>학교소개</li>
						<li class="active">정관 및 규정</li>
					</ol>
				</div>
			</div>
		</div>
		<div id="customer_container">
			<!-- 게시판 목록 -->
			<div class="text-right">
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
			</div>
			<!-- 게시물 -->
			<div class="table-responsive">
				<table class="table text-center table-hover">
					<colgroup>
						<col style="width: 9%;">
						<col>
						<col style="width: 11%;" class="hidden-xs">
						<col style="width: 10%;" class="hidden-xs">
						<col style="width: 12%;" class="hidden-xs">
						<col style="width: 8%;" class="hidden-xs hidden-sm">
					</colgroup>
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
							<td><span class="ico_notice">[공지]</span></td>
							<td class="text-left">
								<div class="text-overflow">
									<a href="?BoardMode=view">학교법인 정관 (개정일:2024-02-01) </a>
								</div>
							</td>
							<td class="hidden-xs"><a href="#" class="ico ico_file" target="_blank" title="1215 파일 다운로드">파일</a></td>
							<td class="hidden-xs">관리자</td>
							<td class="hidden-xs">2018-08-10</td>
							<td class="hidden-xs hidden-sm">33</td>
						</tr>
						<!-- //Loop -->

						<!-- Loop -->
						<tr>
							<td><span class="ico_notice">[공지]</span></td>
							<td class="text-left">
								<div class="text-overflow">
									<a href="?BoardMode=view">학교법인 직원인사 및 보수규정<span class="ico ico_new">새글</span>
									</a>
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
							<td>1211</td>
							<td class="text-left">
								<div class="text-overflow">
									<a href="?BoardMode=view">학교법인 안전보건 경영방침(2022.11.4.)<span class="ico ico_secret">비밀글</span>
									</a>
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
							<td>1210</td>
							<td class="text-left">
								<div class="text-overflow">
									<a href="?BoardMode=view">학교법인 일반직원 징계처분 등의 재심에 관한 규정</a>
								</div>
							</td>
							<td class="hidden-xs"><a href="#" class="ico ico_file" target="_blank" title="1210 파일 다운로드">파일</a></td>
							<td class="hidden-xs">관리자</td>
							<td class="hidden-xs">2018-08-10</td>
							<td class="hidden-xs hidden-sm">33</td>
						</tr>
						<!-- //Loop -->

						<!-- Loop -->
						<tr>
							<td>1209</td>
							<td class="text-left">
								<div class="text-overflow">
									<a href="?BoardMode=view">중대산업재해 등 사고발생 대비 안전관리 매뉴얼 (2022-08-18) <span class="ico ico_img">이미지첨부</span>
									</a>
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
							<td>1208</td>
							<td class="text-left">
								<div class="text-overflow">
									<a href="?BoardMode=view">학교법인 위임전결 규정 </a>
								</div>
							</td>
							<td class="hidden-xs"><span class="ico ico_file_non">파일없음</span></td>
							<td class="hidden-xs">관리자</td>
							<td class="hidden-xs">2018-08-10</td>
							<td class="hidden-xs hidden-sm">33</td>
						</tr>
						<!-- //Loop -->

					</tbody>
				</table>
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
			<div class="col-sm-12 text-right">
				<a href="?BoardMode=write" class="btn btn-primary">글쓰기</a>
			</div>
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