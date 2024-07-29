<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
<title>이사회</title>
</head>
<body>
	<!-- 콘테이너 -->
	<%@ include file="../layout/header1.jsp"%>
	<div class="sub_visual bg-thema1"></div>
	<div class="container">
		<div class="row">
			<%@ include file="../layout/boardSidebar.jsp"%>

			<!-- 콘텐츠 -->
			<div id="container" class="col-md-9">
				<div class="page-header">
					<div class="row">
						<div class="col-md-5 pl10">
							<h2>학교소개</h2>
						</div>
						<div class="col-md-7 text-right">
							<ol class="breadcrumb hidden-xs">
								<li><a href="./"><i class="glyphicon glyphicon-home"></i> 홈</a></li>
								<li>학교소개</li>
								<li class="active">학교소개</li>
							</ol>
						</div>
					</div>
				</div>

				<div id="customer_container">
					<!-- 콘텐츠 샘플 -->
					<!-- 콘텐츠1 -->
					<div class="section">
						<div class="text-justify">
							<div class="row">
								<div class="col-md-6 col-lg-4 pr20 pl20 pb10">
									<img src="/img/user/jungui.jpg" class="img-responsive1" alt="소개" />
								</div>
								<div class="col-md-6 col-lg-8">
									<div class="ml-md-6">
										<h2 class="font-size-16 font-size-18-sm font-size-20-lg text-primary font-weight-bold ls5 mb-3 lh26 lh28-lg">학교법인 정의학원을 방문해 주신 여러분을 진심으로 환영합니다.</h2>
										<p class="font-size-13 font-size-14-lg text-justify">학교법인 정의학원은 대한민국 교육의 근본이념과 대한예수교장로회총회의 성경적 신앙에 입각한 기독교 정신으로 기독교 지도자와 국가사회의 지도자를 양성하기 위하여 학령 전 아동교육, 초등 ․ 고등교육을 실시함을 목적으로 설립되었으며,
											설치학교로는 서울여자대학교, 화랑초등학교, 서울여자대학교 부속유치원이 있다.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="mb-3 text-right">
						<a href="#" class="btn-outline-custom" role="button"><i class="fa fa-external-link-square" aria-hidden="true"></i> 홈페이지 바로가기 </a>
					</div>
					<hr />
					<!-- //콘텐츠1 -->
					<!-- 콘텐츠2 -->
					<div class="section">
						<!-- 찾아오시는길 -->
						<!-- Google Map API : Start -->
						<script src="http://maps.google.com/maps/api/js?v=3&amp;sensor=false&amp;language=ko"></script>
						<script>
							//<![CDATA[
							$(document)
									.ready(
											function() {
												var geocoder = new google.maps.Geocoder();
												geocoder
														.geocode(
																{
																	'address' : '서울특별시 종로구 청진동 128',
																	'partialmatch' : true
																},
																function(
																		results,
																		status) {
																	if (status == 'OK'
																			&& results.length > 0) {
																		var myOptions = {
																			zoom : 18,
																			center : results[0].geometry.location,
																			mapTypeControl : true,
																			mapTypeControlOptions : {
																				style : google.maps.MapTypeControlStyle.DROPDOWN_MENU
																			},
																			navigationControl : true,
																			navigationControlOptions : {
																				style : google.maps.NavigationControlStyle.SMALL
																			},
																			mapTypeId : google.maps.MapTypeId.ROADMAP
																		};
																		var map = new google.maps.Map(
																				document
																						.getElementById("map_canvas"),
																				myOptions);
																		var image = 'img/map.png';
																		var marker = new google.maps.Marker(
																				{
																					map : map,
																					position : results[0].geometry.location,
																					icon : image
																				});

																	} else {
																		//alert("오류 발생 : " + status);
																		// alert("주소에 해당하는 지점을 찾을 수 없습니다.");
																		// history.go(-1);
																	}
																});
											});
							//]]>
						</script>
						<!-- Google Map API : End -->
						<div class="row">
							<div class="col-xs-12">
								<h3 class="mb10 text-info">위치 정보</h3>
								<div class="map_canvas">
									<div class="frame" id="map_canvas">
										<img src="/img/user/makemarker.png" class="img-responsive1">
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<h3 class="mb10 text-info">학교 정보</h3>
								<div class="table-responsive">
									<table class="table table-bordered text-center table-condensed" summary="사무국 정보 입니다. 단체명,대표전화,소재지">
										<caption class="sr-only">사무국 정보</caption>
										<colgroup>
											<col style="width: 17%;">
											<col style="width: 33%;">
											<col style="width: 17%;">
											<col style="width: 33%;">
										</colgroup>
										<tbody>
											<tr>
												<td scope="row" class="active"><span class="text-info">주소</span></td>
												<td colspan="3" class="text-left">서울특별시</td>
											</tr>
											<tr>
												<td scope="row" class="active"><span class="text-info">이메일</span></td>
												<td class="text-left">email@email.com</td>
												<td scope="row" class="active"><span class="text-info">대표전화</span></td>
												<td class="text-left">02-11234-5678</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!-- //콘텐츠2 -->
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