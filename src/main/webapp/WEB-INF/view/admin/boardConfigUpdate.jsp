<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>게시판 등록</title>
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
							<div class="col-xs-6">
								<h3 class="text-info mt5">게시판 등록</h3>
							</div>
						</div>
						<div class="row form-inline">
							<div class="col-xs-6"></div>
							<div class="col-xs-6 text-right">
								<i class="fa fa-star text-danger nano-small" aria-hidden="true"></i> 필수항목
							</div>
						</div>
						<!-- //페이지 명 -->

						<!-- 게시판 정보 -->
						<form class="form-horizontal" method="post" action="">
							<input type="hidden" value="${config.config_seq }">
							<fieldset>
								<div class="well wh-bg" style="border-radius: 10px; box-shadow: 3px 3px 10px -7px; background: f1fbf;">
									<div class="form-group">
										<label for="t_MemGrade" class="col-sm-2 control-label xs-mt10"> <i class="fa fa-star text-danger nano-small" aria-hidden="true"></i> 게시판 명
										</label>
										<div class="col-sm-4">
											<input name="company_name" class="form-control" value=${config.board_name } />
										</div>
									</div>
									<div class="form-group">
										<label for="t_MemID" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> 목록글 개수
										</label>
										<div class="col-sm-4">
											<input name="ceo_name" class="form-control" value="${config.list_num }" />
										</div>
										<label for="t_MemName" class="col-sm-2 control-label xs-mt10"> <i class="text-danger nano-small" aria-hidden="true"></i> 목록 제목 길이
										</label>
										<div class="col-sm-4">
											<input name="business_no" class="form-control" value="${config.title_length }" />
										</div>
									</div>


									<div class="form-group">
										<label for="t_UnitCost" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> 보기권한
										</label>
										<div class="col-sm-4">
											<select id="schConvert" name="schConvert" class="form-control input-sm form-control-inline">
												<option value="1" ${config.view_level eq 1 ? 'selected' : '' }>권한1</option>
												<option value="2" ${config.view_level eq 1 ? 'selected' : '' }>권한2</option>
											</select>
										</div>
										<label for="t_UnitCost" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> 쓰기권한
										</label>
										<div class="col-sm-4">
											<select id="schConvert" name="schConvert" class="form-control input-sm form-control-inline">
												<option value="1" ${config.write_level eq 1 ? 'selected' : '' }>권한1</option>
												<option value="2" ${config.write_level eq 1 ? 'selected' : '' }>권한2</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="t_UnitCost" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> 스킨디렉토리
										</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="main_banner_text" value="${config.skin_dir }" required />
										</div>
										<label for="t_UnitCost" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> 게시판 타입
										</label>
										<div class="col-sm-4">
											<select id="schConvert" name="schConvert" class="form-control input-sm form-control-inline">
												<c:forEach var="type" items="${boardType}">
													<option value="${type.board_type_seq }" ${config.board_type_seq eq type.board_type_seq ? 'selected' : '' }>${type.title }</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="t_UnitCost" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> 상단 인클루드
										</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="main_banner_text" value="${config.header_include }" required />
										</div>
										<label for="t_UnitCost" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> 하단 인클루드
										</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="main_banner_text" value="${config.footer_include }" required />
										</div>
									</div>
									<div class="form-group">
										<label for="t_UnitCost" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> 파일업로드 사용
										</label>
										<div class="col-sm-4">
											<select id="schConvert" name="schConvert" class="form-control input-sm form-control-inline">
												<option value="Y">Y</option>
												<option value="N">N</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="t_UnitCost" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> 업로드 제한(MB)
										</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="main_banner_text" value="${config.max_file_size }" required />
										</div>
										<label for="t_UnitCost" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> 업로드 제한(개수)
										</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="main_banner_text" value="${config.max_file_num }" required />
										</div>
									</div>
									<div class="form-group">
										<label for="t_UnitCost" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> HTML 에디터 사용
										</label>
										<div class="col-sm-4">
											<select id="schConvert" name="schConvert" class="form-control input-sm form-control-inline">
												<option value="Y" selected=selected>Y</option>
												<option value="M">N</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="t_UnitCost" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> 답변글 사용
										</label>
										<div class="col-sm-4">
											<select id="schConvert" name="schConvert" class="form-control input-sm form-control-inline">
												<option value="Y">Y</option>
												<option value="N">N</option>
											</select>
										</div>
										<label for="t_UnitCost" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> 댓글 사용
										</label>
										<div class="col-sm-4">
											<select id="schConvert" name="schConvert" class="form-control input-sm form-control-inline">
												<option value="Y">Y</option>
												<option value="N">N</option>
											</select>
										</div>
									</div>
								</div>
								<!-- //기본사항 -->
								<div class="text-right">
									<button class="btn btn-primary">저장하기</button>
									<a href="/admin/boardConfig" class="btn btn-default">취소하기</a>
								</div>
							</fieldset>
						</form>
						<!-- //게시판 정보 -->
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

$('.form-horizontal').on('submit',(e)=>{
	e.preventDefault();
	let inputArr = $('input,select');
	let arr = ['config_seq','board_name','list_num','title_length','view_level','write_level','skin_dir','board_type_seq','header_include','footer_include','is_file_use','max_file_size','max_file_num','is_editor_use','is_reply_use','is_comment_use'];
	let formData = new FormData();
	arr.forEach((e,idx)=>{
		formData.append(e,inputArr[idx].value);
		console.log(e);
		console.log(inputArr[idx].value);
	});
	console.log(formData);
	$.ajax({
	       url: "/admin/configUpdateProc",
	       method: "POST",
	       data: formData,
	       contentType: false,
	       processData: false,
	       success: function(data) {
	    	   console.log(data);
	    	   location.href = "/admin/boardConfig";
	       },
	       error: function(error) {
	    	   console.log(error);
	           alert(error);
	       },
	     });
})
	
</script>
</html>