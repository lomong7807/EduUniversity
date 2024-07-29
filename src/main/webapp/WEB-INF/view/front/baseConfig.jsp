<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<script>
	
	function updateEmail() {
	    const emailPart = document.getElementById('t_Email1').value;
	    const emailDomain = document.getElementById('Select_Email').value;
	    var email = emailPart+'@'+emailDomain;
	    document.getElementById('email').value = email;
	}
	
</script>

<head>
<meta charset="utf-8">
<title>BaseConfig Page</title>
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
								<h3 class="text-info mt5">등록</h3>
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
						<form class="form-horizontal" method="post" action="/admin/baseConfig/dataInput">
							<fieldset>
								<!-- 기본사항 -->
								<!-- 									<h4 class="text-info mb10">기본사항</h4> -->
								<div class="well wh-bg">
									<div class="form-group">
										<label for="t_Status" class="col-sm-2 control-label">
											<i class="fa fa-star text-danger nano-small" aria-hidden="true"></i> 사이트 타이틀
										</label>
										<div class="col-sm-4">
											<input name="site_title" class="form-control" />
										</div>
										<label for="t_MemGrade" class="col-sm-2 control-label xs-mt10">
											<i class="fa fa-star text-danger nano-small" aria-hidden="true"></i> 회사명
										</label>
										<div class="col-sm-4">
											<input name="company_name" class="form-control" />
										</div>
									</div>

									<div class="form-group">
										<label for="t_MemID" class="col-sm-2 control-label">
											<i class="text-danger nano-small" aria-hidden="true"></i> 대표자명
										</label>
										<div class="col-sm-4">
											<input name="ceo_name" class="form-control" />
										</div>
										<label for="t_MemName" class="col-sm-2 control-label xs-mt10">
											<i class="text-danger nano-small" aria-hidden="true"></i> 사업자 등록번호
										</label>
										<div class="col-sm-4">
											<input name="business_no" class="form-control" />
										</div>
									</div>

									<div class="form-group">
										<label for="t_MemPW" class="col-sm-2 control-label">
											<i class="text-danger nano-small" aria-hidden="true"></i> 대표번호
										</label>
										<div class="col-sm-4">
											<input name="business_no" class="form-control" />
											<p class="form-control-static">' - ' 없이 숫자만 입력</p>
										</div>
										<label for="t_rePW" class="col-sm-2 control-label xs-mt10">
											<i class="text-danger nano-small" aria-hidden="true"></i> 이메일
										</label>
										<div class="col-sm-1">
											<input type="text" class="form-control" id="t_Email1" name="t_Email1" value="teacher" required />
										</div>
										<div class="col-sm-2">
											<select id="Select_Email" name="Select_Email" class="form-control" onchange="updateEmail()">
												<option>직접 입력</option>
												<option value="chol.com">chol.com</option>
												<option value="dreamwiz.com">dreamwiz.com</option>
												<option value="empal.com">empal.com</option>
												<option value="freechal.com">freechal.com</option>
												<option value="gmail.com">gmail.com</option>
												<option value="hanafos.com">hanafos.com</option>
												<option value="hanmail.net">hanmail.net</option>
												<option value="hanmir.com">hanmir.com</option>
												<option value="hitel.net">hitel.net</option>
												<option value="hotmail.com">hotmail.com</option>
												<option value="korea.com">korea.com</option>
												<option value="lycos.co.kr">lycos.co.kr</option>
												<option value="nate.com">nate.com</option>
												<option value="naver.com">naver.com</option>
												<option value="netian.com">netian.com</option>
												<option value="paran.com">paran.com</option>
												<option value="yahoo.com">yahoo.com</option>
												<option value="yahoo.co.kr">yahoo.co.kr</option>
											</select>
										</div>
									</div>
									
									<input type="hidden" name="email" id="email" value="">
									
									<div class="form-group">
										<label for="t_UnitCost" class="col-sm-2 control-label">
											<i class="text-danger nano-small" aria-hidden="true"></i> 회사주소
										</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="address" name="company_address" value="Address" required />
										</div>
										<label for="t_UnitCost" class="col-sm-2 control-label">
											<i class="fa fa-star text-danger nano-small" aria-hidden="true"></i> 카피라이트
										</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="t_UnitCost" name="t_UnitCost" value="Copyright ⓒ |주|에듀에듀. all rights reserved." required />
										</div>
									</div>
									<div class="form-group">
										<label for="t_UnitCost" class="col-sm-2 control-label">
											<i class="text-danger nano-small" aria-hidden="true"></i> 메인 배너 텍스트
										</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="main_banner_text" value="" required />
										</div>
									</div>
									<!-- 									<div class="form-group"> -->
<!-- 										<label for="upFile_Photo" class="col-sm-2 control-label">로고 이미지</label> -->
<!-- 										<div class="col-sm-4"> -->
<!-- 											<input type="file" class="form-control" id="logo_image" name="logo_image" accept="image/*" required /> -->
<!-- 										</div> -->
<!-- 										<label for="upFile_Photo" class="col-sm-2 control-label">파비콘 이미지</label> -->
<!-- 										<div class="col-sm-4"> -->
<!-- 											<input type="file" class="form-control" id="favicon_image" name="favicon_image" accept="image/*" required /> -->
<!-- 										</div> -->
<!-- 									</div> -->
								</div>
								<!-- //기본사항 -->
								<div class="text-right">
									<button type="submit" class="btn btn-primary">저장하기</button>
									<a href="javascript:void(0);" class="btn btn-default">취소하기</a>
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
</html>