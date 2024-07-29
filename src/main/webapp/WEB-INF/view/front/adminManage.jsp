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
								<h3 class="text-info mt5">관리자 관리</h3>
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
												<div class="col-sm-3 text-left">
													<div class="mt5">
														<strong>Basic Data</strong>
													</div>
												</div>
												<div class="col-sm-9">
													<div class="row">
														<div class="col-sm-5">
															<select id="schStatus" name="schStatus"
																class="form-control">
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
									<form name="form" method="post" action="admin_proc.php">
										<input type="hidden" name="mode" value="delete">
										<div>
											<table class="table text-center table-hover">
												<thead>
													<tr class="headings">
														<th class="hidden-xs"><input type="checkbox"
															id="check-all" class="flat"></th>
														<th class="column-title hidden-xs">No.</th>
														<th class="column-title hidden-xs">아이디</th>
														<th class="column-title hidden-xs">성명</th>
														<th class="column-title hidden-xs">핸드폰</th>
														<th class="column-title hidden-xs">등급</th>
														<th class="column-title hidden-xs">언어</th>
														<th class="column-title hidden-xs">생성일시</th>
													</tr>
												</thead>
												<tbody>
													<tr class="odd pointer">
														<td><input type="checkbox" name="admin_seq[6]"
															value="6" class="flat"></td>
														<td class="hidden-xs"><strong>3</strong></td>
														<td class="hidden-xs"><a
															href="admin_edit.html?page=&amp;admin_seq=6"><strong>ycw7701</strong></a></td>
														<td class="hidden-xs"><a
															href="admin_edit.html?page=&amp;admin_seq=6"><strong>유창우</strong></a></td>
														<td class="hidden-xs">010-5474-2935</td>
														<td class="hidden-xs"><a
															href="admin_edit.html?page=&amp;admin_seq=6"><strong>일반관리자</strong></a></td>
														<td class="hidden-xs">한국어(KOR)</td>
														<td class="hidden-xs"><a
															href="admin_edit.html?page=&amp;admin_seq=6"><strong>2020-10-06
																	10:52:3</strong>2</a></td>

														<!-- 작은화면 목록 -->
														<td class="text-left hidden-sm hidden-md hidden-lg">
															<div class="hidden-sm hidden-md hidden-lg">
																<ul class="list-icon mb5">
																	<li><span class="text-info">아이디 </span> :ycw7701</li>
																	<li><span class="text-info">성명 </span> : 유창우</li>
																	<li><span class="text-info">등급 </span> : 일반관리자</li>
																	<li><span class="text-info">생성일시 </span> :
																		2020-10-06 10:52:32</li>
																	<a href="admin_edit.html?page=&amp;admin_seq=6"></a>
																	<!--<span class="text-info mr5">thacher2<span class="hidden-md hidden-lg"> (여)</span></span>-->
																</ul>
																<a href="admin_edit.html?page=&amp;admin_seq=6"></a>
															</div> <a href="admin_edit.html?page=&amp;admin_seq=6"></a>
														</td>
														<!--// 작은화면 목록 -->
													</tr>
													<tr class="odd pointer">
														<td><input type="checkbox" name="admin_seq[7]"
															value="4" class="flat"></td>
														<td class="hidden-xs"><strong>2</strong></td>
														<td class="hidden-xs"><strong>admin2</strong></td>
														<td class="hidden-xs"><strong>일반관리자</strong></td>
														<td class="hidden-xs"><strong>010-5474-2935</strong></td>
														<td class="hidden-xs"><strong>일반관리자</strong></td>
														<td class="hidden-xs"><strong>한국어(KOR)</strong></td>
														<td class="hidden-xs"><strong>2018-10-24
																14:05:16</strong></td>
														<!-- 작은화면 목록 -->
														<td class="text-left hidden-sm hidden-md hidden-lg">
															<div class="hidden-sm hidden-md hidden-lg">
																<ul class="list-icon mb5">
																	<li><span class="text-info">아이디 </span> : admin2</li>
																	<li><span class="text-info">성명 </span> : 일반관리자</li>
																	<li><span class="text-info">등급 </span> :일반관리자</li>
																	<li><span class="text-info">생성일시 </span>
																		:2018-10-24 14:05:16</li>
																</ul>
															</div>
														</td>
														<!--// 작은화면 목록 -->
													</tr>
												</tbody>
											</table>
										</div>
										<div class="row" style="text-align: center;">
											<!--페이징-->
											<nav class="text-center">
												<ul class="pagination pagination-sm num-webfont">
													<li><a href="#" aria-label="First Page"
														title="First Page" onclick="javascript:goPage('1');">
															<span aria-hidden="true"><i
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
												onclick="javascript:location.href='admin_edit.html?page=';"><i
												class="fa fa-pencil"></i> Write </a>

										</div>
									</form>
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