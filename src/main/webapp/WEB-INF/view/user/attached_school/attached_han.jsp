<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
<title>설치학교</title>
</head>
<body>
	<%@ include file="../layout/header1.jsp"%>
	<div class="sub_visual bg-thema1"></div>
	<!-- 콘테이너 -->
	<div class="container">
		<div class="row">
			<!-- 사이드 -->
			<div id="sidebar" class="col-md-3">
				<div class="sidebar_wrap">
					<h2 class="page-label labels">
						<strong>설치학교</strong> <span class="pull-right clickable hidden-md hidden-lg"><i class="fa fa-chevron-up"></i></span>
					</h2>
					<ul id="sidebar_navi" class="list-group">
						<li class="list-group-item"><a href="javascript:void(0);" class="accordion-toggle"><span>부속학교들</span></a>
							<ul class="list-group collapse" style="height: 0px;">
								<li class=""><a href="../attached_school/attached_swschool.html" class="">서울여자대학교</a></li>
								<li class=""><a href="../attached_school/attached_hwa.html" class="">화랑초등학교</a></li>
								<li class=""><a href="../attached_school/attached_swschool.html" class="">서울여자대학교부속유치원</a></li>
								<li class=""><a href="../attached_school/attached_han.html" class="">한샘여자중학교</a></li>
							</ul></li>
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
							<h2>부속학교들</h2>
						</div>
						<div class="col-md-7 text-right">
							<ol class="breadcrumb hidden-xs">
								<li><a href="../index.html"><i class="glyphicon glyphicon-home"></i> 홈</a></li>
								<li>설치학교</li>
								<li class="active">부속학교들</li>
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
								<div class="col-md-6 col-lg-4">
									<img src="/img/user/jungui.jpg" class="img-responsive1" alt="소개" />
								</div>
								<div class="col-md-6 col-lg-8">
									<h3 class="text-primary">서울여자대학교를 방문해 주신 여러분을 진심으로 환영합니다.</h3>
									<p>학교법인 정의학원은 대한민국 교육의 근본이념과 대한예수교장로회총회의 성경적 신앙에 입각한 기독교 정신으로 기독교 지도자와 국가사회의 지도자를 양성하기 위하여 학령 전 아동교육, 초등 ․ 고등교육을 실시함을 목적으로 설립되었으며, 설치학교로는 서울여자대학교, 화랑초등학교, 서울여자대학교 부속유치원이 있다.</p>
								</div>
							</div>
						</div>
						<div class="mb-3 text-right">
							<a href="#" class="btn-outline-custom" role="button">서울여자대학교 바로가기 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-link-45deg"
									viewBox="0 0 16 16">
                          <path
										d="M4.715 6.542 3.343 7.914a3 3 0 1 0 4.243 4.243l1.828-1.829A3 3 0 0 0 8.586 5.5L8 6.086a1 1 0 0 0-.154.199 2 2 0 0 1 .861 3.337L6.88 11.45a2 2 0 1 1-2.83-2.83l.793-.792a4 4 0 0 1-.128-1.287z"></path>
                          <path d="M6.586 4.672A3 3 0 0 0 7.414 9.5l.775-.776a2 2 0 0 1-.896-3.346L9.12 3.55a2 2 0 1 1 2.83 2.83l-.793.792c.112.42.155.855.128 1.287l1.372-1.372a3 3 0 1 0-4.243-4.243z"></path>
                        </svg>
							</a>
						</div>
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
									<div class="frame" id="map_canvas"></div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<h3 class="mb10 text-info">정의학원 정보</h3>
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