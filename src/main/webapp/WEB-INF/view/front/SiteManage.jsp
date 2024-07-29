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
<style>
select {
	width: 100%;
	height: 100%;
	padding: 0 28px 0 10px;
	font-size: 15px;
	border: 0; // 기본 스타일 제거 -webkit-appearance : none; /* for chrome */
	-moz-appearance: none; /*for firefox*/
	appearance: none;
	box-sizing: border-box;
	//
	select
	박스의
	크기
	방식
	지정.
	background
	:
	transparent;
	//
	배경색
	투명
	처리
}

select::-ms-expand {
	display: none; /*for IE10,11*/
}

.select-wrap {
	height: 34px;
}
</style>
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
								<h3 class="text-info mt5">사이트메뉴관리</h3>
							</div>
						</div>
						<!-- //페이지 명 -->
						<!-- 목록 -->
						<div>
							<form Method="Post" id="teacher_list" name="teacher_list">
								<input type="hidden" id="schIcon" name="schIcon" value="schIcon" />
								<input type="hidden" id="sel" name="sel" />
								<fieldset>
									<div class="panel panel-default text-center">
										<div class="panel-body">
											<div class="row mt10 mb10">
												<div
													class="col-sm-3 text-left mt5 hidden-xs hidden-sm hidden-md">
													<strong>Company</strong>
												</div>
												<div class="col-sm-9">
													<div class="row">
														<div class="col-sm-5">
															<select id="schDisplayYN" name="schDisplayYN"
																class="form-control pointer">
																<option>본사 / admin</option>
																<option value="Y">본사1 / admin1</option>
																<option value="N">본사2 / admin2</option>
															</select>
														</div>
													</div>
												</div>
											</div>

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
												<thead>
													<tr class="headings">
														<th><input type="checkbox" id="check-all"
															class="flat"></th>
														<th class="column-title">No.</th>
														<th class="column-title">메뉴명</th>
														<th class="column-title">메뉴단계</th>
														<th class="column-title">정렬번호</th>
														<th class="column-title">하위메뉴</th>

													</tr>
												</thead>

												<tbody>
													<tr class="odd pointer">
														<td class="hidden-xs"><input type="checkbox"
															name="menu_seq[6]" value="1768" class="flat"></td>
														<td><strong>2</strong></td>
														<td class=""><strong>IV 동영상</strong></td>
														<td class=""><strong>대메뉴</strong></td>
														<td class=""><strong>4</strong></td>
														<td><a href="sitemenu_list2.html?p_menu_seq=1768"
															class="btn btn-mini btn-info"><i
																class="fa fa-folder-open"></i> 하위메뉴 (0)</a></td>

													</tr>


													<tr class="odd pointer">
														<td class="hidden-xs"><input type="checkbox"
															name="menu_seq[7]" value="1772" class="flat"></td>
														<td><strong></strong>1</td>
														<td class=""><strong>V 회의실</strong></td>
														<td class=""><strong>대메뉴</strong></td>
														<td class=""><strong>5</strong></td>
														<td><a href="sitemenu_list2.html?p_menu_seq=1772"
															class="btn btn-mini btn-info"><i
																class="fa fa-folder-open"></i> 하위메뉴 (1)</a></td>

													</tr>
												</tbody>
											</table>


											<!-- 작은화면 -->
											<div class="hidden-lg hidden-md hidden-sm">
												<div class="col-xs-12 mb10 p10"
													style="border-top: 1px solid #ddd; border-bottom: 1px solid #ddd;">
													<div class="col-xs-2 mt50">
														<input type="checkbox" id="check-all" class="flat">
													</div>
													<ul class="p0 col-xs-5 pointer">
														<li class="column-title">메뉴명 :</li>
														<li class="column-title">메뉴단계 :</li>
														<li class="column-title">정렬번호 :</li>
													</ul>
													<ul class="p0 odd pointer col-xs-5 text-left pointer">
														<li class="">회사</li>
														<li class="">대메뉴</li>
														<li class="">0</li>
														<li><a href="companymenu_list2.html?p_menu_seq=1767"
															class="btn btn-mini btn-info"><i
																class="fa fa-folder-open"></i> 하위메뉴 (3)</a></li>
													</ul>
												</div>


												<div class="col-xs-12 mb10 p10"
													style="border-top: 1px solid #ddd; border-bottom: 1px solid #ddd;">
													<div class="col-xs-2 mt50">
														<input type="checkbox" id="check-all" class="flat">
													</div>
													<ul class="p0 col-xs-5 pointer">
														<li class="column-title">메뉴명 :</li>
														<li class="column-title">메뉴단계 :</li>
														<li class="column-title">정렬번호 :</li>
													</ul>
													<ul class="p0 odd pointer col-xs-5 text-left">
														<li class="">I 클래스</li>
														<li class="">대메뉴</li>
														<li class="">1</li>
														<li><a href="companymenu_list2.html?p_menu_seq=1779"
															class="btn btn-mini btn-info"><i
																class="fa fa-folder-open"></i> 하위메뉴 (1)</a></li>
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