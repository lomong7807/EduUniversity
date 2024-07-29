<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<!--[if lt IE 7 ]><html lang="ko" class="ie6"><![endif]-->
<!--[if IE 7 ]>   <html lang="ko" class="ie7"><![endif]-->
<!--[if IE 8 ]>   <html lang="ko" class="ie8"><![endif]-->
<!--[if IE 9 ]>   <html lang="ko" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="ko" class="">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<title>ComnCdMng</title>
<%@ include file="layout/header.jsp"%>


</head>
<body class="admin">
	<!-- Admin Wrapper -->
	<div id="ubhome-wrapper">
		<!-- Page Content -->
		<div id="content-wrapper">
			<!-- Main Content -->
			<div class="main-content">
				<!-- 콘테이너 -->
				<div id="container">
					<div class="dashboard">
						<!-- 페이지 명 -->
						<div class="row form-inline mb10">
							<div class="col-sm-6">
								<h3 class="text-info mt5">회원가입통계</h3>
							</div>
						</div>
						<!-- //페이지 명 -->
						<!-- 목록 -->
						<div>
							<form Method="Post" id="teacher_list" name="teacher_list">
								<input type="hidden" id="schIcon" name="schIcon" value="schIcon" />
								<input type="hidden" id="sel" name="sel" />
								<fieldset>

									<!-- 목록 검색 -->
									<div class="panel panel-default text-center"
										style="border-radius: 10px; box-shadow: 3px 3px 10px -7px;">
										<div class="panel-body">
											<div class="row">
												<div
													class="col-sm-3 text-left mt5 hidden-xs hidden-sm hidden-md">
													<strong>Basic Data</strong>
												</div>
												<div class="col-sm-9">
													<div class="row">
														<div class="col-sm-5">
															<input type="date" id="sday" name="sday"
																class="form-control pointer">
														</div>
														<div class="col-sm-5">
															<input type="date" id="sday" name="sday"
																class="form-control pointer">
														</div>
														<div class="col-sm-2">
															<button type="button" class="btn btn-block btn-default"
																onclick="javascript:searchKey();">
																<i class="fa fa-search"></i> Search
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- //목록 검색 -->

									<!-- 총 게시물 수 -->
									<div class="pagetotal">
										Total: <strong class="text-primary">3</strong> count
									</div>
									<!-- //총 게시물 수 -->
									<!-- 게시물 -->
									<div class="row">
										<div id="hbC3Zoom" class="c3"
											style="max-height: 335px; position: relative; overflow-x:scroll">
											<svg width="1275" height="300" style="overflow: hidden;">
												<defs>
												<clipPath id="c3-1720743890037-clip">
												<rect width="1253" height="266"></rect></clipPath>
												<clipPath id="c3-1720743890037-clip-xaxis">
												<rect x="-31" y="-20" width="1315" height="50"></rect></clipPath>
												<clipPath id="c3-1720743890037-clip-yaxis">
												<rect x="-29" y="-4" width="40" height="290"></rect></clipPath>
												<clipPath id="c3-1720743890037-clip-grid">
												<rect width="1253" height="266"></rect></clipPath>
												<clipPath id="c3-1720743890037-clip-subchart">
												<rect width="1253"></rect></clipPath></defs>
												<g transform="translate(20.5,4.5)">
												<text class="c3-text c3-empty" text-anchor="middle"
													dominant-baseline="middle" x="626.5" y="133"
													style="opacity: 0;"></text>
												<rect class="c3-zoom-rect" width="1253" height="266"
													style="opacity: 0;"></rect>
												<g
													clip-path="url(https://www.bzip.kr/_admin/stat/join_stat.html#c3-1720743890037-clip)"
													class="c3-regions" style="visibility: visible;"></g>
												<g
													clip-path="url(https://www.bzip.kr/_admin/stat/join_stat.html#c3-1720743890037-clip-grid)"
													class="c3-grid" style="visibility: visible;">
												<g class="c3-xgrid-focus">
												<line class="c3-xgrid-focus" x1="627" x2="627" y1="0"
													y2="266" style="visibility: hidden;"></line></g></g>
												<g
													clip-path="url(https://www.bzip.kr/_admin/stat/join_stat.html#c3-1720743890037-clip)"
													class="c3-chart">
												<g class="c3-event-rects c3-event-rects-single"
													style="fill-opacity: 0;">
												<rect class=" c3-event-rect c3-event-rect-0" x="6.5" y="0"
													width="27" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-1" x="33.5" y="0"
													width="41" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-2" x="74.5" y="0"
													width="41" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-3" x="115.5" y="0"
													width="41" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-4" x="156.5" y="0"
													width="41" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-5" x="197.5" y="0"
													width="40.5" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-6" x="238" y="0"
													width="40.5" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-7" x="278.5" y="0"
													width="41" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-8" x="319.5" y="0"
													width="41" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-9" x="360.5" y="0"
													width="41" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-10" x="401.5"
													y="0" width="41" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-11" x="442.5"
													y="0" width="41" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-12" x="483.5"
													y="0" width="41" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-13" x="524.5"
													y="0" width="41" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-14" x="565.5"
													y="0" width="41" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-15" x="606.5"
													y="0" width="41" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-16" x="647.5"
													y="0" width="41" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-17" x="688.5"
													y="0" width="41" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-18" x="729.5"
													y="0" width="41" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-19" x="770.5"
													y="0" width="41" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-20" x="811.5"
													y="0" width="41" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-21" x="852.5"
													y="0" width="41" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-22" x="893.5"
													y="0" width="41" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-23" x="934.5"
													y="0" width="41" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-24" x="975.5"
													y="0" width="40.5" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-25" x="1016" y="0"
													width="40.5" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-26" x="1056.5"
													y="0" width="41" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-27" x="1097.5"
													y="0" width="41" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-28" x="1138.5"
													y="0" width="41" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-29" x="1179.5"
													y="0" width="41" height="266"></rect>
												<rect class=" c3-event-rect c3-event-rect-30" x="1220.5"
													y="0" width="26.5" height="266"></rect></g>
												<g class="c3-chart-bars">
												<g class="c3-chart-bar c3-target c3-target-join"
													style="opacity: 1; pointer-events: none;">
												<g class=" c3-shapes c3-shapes-join c3-bars c3-bars-join"
													style="cursor: pointer;"></g></g></g>
												<g class="c3-chart-lines">
												<g class="c3-chart-line c3-target c3-target-join"
													style="opacity: 1; pointer-events: none;">
												<g class=" c3-shapes c3-shapes-join c3-lines c3-lines-join">
												<path class=" c3-shape c3-shape c3-line c3-line-join"
													d="M13,266L54,266L95,266L136,266L177,266L218,266L258,266L299,266L340,266L381,266L422,266L463,266L504,266L545,266L586,266L627,266L668,266L709,266L750,266L791,266L832,266L873,266L914,266L955,266L996,266L1036,266L1077,266L1118,266L1159,266L1200,266L1241,266"
													style="stroke: rgb(255, 115, 128); opacity: 1;"></path></g>
												<g class=" c3-shapes c3-shapes-join c3-areas c3-areas-join">
												<path class=" c3-shape c3-shape c3-area c3-area-join"
													d="M 13 266"
													style="fill: rgb(255, 115, 128); opacity: 0.2;"></path></g>
												<g class=" c3-selected-circles c3-selected-circles-join"></g>
												<g
													class=" c3-shapes c3-shapes-join c3-circles c3-circles-join"
													style="cursor: pointer;">
												<circle class=" c3-shape c3-shape-0 c3-circle c3-circle-0"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="13" cy="266"></circle>
												<circle class=" c3-shape c3-shape-1 c3-circle c3-circle-1"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="54" cy="266"></circle>
												<circle class=" c3-shape c3-shape-2 c3-circle c3-circle-2"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="95" cy="266"></circle>
												<circle class=" c3-shape c3-shape-3 c3-circle c3-circle-3"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="136" cy="266"></circle>
												<circle class=" c3-shape c3-shape-4 c3-circle c3-circle-4"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="177" cy="266"></circle>
												<circle class=" c3-shape c3-shape-5 c3-circle c3-circle-5"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="218" cy="266"></circle>
												<circle class=" c3-shape c3-shape-6 c3-circle c3-circle-6"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="258" cy="266"></circle>
												<circle class=" c3-shape c3-shape-7 c3-circle c3-circle-7"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="299" cy="266"></circle>
												<circle class=" c3-shape c3-shape-8 c3-circle c3-circle-8"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="340" cy="266"></circle>
												<circle class=" c3-shape c3-shape-9 c3-circle c3-circle-9"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="381" cy="266"></circle>
												<circle class=" c3-shape c3-shape-10 c3-circle c3-circle-10"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="422" cy="266"></circle>
												<circle class="c3-shape c3-shape-11 c3-circle c3-circle-11"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="463" cy="266"></circle>
												<circle class="c3-shape c3-shape-12 c3-circle c3-circle-12"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="504" cy="266"></circle>
												<circle class="c3-shape c3-shape-13 c3-circle c3-circle-13"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="545" cy="266"></circle>
												<circle class="c3-shape c3-shape-14 c3-circle c3-circle-14"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="586" cy="266"></circle>
												<circle class="c3-shape c3-shape-15 c3-circle c3-circle-15"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="627" cy="266"></circle>
												<circle class=" c3-shape c3-shape-16 c3-circle c3-circle-16"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="668" cy="266"></circle>
												<circle class=" c3-shape c3-shape-17 c3-circle c3-circle-17"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="709" cy="266"></circle>
												<circle class=" c3-shape c3-shape-18 c3-circle c3-circle-18"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="750" cy="266"></circle>
												<circle class=" c3-shape c3-shape-19 c3-circle c3-circle-19"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="791" cy="266"></circle>
												<circle class=" c3-shape c3-shape-20 c3-circle c3-circle-20"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="832" cy="266"></circle>
												<circle class=" c3-shape c3-shape-21 c3-circle c3-circle-21"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="873" cy="266"></circle>
												<circle class=" c3-shape c3-shape-22 c3-circle c3-circle-22"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="914" cy="266"></circle>
												<circle class=" c3-shape c3-shape-23 c3-circle c3-circle-23"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="955" cy="266"></circle>
												<circle class=" c3-shape c3-shape-24 c3-circle c3-circle-24"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="996" cy="266"></circle>
												<circle class=" c3-shape c3-shape-25 c3-circle c3-circle-25"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="1036" cy="266"></circle>
												<circle class=" c3-shape c3-shape-26 c3-circle c3-circle-26"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="1077" cy="266"></circle>
												<circle class=" c3-shape c3-shape-27 c3-circle c3-circle-27"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="1118" cy="266"></circle>
												<circle class=" c3-shape c3-shape-28 c3-circle c3-circle-28"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="1159" cy="266"></circle>
												<circle class=" c3-shape c3-shape-29 c3-circle c3-circle-29"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="1200" cy="266"></circle>
												<circle class=" c3-shape c3-shape-30 c3-circle c3-circle-30"
													r="2.5" style="fill: rgb(255, 115, 128); opacity: 1;"
													cx="1241" cy="266"></circle></g></g></g>
												<g class="c3-chart-arcs" transform="translate(626.5,128)">
												<text class="c3-chart-arcs-title"
													style="text-anchor: middle; opacity: 0;"></text></g>
												<g class="c3-chart-texts">
												<g class="c3-chart-text c3-target c3-target-join"
													style="opacity: 1; pointer-events: none;">
												<g class=" c3-texts c3-texts-join"></g></g></g></g>
												<g
													clip-path="url(https://www.bzip.kr/_admin/stat/join_stat.html#c3-1720743890037-clip-grid)"
													class="c3-grid c3-grid-lines">
												<g class="c3-xgrid-lines"></g>
												<g class="c3-ygrid-lines"></g></g>
												<g class="c3-axis c3-axis-x"
													clip-path="url(https://www.bzip.kr/_admin/stat/join_stat.html#c3-1720743890037-clip-xaxis)"
													transform="translate(0,266)"
													style="visibility: visible; opacity: 1;">
												<text class="c3-axis-x-label" transform=""
													style="text-anchor: end;" x="1253" dx="-0.5em" dy="-0.5em">일별</text>
												<g class="tick" transform="translate(13, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: block;">
												<tspan x="0" dy=".71em" dx="0">1</tspan></text></g>
												<g class="tick" transform="translate(54, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">2</tspan></text></g>
												<g class="tick" transform="translate(95, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">3</tspan></text></g>
												<g class="tick" transform="translate(136, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">4</tspan></text></g>
												<g class="tick" transform="translate(177, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: block;">
												<tspan x="0" dy=".71em" dx="0">5</tspan></text></g>
												<g class="tick" transform="translate(218, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">6</tspan></text></g>
												<g class="tick" transform="translate(258, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">7</tspan></text></g>
												<g class="tick" transform="translate(299, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">8</tspan></text></g>
												<g class="tick" transform="translate(340, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: block;">
												<tspan x="0" dy=".71em" dx="0">9</tspan></text></g>
												<g class="tick" transform="translate(381, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">10</tspan></text></g>
												<g class="tick" transform="translate(422, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">11</tspan></text></g>
												<g class="tick" transform="translate(463, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">12</tspan></text></g>
												<g class="tick" transform="translate(504, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: block;">
												<tspan x="0" dy=".71em" dx="0">13</tspan></text></g>
												<g class="tick" transform="translate(545, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">14</tspan></text></g>
												<g class="tick" transform="translate(586, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">15</tspan></text></g>
												<g class="tick" transform="translate(627, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">16</tspan></text></g>
												<g class="tick" transform="translate(668, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: block;">
												<tspan x="0" dy=".71em" dx="0">17</tspan></text></g>
												<g class="tick" transform="translate(709, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">18</tspan></text></g>
												<g class="tick" transform="translate(750, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">19</tspan></text></g>
												<g class="tick" transform="translate(791, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">20</tspan></text></g>
												<g class="tick" transform="translate(832, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: block;">
												<tspan x="0" dy=".71em" dx="0">21</tspan></text></g>
												<g class="tick" transform="translate(873, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">22</tspan></text></g>
												<g class="tick" transform="translate(914, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">23</tspan></text></g>
												<g class="tick" transform="translate(955, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">24</tspan></text></g>
												<g class="tick" transform="translate(996, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: block;">
												<tspan x="0" dy=".71em" dx="0">25</tspan></text></g>
												<g class="tick" transform="translate(1036, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">26</tspan></text></g>
												<g class="tick" transform="translate(1077, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">27</tspan></text></g>
												<g class="tick" transform="translate(1118, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">28</tspan></text></g>
												<g class="tick" transform="translate(1159, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: block;">
												<tspan x="0" dy=".71em" dx="0">29</tspan></text></g>
												<g class="tick" transform="translate(1200, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">30</tspan></text></g>
												<g class="tick" transform="translate(1241, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">31</tspan></text></g>
												<path class="domain" d="M0,6V0H1253V6"></path></g>
												<g class="c3-axis c3-axis-y"
													clip-path="url(https://www.bzip.kr/_admin/stat/join_stat.html#c3-1720743890037-clip-yaxis)"
													transform="translate(0,0)"
													style="visibility: visible; opacity: 1;">
												<text class="c3-axis-y-label" transform="rotate(-90)"
													style="text-anchor: end;" x="0" dx="-0.5em" dy="1.2em">가입수</text>
												<path class="domain" d="M-6,1H0V266H-6"></path></g>
												<g class="c3-axis c3-axis-y2" transform="translate(1253,0)"
													style="visibility: hidden; opacity: 1;">
												<text class="c3-axis-y2-label" transform="rotate(-90)"
													style="text-anchor: end;" x="0" dx="-0.5em" dy="-0.5em"></text>
												<g class="tick" transform="translate(0,266)"
													style="opacity: 1;">
												<line x2="6" y2="0"></line>
												<text x="9" y="0" style="text-anchor: start;">
												<tspan x="9" dy="3">0</tspan></text></g>
												<g class="tick" transform="translate(0,240)"
													style="opacity: 1;">
												<line x2="6" y2="0"></line>
												<text x="9" y="0" style="text-anchor: start;">
												<tspan x="9" dy="3">0.1</tspan></text></g>
												<g class="tick" transform="translate(0,213)"
													style="opacity: 1;">
												<line x2="6" y2="0"></line>
												<text x="9" y="0" style="text-anchor: start;">
												<tspan x="9" dy="3">0.2</tspan></text></g>
												<g class="tick" transform="translate(0,187)"
													style="opacity: 1;">
												<line x2="6" y2="0"></line>
												<text x="9" y="0" style="text-anchor: start;">
												<tspan x="9" dy="3">0.3</tspan></text></g>
												<g class="tick" transform="translate(0,160)"
													style="opacity: 1;">
												<line x2="6" y2="0"></line>
												<text x="9" y="0" style="text-anchor: start;">
												<tspan x="9" dy="3">0.4</tspan></text></g>
												<g class="tick" transform="translate(0,134)"
													style="opacity: 1;">
												<line x2="6" y2="0"></line>
												<text x="9" y="0" style="text-anchor: start;">
												<tspan x="9" dy="3">0.5</tspan></text></g>
												<g class="tick" transform="translate(0,107)"
													style="opacity: 1;">
												<line x2="6" y2="0"></line>
												<text x="9" y="0" style="text-anchor: start;">
												<tspan x="9" dy="3">0.6</tspan></text></g>
												<g class="tick" transform="translate(0,81)"
													style="opacity: 1;">
												<line x2="6" y2="0"></line>
												<text x="9" y="0" style="text-anchor: start;">
												<tspan x="9" dy="3">0.7</tspan></text></g>
												<g class="tick" transform="translate(0,54)"
													style="opacity: 1;">
												<line x2="6" y2="0"></line>
												<text x="9" y="0" style="text-anchor: start;">
												<tspan x="9" dy="3">0.8</tspan></text></g>
												<g class="tick" transform="translate(0,28)"
													style="opacity: 1;">
												<line x2="6" y2="0"></line>
												<text x="9" y="0" style="text-anchor: start;">
												<tspan x="9" dy="3">0.9</tspan></text></g>
												<g class="tick" transform="translate(0,1)"
													style="opacity: 1;">
												<line x2="6" y2="0"></line>
												<text x="9" y="0" style="text-anchor: start;">
												<tspan x="9" dy="3">1</tspan></text></g>
												<path class="domain" d="M6,1H0V266H6"></path></g></g>
												<g transform="translate(20.5,300.5)"
													style="visibility: hidden;">
												<g
													clip-path="url(https://www.bzip.kr/_admin/stat/join_stat.html#c3-1720743890037-clip-subchart)"
													class="c3-chart">
												<g class="c3-chart-bars"></g>
												<g class="c3-chart-lines"></g></g>
												<g
													clip-path="url(https://www.bzip.kr/_admin/stat/join_stat.html#c3-1720743890037-clip)"
													class="c3-brush"
													style="pointer-events: all; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
												<rect class="background" x="0" width="741"
													style="visibility: hidden; cursor: crosshair;"></rect>
												<rect class="extent" x="0" width="0" style="cursor: move;"></rect>
												<g class="resize e" transform="translate(0,0)"
													style="cursor: ew-resize; display: none;">
												<rect x="-3" width="6" height="6"
													style="visibility: hidden;"></rect></g>
												<g class="resize w" transform="translate(0,0)"
													style="cursor: ew-resize; display: none;">
												<rect x="-3" width="6" height="6"
													style="visibility: hidden;"></rect></g></g>
												<g class="c3-axis-x" transform="translate(0,0)"
													clip-path="url(https://www.bzip.kr/_admin/stat/join_stat.html#c3-1720743890037-clip-xaxis)"
													style="visibility: hidden; opacity: 1;">
												<g class="tick" transform="translate(13, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: block;">
												<tspan x="0" dy=".71em" dx="0">1</tspan></text></g>
												<g class="tick" transform="translate(54, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">2</tspan></text></g>
												<g class="tick" transform="translate(95, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">3</tspan></text></g>
												<g class="tick" transform="translate(136, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">4</tspan></text></g>
												<g class="tick" transform="translate(177, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: block;">
												<tspan x="0" dy=".71em" dx="0">5</tspan></text></g>
												<g class="tick" transform="translate(218, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">6</tspan></text></g>
												<g class="tick" transform="translate(258, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">7</tspan></text></g>
												<g class="tick" transform="translate(299, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">8</tspan></text></g>
												<g class="tick" transform="translate(340, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: block;">
												<tspan x="0" dy=".71em" dx="0">9</tspan></text></g>
												<g class="tick" transform="translate(381, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">10</tspan></text></g>
												<g class="tick" transform="translate(422, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">11</tspan></text></g>
												<g class="tick" transform="translate(463, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">12</tspan></text></g>
												<g class="tick" transform="translate(504, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: block;">
												<tspan x="0" dy=".71em" dx="0">13</tspan></text></g>
												<g class="tick" transform="translate(545, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">14</tspan></text></g>
												<g class="tick" transform="translate(586, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">15</tspan></text></g>
												<g class="tick" transform="translate(627, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">16</tspan></text></g>
												<g class="tick" transform="translate(668, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: block;">
												<tspan x="0" dy=".71em" dx="0">17</tspan></text></g>
												<g class="tick" transform="translate(709, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">18</tspan></text></g>
												<g class="tick" transform="translate(750, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">19</tspan></text></g>
												<g class="tick" transform="translate(791, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">20</tspan></text></g>
												<g class="tick" transform="translate(832, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: block;">
												<tspan x="0" dy=".71em" dx="0">21</tspan></text></g>
												<g class="tick" transform="translate(873, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">22</tspan></text></g>
												<g class="tick" transform="translate(914, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">23</tspan></text></g>
												<g class="tick" transform="translate(955, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">24</tspan></text></g>
												<g class="tick" transform="translate(996, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: block;">
												<tspan x="0" dy=".71em" dx="0">25</tspan></text></g>
												<g class="tick" transform="translate(1036, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">26</tspan></text></g>
												<g class="tick" transform="translate(1077, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">27</tspan></text></g>
												<g class="tick" transform="translate(1118, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">28</tspan></text></g>
												<g class="tick" transform="translate(1159, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: block;">
												<tspan x="0" dy=".71em" dx="0">29</tspan></text></g>
												<g class="tick" transform="translate(1200, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">30</tspan></text></g>
												<g class="tick" transform="translate(1241, 0)"
													style="opacity: 1;">
												<line y2="6" x1="0" x2="0"></line>
												<text y="9" x="0" transform=""
													style="text-anchor: middle; display: none;">
												<tspan x="0" dy=".71em" dx="0">31</tspan></text></g>
												<path class="domain" d="M0,6V0H1253V6"></path></g></g>
												<g transform="translate(0,300)" style="visibility: hidden;"></g>
												<text class="c3-title" x="637.5" y="0"></text></svg>
											<div class="c3-tooltip-container"
												style="position: absolute; pointer-events: none; display: none; top: 64.3125px; left: 690.9px;">
												<table class="c3-tooltip">
													<tbody>
														<tr>
															<th colspan="2">16</th>
														</tr>
														<tr class="c3-tooltip-name--join">
															<td class="name"><span
																style="background-color: #ff7380"></span>join</td>
															<td class="value">0</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>

									<div class="input-group mt20">
										<span class="input-group-btn tabs-nav">
											<button type="button" class="btn btn-warning" id="btn1">
												<i class="fa fa-search"></i> 일간통계
											</button>
											<button type="button" class="btn btn-default" id="btn2">
												<i class="fa fa-search"></i> 월간통계
											</button>
											<button type="button" class="btn btn-default" id="btn3">
												<i class="fa fa-search"></i> 년간통계
											</button>
											<button type="button" class="btn btn-default" id="btn4">
												<i class="fa fa-search"></i> 요일별통계
											</button>
											<button type="button" class="btn btn-default" id="btn5">
												<i class="fa fa-search"></i> 시간별통계
											</button>
											<button type="button" class="btn btn-default" id="btn6">
												<i class="fa fa-search"></i> IP별통계
											</button>
										</span>
									</div>

									<div class="row">
										<div class="col-md-11"></div>
										<div class="col-md-1 m-mt10">
											<b>총 : 71,583 건 접속 </b>
										</div>
									</div>

									<div>
										<table class="table  text-center" id="d">
											<thead>
												<tr class="headings">
													<th class="column-title" width="100">년월</th>
													<th class="column-title" width="100">접속수</th>
													<th class="column-title" width="100">비율</th>
													<th class="column-title">그래프</th>
												</tr>
											</thead>

											<tbody>
												<tr class=" pointer">
													<td>2024-05</td>
													<td><b>4756</b></td>
													<td>6.64%</td>
													<td align="left">
														<div class="progress">
															<div class="progress-bar bg-blue" role="progressbar"
																aria-valuenow="7" aria-valuemin="0" aria-valuemax="100"
																style="width: 7%; height: 20px;">
																<span class="sr-only">7% </span>
															</div>
														</div>
													</td>
												</tr>
												<tr class=" pointer primary">
													<td><label class="label label-primary">합계</label></td>
													<td>71,583</td>
													<td>100%</td>
													<td align="left">
														<div class="progress">
															<div class="progress-bar bg-blue" role="progressbar"
																aria-valuenow="100" aria-valuemin="0"
																aria-valuemax="100" style="width: 100%; height: 20px;">
																<span class="sr-only">100% </span>
															</div>
														</div>
													</td>
												</tr>


												<!-- 아이피별 통계 -->
											</tbody>
										</table>
										<table class="table  text-center" id="m">
											<thead>

												<tr class="headings">
													<th class="column-title" width="100">년월</th>
													<th class="column-title" width="100">접속수</th>
													<th class="column-title" width="100">비율</th>
													<th class="column-title">그래프</th>
												</tr>
											</thead>

											<tbody>
												<tr class=" pointer">
													<td>2024-06</td>
													<td><b>66827</b></td>
													<td>93.36%</td>
													<td align="left">
														<div class="progress">
															<div class="progress-bar bg-blue" role="progressbar"
																aria-valuenow="100" aria-valuemin="0"
																aria-valuemax="100" style="width: 100%; height: 20px;">
																<span class="sr-only">100% </span>
															</div>
														</div>
													</td>
												</tr>
												<tr class=" pointer primary">
													<td><label class="label label-primary">합계</label></td>
													<td>71,583</td>
													<td>100%</td>
													<td align="left">
														<div class="progress">
															<div class="progress-bar bg-blue" role="progressbar"
																aria-valuenow="100" aria-valuemin="0"
																aria-valuemax="100" style="width: 100%; height: 20px;">
																<span class="sr-only">100% </span>
															</div>
														</div>
													</td>
												</tr>

											</tbody>
										</table>
										<table class="table  text-center" id="y">
											<thead>

												<tr class="headings">
													<th class="column-title" width="100">년월</th>
													<th class="column-title" width="100">접속수</th>
													<th class="column-title" width="100">비율</th>
													<th class="column-title">그래프</th>
												</tr>
											</thead>

											<tbody>
												<tr class=" pointer">
													<td>2024-06</td>
													<td><b>66827</b></td>
													<td>93.36%</td>
													<td align="left">
														<div class="progress">
															<div class="progress-bar bg-blue" role="progressbar"
																aria-valuenow="100" aria-valuemin="0"
																aria-valuemax="100" style="width: 100%; height: 20px;">
																<span class="sr-only">100% </span>
															</div>
														</div>
													</td>
												</tr>
												<tr class=" pointer primary">
													<td><label class="label label-primary">합계</label></td>
													<td>71,583</td>
													<td>100%</td>
													<td align="left">
														<div class="progress">
															<div class="progress-bar bg-blue" role="progressbar"
																aria-valuenow="100" aria-valuemin="0"
																aria-valuemax="100" style="width: 100%; height: 20px;">
																<span class="sr-only">100% </span>
															</div>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
										<table class="table  text-center" id="yoil">
											<thead>

												<!-- 일별 통계 -->
												<!-- 일별 통계 -->

												<!-- 월별 통계 -->
												<tr class="headings">
													<th class="column-title" width="100">년월</th>
													<th class="column-title" width="100">접속수</th>
													<th class="column-title" width="100">비율</th>
													<th class="column-title">그래프</th>
												</tr>
											</thead>

											<tbody>
												<tr class=" pointer">
													<td>2024-05</td>
													<td><b>4756</b></td>
													<td>6.64%</td>
													<td align="left">
														<div class="progress">
															<div class="progress-bar bg-blue" role="progressbar"
																aria-valuenow="7" aria-valuemin="0" aria-valuemax="100"
																style="width: 7%; height: 20px;">
																<span class="sr-only">7% </span>
															</div>
														</div>
													</td>
												</tr>
												<tr class=" pointer primary">
													<td><label class="label label-primary">합계</label></td>
													<td>71,583</td>
													<td>100%</td>
													<td align="left">
														<div class="progress">
															<div class="progress-bar bg-blue" role="progressbar"
																aria-valuenow="100" aria-valuemin="0"
																aria-valuemax="100" style="width: 100%; height: 20px;">
																<span class="sr-only">100% </span>
															</div>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
										<table class="table  text-center" id="h">
											<thead>
												<tr class="headings">
													<th class="column-title" width="100">년월</th>
													<th class="column-title" width="100">접속수</th>
													<th class="column-title" width="100">비율</th>
													<th class="column-title">그래프</th>
												</tr>
											</thead>

											<tbody>
												<tr class=" pointer">
													<td>2024-05</td>
													<td><b>4756</b></td>
													<td>6.64%</td>
													<td align="left">
														<div class="progress">
															<div class="progress-bar bg-blue" role="progressbar"
																aria-valuenow="7" aria-valuemin="0" aria-valuemax="100"
																style="width: 7%; height: 20px;">
																<span class="sr-only">7% </span>
															</div>
														</div>
													</td>
												</tr>
												<tr class=" pointer primary">
													<td><label class="label label-primary">합계</label></td>
													<td>71,583</td>
													<td>100%</td>
													<td align="left">
														<div class="progress">
															<div class="progress-bar bg-blue" role="progressbar"
																aria-valuenow="100" aria-valuemin="0"
																aria-valuemax="100" style="width: 100%; height: 20px;">
																<span class="sr-only">100% </span>
															</div>
														</div>
													</td>
												</tr>


												<!-- 아이피별 통계 -->
											</tbody>
										</table>
										<table class="table  text-center" id="ip">
											<thead>
												<tr class="headings">
													<th class="column-title" width="100">년월</th>
													<th class="column-title" width="100">접속수</th>
													<th class="column-title" width="100">비율</th>
													<th class="column-title">그래프</th>
												</tr>
											</thead>

											<tbody>
												<tr class=" pointer">
													<td>2024-05</td>
													<td><b>4756</b></td>
													<td>6.64%</td>
													<td align="left">
														<div class="progress">
															<div class="progress-bar bg-blue" role="progressbar"
																aria-valuenow="7" aria-valuemin="0" aria-valuemax="100"
																style="width: 7%; height: 20px;">
																<span class="sr-only">7% </span>
															</div>
														</div>
													</td>
												</tr>
												<tr class=" pointer primary">
													<td><label class="label label-primary">합계</label></td>
													<td>71,583</td>
													<td>100%</td>
													<td align="left">
														<div class="progress">
															<div class="progress-bar bg-blue" role="progressbar"
																aria-valuenow="100" aria-valuemin="0"
																aria-valuemax="100" style="width: 100%; height: 20px;">
																<span class="sr-only">100% </span>
															</div>
														</div>
													</td>
												</tr>


												<!-- 아이피별 통계 -->
											</tbody>
										</table>
									</div>
									<!-- //게시물 -->
								</fieldset>
							</form>
						</div>
						<!-- //목록 -->
					</div>
				</div>
				<!-- //콘테이너 -->
			</div>
			<!-- //Main Content -->
		</div>
		<!-- //Page Content -->
	</div>
	<!-- //Admin Wrapper -->
</body>

<script>
function searchKey(){
	console.log('aa');
	let inputArr = $('.panel-body').find('input, select');
	console.log(inputArr);
	let arr = ['common_cd', 'cd_value'];
	let formData = new FormData();
	arr.forEach((e,idx) => {
		formData.append(e, inputArr[idx].value);
		//formData.append(idx);
	})
	console.log(formData.get('common_cd'));
	console.log(formData.get('common_value'));
}


})
</script>
</html>