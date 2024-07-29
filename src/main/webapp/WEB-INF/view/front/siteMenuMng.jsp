<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<title>SiteMenuMng</title>
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
								<h3 class="text-info mt5">사이트 메뉴 관리</h3>
							</div>
						</div>
						<!-- //페이지 명 -->
						<!-- 목록 -->
						<form Method="Post" id="teacher_list" name="teacher_list">
							<input type="hidden" id="schIcon" name="schIcon" value="schIcon" /> <input type="hidden" id="sel" name="sel" />
							<fieldset>
								<!-- 목록 검색 -->
								<div class="panel panel-default text-center">
									<div class="panel-body">
										<div class="row">
											<div class="col-md-12 ">
												<div class="row mb10">
													<div class="col-sd-6 col-md-3 text-left hidden-xs hidden-sm hidden-md">
														<div class="mt5">Basic Data</div>
													</div>
													<div class="col-sd-6 col-md-3">
														<select name="key" class="form-control"><option value="code_type">코드종류</option>
															<option value="title">코드내용</option></select>
													</div>

													<div class="col-sd-6 col-md-3">
														<input type="text" class="form-control" name="keyword" value="" placeholder="Keyword">
													</div>
													<div class="col-sd-6 col-md-3">
														<button type="button" class="btn btn-block btn-default" onclick="javascript:searchKey();">
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
								<table class="table text-center table-hover">
									<thead class="hidden-xs">
										<tr class="headings">
											<th class="hidden-xs"><input type="checkbox" id="check-all" class="flat"></th>
											<th class="column-title hidden-xs">No.</th>
											<th class="column-title hidden-xs">코드종류</th>
											<th class="column-title hidden-xs">코드값</th>
											<th class="column-title hidden-xs">제목</th>
										</tr>
									</thead>
									<tbody>
										<!-- Loop -->
										<tr class="odd pointer">
											<td><input type="checkbox" name="code_seq[0]" value="154" class="flat"></td>
											<td class="hidden-xs">172</td>
											<td class="hidden-xs"><a href="code_manager_edit.html?page=1&amp;code_seq=154">ACADEMY_LEVEL</a></td>
											<td class="hidden-xs"><a href="code_manager_edit.html?page=1&amp;code_seq=154">non</a></td>
											<td class="hidden-xs"><a href="code_manager_edit.html?page=1&amp;code_seq=154">비회원</a></td>
											<!-- 작은화면 목록 -->
											<td class="text-left hidden-sm hidden-md hidden-lg">
												<div class="hidden-sm hidden-md hidden-lg">
													<ul class="list-icon mb5">
														<li><span class="text-info">코드종류 </span> : <a href="code_manager_edit.html?page=1&amp;code_seq=154">ACADEMY_LEVEL</a></li>
														<li><a href="code_manager_edit.html?page=1&amp;code_seq=154"><span class="text-info">코드값 </span> : </a><a href="code_manager_edit.html?page=1&amp;code_seq=154">non</a></li>
														<li><a href="code_manager_edit.html?page=1&amp;code_seq=154"><span class="text-info">제목 </span> : </a><a href="code_manager_edit.html?page=1&amp;code_seq=154">비회원</a></li>
														<a href="code_manager_edit.html?page=1&amp;code_seq=154"> <!--<span class="text-info mr5">thacher2<span class="hidden-md hidden-lg"> (여)</span></span>-->
														</a>
													</ul>
													<a href="code_manager_edit.html?page=1&amp;code_seq=154"> </a>
												</div> <a href="code_manager_edit.html?page=1&amp;code_seq=154"> </a>
											</td>
											<!--// 작은화면 목록 -->
										</tr>
										<!-- /Loop -->
									</tbody>
								</table>
								<!-- //게시물 -->
								<!-- 버튼 -->
								<div class="row">
									<div class="col-sm-6 col-sm-offset-3">
										<!-- 페이징 -->
										<nav class="text-center">
											<ul class="pagination pagination-sm num-webfont">
												<li><a href="#" aria-label="Previous" title="처음"> <span aria-hidden="true"><i class="fa fa-angle-double-left" aria-hidden="true"></i></span>
												</a></li>
												<li><a href="#" aria-label="Previous" title="이전"> <span aria-hidden="true"><i class="fa fa-angle-left" aria-hidden="true"></i></span>
												</a></li>
												<li class="active"><a href="#">1</a></li>
												<li><a href="#">2</a></li>
												<li><a href="#">3</a></li>
												<li><a href="#">4</a></li>
												<li><a href="#">5</a></li>
												<li><a href="#" aria-label="Next" title="다음"> <span aria-hidden="true"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
												</a></li>
												<li><a href="#" aria-label="Next" title="마지막"> <span aria-hidden="true"><i class="fa fa-angle-double-right" aria-hidden="true"></i></span>
												</a></li>
											</ul>
										</nav>
										<!-- //페이징 -->
									</div>
									<div class="col-sm-3 text-right xs-mt10">
										<a href="/admin/siteMenuRegister" class="btn btn-primary">메뉴 등록</a>
									</div>
								</div>
								<!-- //버튼 -->
							</fieldset>
						</form>
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