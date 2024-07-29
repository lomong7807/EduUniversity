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
								<h3 class="text-info mt5">접속통계</h3>
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
									<div class="panel panel-default text-center"style="border-radius: 10px; box-shadow: 3px 3px 10px -7px;">
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
										Total: <strong id="totalRecords" class="text-primary">2</strong>
										count
									</div>
									<!-- //총 게시물 수 -->
									<!-- 게시물 -->

									<div class="input-group mt10">
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
										<table class="table  text-center" id="yoil">
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