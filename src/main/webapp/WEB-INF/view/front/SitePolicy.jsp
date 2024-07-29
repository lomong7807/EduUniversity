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
<script
	src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
<link rel="stylesheet"
	href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />


<script>

$(document).ready(function() {
	var paramValue = '${param.popup_seq}';
	
	// toast Editor 생성(초기화)
	const editor = new toastui.Editor({
        el: document.querySelector('#toast_editor'),
        height: '500px',
		previewStyle : 'tab',
		initialEditType: 'wysiwyg',
    });
	
	const editor2 = new toastui.Editor({
        el: document.querySelector('#toast_editor2'),
        height: '500px',
		previewStyle : 'tab',
		initialEditType: 'wysiwyg',
    });
});
</script>


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
								<h3 class="text-info mt5">회원정책</h3>
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

										</div>
									</div>
									<!-- //게시물 -->
								</fieldset>
							</form>
						</div>
						<!-- //목록 -->

						<div>
							<form name="form" method="post" action="member_proc.php"
								class="form-horizontal">
								<fieldset>
									<input type="hidden" name="user_seq" value=""> <input
										type="hidden" name="mode" value="insert"> <input
										type="hidden" name="page" value="1">
									<div class="well wh-bg mb10">
										<div class="form-group" id="form-group-special_note">
											<label class="col-sm-2 control-label xs-mt10 text-right">
												<strong>개인정보처리방침</strong>
											</label>
											<div class="col-sm-9">
												<!-- Toast Editor -->
												<div class="form-group">
													<div id="toast_editor"></div>
													<!-- editor_text -->
												</div>
											</div>
										</div>
										<div class="form-group" id="form-group-special_note">
											<label class="col-sm-2 control-label xs-mt10 text-right">
												<strong>서비스이용약관</strong>
											</label>
											<div class="col-sm-9">
												<div class="form-group">
													<div id="toast_editor2"></div>
													<!-- editor_text -->
												</div>
											</div>
										</div>
									</div>
								</fieldset>
							</form>
							<div class="row pull-right">
								<a href="#" class="btn btn-mini btn-primary"
									onclick="javascript:save();"><i class="fa fa-save"></i>
									Save </a> <a href="#" class="btn btn-mini btn-default"
									onclick="javascript:location.href='admin_list.html?page=';"><i
									class="fa fa-list"></i> Back </a>
							</div>
						</div>
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