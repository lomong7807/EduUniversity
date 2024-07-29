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
						<div class="col-md-5 pl10">
							<h2>창립임원</h2>
						</div>
						<div class="col-md-7 text-right">
							<ol class="breadcrumb hidden-xs">
								<li><a href="./"><i class="glyphicon glyphicon-home"></i> 홈</a></li>
								<li>이사회</li>
								<li class="active">창립임원</li>
							</ol>
						</div>
					</div>
				</div>

				<div id="customer_container">
					<!-- 콘텐츠 샘플 -->
					<!-- 콘텐츠3 -->
					<div class="section">
						<div class="row">
							<div class="col-sm-6">
								<div class="row">
									<div class="col-xs-12">
										<h5 class="text-primary">
											<i class="fa fa-asterisk" aria-hidden="true"></i> 이사장
										</h5>
										<div class="table-responsive">
											<table class="table table-bordered text-center table-condensed" summary="이사장 목록 입니다. 이름,소속">
												<caption class="sr-only">이사장 목록</caption>
												<colgroup>
													<col style="width: 20%;">
													<col style="width: 80%;">
												</colgroup>
												<tbody>
													<tr>
														<td class="active"><strong>전필순</strong></td>
														<td class="text-left">이사장</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<h5 class="text-primary">
											<i class="fa fa-asterisk" aria-hidden="true"></i> 이사
										</h5>
										<div class="table-responsive">
											<table class="table table-bordered text-center table-condensed" summary="이사 목록 입니다. 이름,소속">
												<caption class="sr-only">
													<i class="fa fa-asterisk" aria-hidden="true"></i> 이사 목록
												</caption>
												<colgroup>
													<col style="width: 20%;">
													<col style="width: 80%;">
												</colgroup>
												<tbody>
													<tr>
														<td class="active"><strong>김석만</strong></td>
														<td class="text-left">한국예술종합학교 연극원 교수</td>
													</tr>
													<tr>
														<td class="active"><strong>김기춘</strong></td>
														<td class="text-left">아리랑국제방송 방송본부장</td>
													</tr>
													<tr>
														<td class="active"><strong>김귀옥</strong></td>
														<td class="text-left">한성대 교수</td>
													</tr>
													<tr>
														<td class="active"><strong>김영동</strong></td>
														<td class="text-left">서울예술대학교 음악학부 교수</td>
													</tr>
													<tr>
														<td class="active"><strong>박미선</strong></td>
														<td class="text-left">서울대병원 임상영양계장</td>
													</tr>
													<tr>
														<td class="active"><strong>박영숙</strong></td>
														<td class="text-left">유엔 미래포럼 대표</td>
													</tr>


												</tbody>
											</table>
										</div>
									</div>
								</div>

							</div>
							<div class="col-sm-6">
								<div class="row">
									<div class="col-xs-12">
										<h5 class="text-primary">
											<i class="fa fa-asterisk" aria-hidden="true"></i> 감사
										</h5>
										<div class="table-responsive">
											<table class="table table-bordered text-center table-condensed" summary="감사 목록 입니다. 이름,소속">
												<caption class="sr-only">감사 목록</caption>
												<colgroup>
													<col style="width: 20%;">
													<col style="width: 80%;">
												</colgroup>
												<tbody>
													<tr>
														<td class="active"><strong>권근술</strong></td>
														<td class="text-left">웹에이젼시 이사장</td>
													</tr>
													<tr>
														<td class="active"><strong>조 형</strong></td>
														<td class="text-left">미래포럼 대표</td>
													</tr>
													<tr>
														<td class="active"><strong>정명훈</strong></td>
														<td class="text-left">서울시립교향악단 예술감독 겸 상임지휘자</td>
													</tr>
													<tr>
														<td class="active"><strong>문성근</strong></td>
														<td class="text-left">영화배우</td>
													</tr>
													<tr>
														<td class="active"><strong>문진수</strong></td>
														<td class="text-left">서울의대 교수</td>
													</tr>
													<tr>
														<td class="active"><strong>박노황</strong></td>
														<td class="text-left">연합뉴스 대표이사 사장</td>
													</tr>
													<tr>
														<td class="active"><strong>박미선</strong></td>
														<td class="text-left">서울대병원 임상영양계장</td>
													</tr>
													<tr>
														<td class="active"><strong>박영숙</strong></td>
														<td class="text-left">유엔 미래포럼 대표</td>
													</tr>
													<tr>
														<td class="active"><strong>박미선</strong></td>
														<td class="text-left">서울대병원 임상영양계장</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<hr />
					<!-- //콘텐츠3 -->
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