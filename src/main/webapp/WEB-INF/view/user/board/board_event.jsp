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
			<!-- 사이드 -->
			<%@ include file="../layout/boardSidebar.jsp"%>
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
								<li><a href="./"><i class="glyphicon glyphicon-home"></i> 홈</a></li>
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
							<div class="col-xs-12 text-right mb10">
								<ul class="pagination pagination-md">
									<li><a href="#" aria-label="Previous" title="이전"> <span aria-hidden="true"><i class="fa fa-angle-left" aria-hidden="true"></i></span>
									</a></li>
									<li><a href="#"><strong class="num-webfont control-label">2024-07</strong></a></li>
									<li><a href="#" aria-label="Next" title="다음"> <span aria-hidden="true"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
									</a></li>
								</ul>
							</div>
						</div>
					</nav>
					<!-- //페이징 -->

					<!-- 이달의 등록된 행사 -->
					<div class="row portfolio">
						<!-- Loop -->
						<div class="col-xs-6 col-sm-4 col-lg-4 ">
							<a href="?BoardMode=view" class="thumbnail event">
								<div class="caption text-center mb0">
									<div class=" text-overflow">
										<strong>창립 10주년 행사</strong>
									</div>
									<div class="mt5 text-muted">
										<strong>07.12</strong> <span class="label label-xs label-warning ml5">행사</span>
									</div>
								</div> <img src="/img/user/sample05.jpg" class="img-responsive" alt="" />
							</a>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="col-xs-6 col-sm-4 col-lg-4">
							<a href="?BoardMode=view" class="thumbnail event">
								<div class="caption text-center mb0">
									<div class=" text-overflow">
										<strong>하계 공동학술대회 개최</strong>
									</div>
									<div class="mt5 text-muted">
										<strong>07.18</strong> <span class="label label-xs label-success ml5">축제</span>
									</div>
								</div> <img src="/img/user/sample06.jpg" class="img-responsive" alt="" />
							</a>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="col-xs-6 col-sm-4 col-lg-4">
							<a href="?BoardMode=view" class="thumbnail event">
								<div class="caption text-center mb0">
									<div class=" text-overflow">
										<strong>2024년 채용트랜드 특강</strong>
									</div>
									<div class="mt5 text-muted">
										<strong>07.28</strong> <span class="label label-xs label-primary ml5">알림</span>
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
								<col style="width: 14%;">
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
									<td class="text-primary"><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">1</em>
									</a></td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr class="text-left">
									<td class="text-danger"><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">2</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">3</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">4</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">5</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">6</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">7</em>
									</a></td>
									<td class="text-primary"><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">8</em>
									</a></td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr class="text-left">
									<td class="text-danger"><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">9</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">10</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">11</em>
									</a></td>
									<!-- 등록된 행사 예 -->
									<td class="event"><a href="?BoardMode=view&amp;BoardID=calendar" class="area"> <em class="num-webfont">12</em> <span class="label label-xs label-warning">행사</span>
											<div>창립 10주년 행사</div>
									</a></td>
									<!-- //등록된 행사 예 -->
									<td><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">13</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">14</em>
									</a></td>
									<td class="text-primary"><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">15</em>
									</a></td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr class="text-left">
									<td class="text-danger"><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">16</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">17</em>
									</a></td>
									<!-- 등록된 축제 예 -->
									<td class="event"><a href="?BoardMode=view&amp;BoardID=calendar" class="area"> <em class="num-webfont">18</em> <span class="label label-xs label-success">축제</span>
											<div>하계 공동학술대회 개최</div>
									</a></td>
									<!-- //등록된 축제 예 -->
									<td><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">19</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">20</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">21</em>
									</a></td>
									<td class="text-primary"><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">22</em>
									</a></td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr class="text-left">
									<td class="text-danger"><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">23</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">24</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">25</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">26</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">27</em>
									</a></td>
									<!-- 등록된 알림 예 -->
									<td class="event"><a href="?BoardMode=view&amp;BoardID=calendar" class="area"> <em class="num-webfont">28</em> <span class="label label-xs label-primary">알림</span>
											<div>2024년 채용트랜드 특강</div>
									</a></td>
									<!-- //등록된 알림 예 -->
									<td class="text-primary"><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">29</em>
									</a></td>
								</tr>
								<!-- //Loop -->

								<!-- Loop -->
								<tr class="text-left">
									<td class="text-danger"><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">30</em>
									</a></td>
									<td><a href="?BoardMode=write&amp;BoardID=calendar" class="area"> <em class="num-webfont">31</em>
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
							<a href="?BoardMode=write&amp;BoardID=calendar" class="btn btn-primary">행사등록</a>
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
	<%@ include file="../layout/footer1.jsp"%>
</body>
</html>