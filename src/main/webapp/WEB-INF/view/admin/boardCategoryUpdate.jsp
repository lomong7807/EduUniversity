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
<title>ComnCdRegister</title>
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
							<div class="col-xs-6">
								<h3 class="text-info mt5">게시판 분류 관리</h3>
							</div>
							<div class="col-xs-6 text-right">
								<i class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
								게시판 분류 관리
							</div>
						</div>
						<!-- //페이지 명 -->

						<!-- 게시판 정보 -->
						<form class="form-horizontal">
							<fieldset>
								<input type="hidden" value=${ cate.category_seq}>
								<!-- 기본사항 -->
								<div class="well wh-bg"
									style="border-radius: 10px; box-shadow: 3px 3px 10px -7px; background: f1fbf;">
									<div class="form-group">
										<label for="common_cd" class="col-sm-2 control-label"><i
											class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
											게시판 선택</label>
										<div class="col-sm-4">
											<select class="form-control" disabled>
												<option value="${config.config_seq }">${config.board_name }</option>
											</select>
										</div>
										<label for="cd_value" class="col-sm-2 control-label"><i
											class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
											카테고리명</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="cd_value"
												name="cd_value" value="${cate.title }" />
										</div>
									</div>

									<div class="form-group">
										<label for="upper_cd" class="col-sm-2 control-label"><i
											class="text-danger nano-small" aria-hidden="true"></i> 사용여부</label>
										<div class="col-sm-4">
											<select class="form-control">
												<option value="Y">사용</option>
												<option value="N">미사용</option>
											</select>
										</div>
									</div>
									<!-- //기본사항 -->

								</div>
								<div class="text-right">
									<button type="submit" class="btn btn-primary">저장하기</button>
									<a href="/admin/boardCategory" class="btn btn-default">취소하기</a>
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
		let formData = new FormData();
		let inputArr = $('input, select');
		let field = ['category_seq','config_seq','title','is_open'];
		field.forEach((e,idx) => {
			formData.append(e, inputArr[idx].value);
		})
		$.ajax({
	          url: "/admin/updateCateProc",
	          method: "POST",
	          data: formData,
	          contentType: false,
	          processData: false,
	          success: function(data) {
	              console.log(data);
	              alert('등록 완료');
	          },
	          error: function(error) {
	        	  console.log(error);
	              alert(error);
	          },
	        });
		return;
	})
</script>
</html>