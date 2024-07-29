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
							<h2>이사회 일정</h2>
						</div>
						<div class="col-md-7 text-right">
							<ol class="breadcrumb hidden-xs">
								<li><a href="./"><i class="glyphicon glyphicon-home"></i> 홈</a></li>
								<li>이사회</li>
								<li class="active">이사회일정</li>
							</ol>
						</div>
					</div>
				</div>
				<div id="customer_container">
					<!-- 콘텐츠 샘플 -->
					<!-- 콘텐츠7 -->
					<div class="section">
						<!-- 페이징 -->
						<div class="text-center">
							<nav aria-label="Page navigation">
								<ul class="pagination pagination-lg">
									<li><a href="#" aria-label="Previous" title="이전"> <span aria-hidden="true"><i class="fa fa-angle-left" aria-hidden="true"></i></span>
									</a></li>
									<li><a href="#"><strong class=" control-label">2024년 7월</strong></a></li>
									<li><a href="#" aria-label="Next" title="다음"> <span aria-hidden="true"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
									</a></li>
								</ul>
							</nav>
						</div>
						<!-- //페이징 -->
						<!-- 종류 -->
						<div class="text-right mb5 mr5">
							<span class="badg mr5">행사</span><span class="badg1">일정</span>
						</div>

						<!-- 달력 -->
						<div class="table-calendar">
							<table class="table table-bordered table-fixed text-center">
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
									<tr class="text-left">
										<!-- 1일부터 7일 (한 주) -->
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 -->
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 -->
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 -->
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 -->
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 -->
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 -->
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">1</em></a>
										</td>
									</tr>
									<tr class="text-left">
										<!-- 1일부터 7일 (한 주) -->
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">2</em></a>
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">3</em></a>
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">4</em></a>
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">5</em></a>
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">6</em></a>
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">7</em></a>
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">8</em></a>
										</td>
									</tr>
									<tr class="text-left">
										<!-- 1일부터 7일 (한 주) -->
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">9</em></a>
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">10</em></a>
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">11</em></a>
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">12</em></a>
										</td>
										<td class="text-dark event">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="#" class="area "><em class="numeng">13</em> <span class="badg">행사</span>
												<div class="d-none d-md-block ">
													<strong>제352차 이사회</strong>
												</div> </a>
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">14</em></a>
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">15</em></a>
										</td>
									</tr>
									<tr class="text-left">
										<!-- 1일부터 7일 (한 주) -->
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">16</em></a>
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">17</em></a>
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">18</em></a>
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">19</em></a>
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">20</em></a>
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">21</em></a>
										</td>
										<td class="text-dark event">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">20</em> <span class="badg1">일정</span>
												<div class="d-none d-md-block ">
													<strong>학사일정</strong>
												</div> </a>
										</td>
									</tr>
									<tr class="text-left">
										<!-- 1일부터 7일 (한 주) -->
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">23</em></a>
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">24</em></a>
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">25</em></a>
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">26</em></a>
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">27</em></a>
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">28</em></a>
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">29</em></a>
										</td>
									</tr>
									<tr class="text-left">
										<!-- 1일부터 7일 (한 주) -->
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 --> <!-- 현재 날짜를 보여주고 1씩 더해줌 --> <a href="javascript:void(0);" class="area"><em class="numeng">30</em></a>
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 -->
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 -->
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 -->
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 -->
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 -->
										</td>
										<td class="text-dark">
											<!-- 시작 요일부터 마지막 날짜까지만 날짜를 보여주도록 -->
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- //달력 -->
						<div>
							<p class=" text-right">
								<i class="fa fa-info-circle" aria-hidden="true"></i> 상기 일정은 사정에 따라 변경 될 수 있습니다.
							</p>
						</div>
					</div>
					<hr />
					<!-- //콘텐츠7 -->
					<!-- //콘텐츠 샘플 -->
				</div>
			</div>
			<!-- //콘텐츠 -->
		</div>
	</div>
	<!-- //콘테이너 -->
	<%@ include file="../layout/footer1.jsp"%>
</body>
</html>