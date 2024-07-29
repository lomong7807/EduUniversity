<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!doctype html>
<html lang="ko" class="">
<head>
<meta charset="utf-8">
<title>BoardMng Page</title>
<%@ include file="layout/header.jsp"%>
</head>
<body class="admin">

	<!-- Admin Wrapper -->
	<div id="ubhome-wrapper">
		<!-- Sidebar Wrapper -->

		<div class="mask-win"></div>
		<!-- //Sidebar Wrapper -->

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
								<h3 class="text-info mt5">게시판 분류 관리</h3>
							</div>
						</div>
						<!-- //페이지 명 -->
						<!-- 목록 -->
						<form Method="Post" id="teacher_list" name="teacher_list">
							<input type="hidden" id="schIcon" name="schIcon" value="schIcon" /> <input type="hidden" id="sel" name="sel" />
							<fieldset>

								<!-- 총 게시물 수 -->
								<div class="pagetotal">
									검색 <strong class="text-primary">1</strong> 건
								</div>
								<!-- //총 게시물 수 -->

								<!-- 게시물 -->
								<table class="table text-center table-hover">
									<thead class="hidden-xs">
										<tr>
											<th scope="col" class="all-check">
												<label for="LCheckALL_List" class="checkbox-inline">
													<input type="checkbox" id="LCheckALL_List" name="LCheckALL_List" />
												</label>
											</th>
											<th scope="col" class="hidden-xs">No</th>
											<th scope="col" class="hidden-xs">이미지</th>
											<th scope="col" class="hidden-xs">게시판 명</th>
											<th scope="col" class="hidden-xs">게시판 아이디</th>
											<th scope="col" class="hidden-xs hidden-sm">생성일자</th>
											<th scope="col" class="hidden-xs">생성자</th>
											<th scope="col" class="hidden-xs">수정/삭제</th>
										</tr>
									</thead>
									<tbody>
										<!-- Loop -->
										<tr>
											<td class="check">
												<label for="LCheck_List03" class="checkbox-inline">
													<input value="03" type="checkbox" id="LCheck_List03" name="LCheck_List03" />
												</label>
											</td>
											<td class="hidden-xs num-webfont">
												2018
												<span class="hidden-sm hidden-md">-</span>
												<br class="hidden-lg" /> 10-27
											</td>
											<td class="hidden-xs hidden-sm">
												<img src="/common/css/img/picture-sample.png" class="img-responsive img-centered img-thumbnail" alt="thacher3" style="max-width: 100px;" />
											</td>
											<td class="xs-text-left">
												<span class="text-info mr5">
													thacher3
													<span class="hidden-md hidden-lg"> (남)</span>
												</span>
												<br class="hidden-xs" /> Liah (Liah T. Tucker)
												<div class="hidden-sm hidden-md hidden-lg">
													<ul class="list-icon mb5">
														<li><span class="text-info">등록날짜</span> : 2018 10-27</li>
														<li><span class="text-info">상태</span> : 가입</li>
														<li><span class="text-info">홈페이지 표시</span> : 표시</li>
														<li><span class="text-info">수업단가</span> : 10</li>
													</ul>
													<button type="button" class="btn btn-xs btn-black">
														<i class="fa fa-external-link" aria-hidden="true"></i> 수업
													</button>
													<a href="../teacher/teacher_write.php" class="btn btn-xs btn-info">수정</a>
													<button type="button" class="btn btn-xs btn-danger">삭제</button>
													<button type="button" class="btn btn-xs btn-outline" data-container="body" data-toggle="popover" data-placement="top" data-content="퀄리티가 높은 강사">
														<i class="fa fa-file-text-o" aria-hidden="true"></i>
													</button>
													<button type="button" class="btn btn-xs btn-outline" data-toggle="modal" data-target="#teacherHistoryModal">
														<i class="fa fa-clone" aria-hidden="true"></i>
													</button>
												</div>
											</td>
											<td class="hidden-xs">
												<button type="button" class="btn btn-xs btn-outline" data-container="body" data-toggle="popover" data-placement="top" data-content="퀄리티가 높은 강사">
													<i class="fa fa-file-text-o" aria-hidden="true"></i>
												</button>
											</td>
											<td class="hidden-xs">
												<button type="button" class="btn btn-xs btn-outline" data-toggle="modal" data-target="#teacherHistoryModal">
													<i class="fa fa-clone" aria-hidden="true"></i>
												</button>
											</td>
											<td class="hidden-xs">
												<button type="button" class="btn btn-xs btn-black">
													<i class="fa fa-external-link" aria-hidden="true"></i> 수업
												</button>
											</td>
											<td class="hidden-xs">
												<a href="../teacher/teacher_write.php" class="btn btn-xs btn-info">수정</a>
												<button type="button" class="btn btn-xs btn-danger">삭제</button>
											</td>
										</tr>
										<!-- //Loop -->

									</tbody>
								</table>
								<!-- //게시물 -->

								<!-- 버튼 -->
								<div class="row">
									<div class="col-sm-6 col-sm-offset-3">
										<!-- 페이징 -->
										<nav class="text-center">
											<ul class="pagination pagination-sm num-webfont">
												<li><a href="#" aria-label="Previous" title="처음">
														<span aria-hidden="true">
															<i class="fa fa-angle-double-left" aria-hidden="true"></i>
														</span>
													</a></li>
												<li><a href="#" aria-label="Previous" title="이전">
														<span aria-hidden="true">
															<i class="fa fa-angle-left" aria-hidden="true"></i>
														</span>
													</a></li>
												<li class="active"><a href="#">1</a></li>
												<li><a href="#">2</a></li>
												<li><a href="#">3</a></li>
												<li><a href="#">4</a></li>
												<li><a href="#">5</a></li>
												<li><a href="#" aria-label="Next" title="다음">
														<span aria-hidden="true">
															<i class="fa fa-angle-right" aria-hidden="true"></i>
														</span>
													</a></li>
												<li><a href="#" aria-label="Next" title="마지막">
														<span aria-hidden="true">
															<i class="fa fa-angle-double-right" aria-hidden="true"></i>
														</span>
													</a></li>
											</ul>
										</nav>
										<!-- //페이징 -->
									</div>
									<div class="col-sm-3 text-right xs-mt10">
										<a href="../teacher/teacher_write.php" class="btn btn-primary">등록</a>
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

	<!--  이력 모달 -->
	<div class="modal fade" id="teacherHistoryModal" tabindex="-1" role="dialog" aria-labelledby="teacherHistoryModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close" title="창닫기">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="teacherHistoryModalLabel">
						<strong> 이력</strong>
					</h4>
				</div>
				<div class="modal-body">
					<!-- 게시물 -->
					<table class="table text-center">
						<colgroup>
							<col style="width: 10%;" class="hidden-xs">
							<col style="width: 14%;" class="hidden-xs">
							<col>
						</colgroup>
						<thead>
							<tr>
								<th scope="col" class="hidden-xs">번호</th>
								<th scope="col" class="hidden-xs">날짜</th>
								<th scope="col">
									<span class="hidden-sm hidden-md hidden-lg">날짜/</span>
									이력
								</th>
							</tr>
						</thead>
						<tbody>
							<!-- Nothing Data -->

							<!-- Loop -->
							<tr>
								<td class="hidden-xs num-webfont">214</td>
								<td class="hidden-xs num-webfont">2018-10-27</td>
								<td class="text-left">
									<div class="text-info mb5 hidden-sm hidden-md hidden-lg num-webfont">2018-10-27</div>
									신 HSK 시험 대비반 및 구어 과정, 비즈니스 중국어 과정등을 기본 과정으로 하고 전문가 과정으로 통역병 과정, 한중 번역 과정, 기업 교육 과정등의 수업이 개설 되어 있습니다. 중국 문화 수업으로 고급 발음 수업, 서예 수업 , 수묵화 수업, 차(茶) 수업 등이 있습니다.
								</td>
							</tr>
							<!-- //Loop -->

							<!-- Loop -->
							<tr>
								<td class="hidden-xs num-webfont">213</td>
								<td class="hidden-xs num-webfont">2018-10-25</td>
								<td class="text-left">
									<div class="text-info mb5 hidden-sm hidden-md hidden-lg num-webfont">2018-10-25</div>
									중국 문화 수업으로 고급 발음 수업, 서예 수업 , 수묵화 수업, 차(茶) 수업 등이 있습니다. 신 HSK 시험 대비반 및 구어 과정, 비즈니스 중국어 과정등을 기본 과정으로 하고 전문가 과정으로 통역병 과정, 한중 번역 과정, 기업 교육 과정등의 수업이 개설 되어 있습니다.
								</td>
							</tr>
							<!-- //Loop -->
						</tbody>
					</table>
					<!-- //게시물 -->

					<!-- 페이징 -->
					<nav class="text-center">
						<ul class="pagination pagination-sm num-webfont">
							<li><a href="#" aria-label="Previous" title="처음">
									<span aria-hidden="true">
										<i class="fa fa-angle-double-left" aria-hidden="true"></i>
									</span>
								</a></li>
							<li><a href="#" aria-label="Previous" title="이전">
									<span aria-hidden="true">
										<i class="fa fa-angle-left" aria-hidden="true"></i>
									</span>
								</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#" aria-label="Next" title="다음">
									<span aria-hidden="true">
										<i class="fa fa-angle-right" aria-hidden="true"></i>
									</span>
								</a></li>
							<li><a href="#" aria-label="Next" title="마지막">
									<span aria-hidden="true">
										<i class="fa fa-angle-double-right" aria-hidden="true"></i>
									</span>
								</a></li>
						</ul>
					</nav>
					<!-- //페이징 -->
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">창닫기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- //이력 모달 -->
</body>
</html>