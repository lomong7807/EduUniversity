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
<title>ComnCdUpdate</title>
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
								<h3 class="text-info mt5">공통코드 업데이트</h3>
							</div>
							<div class="col-xs-6 text-right">
								<i class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
								필수항목
							</div>
						</div>
						<!-- //페이지 명 -->

						<!-- 게시판 정보 -->
						<form class="form-horizontal">
							<fieldset>
								<!-- 기본사항 -->
								<div class="well wh-bg"
									style="border-radius: 10px; box-shadow: 3px 3px 10px -7px;">
									<div class="form-group">
										<label for="common_cd" class="col-sm-2 control-label"><i
											class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
											<strong>공통코드</strong></label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="common_cd"
												name="common_cd" value=${ comnCd.common_cd} />
										</div>
										<label for="cd_value" class="col-sm-2 control-label"><i
											class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
											<strong>코드값</strong></label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="cd_value"
												name="cd_value" value=${ comnCd.cd_value} />
										</div>
									</div>

									<div class="form-group">
										<label for="upper_cd" class="col-sm-2 control-label">
											<strong>상위코드</strong>
										</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="upper_cd"
												name="upper_cd" value=${ comnCd.upper_cd} />
										</div>
										<label for="sort_No" class="col-sm-2 control-label xs-mt10"><i
											class="text-danger nano-small" aria-hidden="true"></i> <strong>정렬번호</strong></label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="sort_No"
												name="sort_No" placeholder="숫자" value=${ comnCd.sort_no} />
										</div>
									</div>
									<!-- //기본사항 -->

								</div>
								<div class="text-right">
									<button type="submit" class="btn btn-primary">저장하기</button>
									<a href="/admin/comnCdMng" class="btn btn-default">취소하기</a>
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
		formData.append('common_cd',$('#common_cd').val());
		formData.append('cd_value',$('#cd_value').val());
		formData.append('upper_cd',$('#upper_cd').val());
		formData.append('sort_No',$('sort_No').val());
		$.ajax({
	          url: "/admin/registerCodeProc",
	          method: "POST",
	          data: formData,
	          contentType: false,
	          processData: false,
	          success: function(data) {
	              console.log(data);
	              alert('등록 완료');
	          },
	          error: function(error) {
	              alert(error);
	          },
	        });
		return;
	})
</script>
</html>