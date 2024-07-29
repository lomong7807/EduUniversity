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
								<h3 class="text-info mt5">관리자메뉴관리</h3>
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
									<div class="panel panel-default text-center">
										<div class="panel-body">
											<div class="row mt10 mb10">
												<div
													class="col-sm-3 text-left mt5 hidden-xs hidden-sm hidden-md">
													<strong>Basic Data</strong>
												</div>
												<div class="col-sm-9">
													<div class="row">
														<div class="col-sm-5">
															<select id="schStatus" name="schStatus"
																class="form-control pointer">
																<option value="T">메뉴명</option>
																<option value="">메뉴명1</option>
															</select>
														</div>
														<div class="col-sm-5">
															<input type="text" class="form-control" name="keyword"
																value="" placeholder="Keyword">
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
									<div name="form" method="post" action="menu_proc.php">
										<input type="hidden" name="mode" value="delete">
										<div>
											<table class="table text-center hidden-xs">
												<thead class="">
													<tr class="headings">
														<th><input type="checkbox" id="check-all"
															class="flat"></th>
														<th class="column-title">No.</th>
														<th class="column-title">메뉴명</th>
														<th class="column-title">메뉴단계</th>
														<th class="column-title">정렬번호</th>
														<th class="column-title">접근레벨</th>
														<th class="column-title">하위메뉴</th>
													</tr>
												</thead>

												<tbody>
													<tr class="odd pointer">
														<td><input type="checkbox" name="menu_seq[17]"
															value="128" class="flat"></td>
														<td>2</td>
														<td><strong>컨퍼런스 관리</strong></td>
														<td><strong>대메뉴</strong></td>
														<td><strong>15</strong></td>
														<td><strong>일반관리자</strong></td>
														<td><a href="menu_list2.html?p_menu_seq=128"
															class="btn btn-mini btn-info"><i
																class="fa fa-folder-open"></i> 하위메뉴 (3)</a></td>
													</tr>

													<tr class="odd pointer">
														<td><input type="checkbox" name="menu_seq[18]"
															value="157" class="flat"></td>
														<td>1</td>
														<td><strong>문제은행</strong></td>
														<td><strong>대메뉴</strong></td>
														<td><strong>16</strong></td>
														<td><strong>시스템관리자</strong></td>
														<td><a href="menu_list2.html?p_menu_seq=157"
															class="btn btn-mini btn-info"><i
																class="fa fa-folder-open"></i> 하위메뉴 (3)</a></td>
													</tr>
												</tbody>
											</table>
											<!-- 작은화면 -->
											<div class="hidden-lg hidden-md hidden-sm">
												<div class="row m10"
													style="border-bottom: 1px solid #ddd; padding: 10px; border-top: 1px solid #ddd">
													<div class="col-xs-2 mt50">
														<input type="checkbox" name="menu_seq[1]" value="2"
															class="flat">
													</div>
													<ul class="col-xs-9 list-icon pointer">
														<li>메뉴명 : 회원관리</li>
														<li>대메뉴</li>
														<li>1</li>
														<li>시스템관리자</li>
														<li><a href="menu_edit.html?page=&amp;menu_seq=2"></a><a
															href="menu_list2.html?p_menu_seq=2"
															class="btn btn-mini btn-info"><i
																class="fa fa-folder-open"></i> 하위메뉴 (9)</a></li>
													</ul>
												</div>



												<div class="row m10"
													style="border-bottom: 1px solid #ddd; padding: 10px; border-top: 1px solid #ddd">
													<div class="col-xs-2 mt50">
														<input type="checkbox" name="menu_seq[2]" value="3"
															class="flat">
													</div>
													<ul class="col-xs-9 list-icon pointer">
														<li>메뉴명 : 강사관리</li>
														<li>대메뉴</li>
														<li>2</li>
														<li>시스템관리자</a></li>
														<li><a href="menu_edit.html?page=&amp;menu_seq=3"></a><a
															href="menu_list2.html?p_menu_seq=3"
															class="btn btn-mini btn-info"><i
																class="fa fa-folder-open"></i> 하위메뉴 (6)</a></li>
													</ul>
												</div>
											</div>
										</div>

										<!-- 작은화면 -->
									</div>
									<div class="row" style="text-align: center;">
										<!--페이징-->
										<nav class="text-center">
											<ul class="pagination pagination-sm num-webfont">

												<li><a href="#" aria-label="First Page"
													title="First Page" onclick="javascript:goPage('1');"> <span
														aria-hidden="true"><i
															class="fa fa-angle-double-left" aria-hidden="true"></i></span>
												</a></li>

												<li><a href="#" aria-label="Previous"
													title="Previous Page" onclick="javascript:goPage('1');">
														<span aria-hidden="true"><i
															class="fa fa-angle-left" aria-hidden="true"></i></span>
												</a></li>
												<li class="active"><a href="#"
													onclick="javascript:goPage('1');">1</a></li>
												<li><a href="#" aria-label="Next" title="Next Page"
													onclick="javascript:goPage('1');"> <span
														aria-hidden="true"><i class="fa fa-angle-right"
															aria-hidden="true"></i></span>
												</a></li>

												<li><a href="#" aria-label="Next" title="Next Page"
													onclick="javascript:goPage('1');"> <span
														aria-hidden="true"><i
															class="fa fa-angle-double-right" aria-hidden="true"></i></span>
												</a></li>

											</ul>
										</nav>
										<!--페이징-->
									</div>

									<div class="row pull-right">
										<a href="#" class="btn btn-mini btn-default"
											onclick="javascript:if(confirm('해당 항목들을 정말 삭제하시겠습니까?')) document.form.submit();"><i
											class="fa fa-trash"></i> Check Delete </a> <a href="#"
											class="btn btn-mini btn-primary"
											onclick="javascript:location.href='menu_edit.html?page=';"><i
											class="fa fa-pencil"></i> Write </a>

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
</script>
</html>