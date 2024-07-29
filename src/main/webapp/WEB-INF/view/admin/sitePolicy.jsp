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
	const editor1 = new toastui.Editor({
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
	
	
	// 데이터 로드 및 바인딩
	$.ajax({
	url : '/admin/policyData',
	type : 'GET',
	success : function(response) {
		setData(response.policyData);		
	},
	error : function(xhr,status,error){
	}
	});
	
	// 데이터 세팅
	function setData(data){
		console.log(data);
		editor1.setMarkdown(data.policy);
		editor2.setMarkdown(data.service);
	}
	
	// Form 데이터 등록 ajax
	$('form').on('submit',(e) => {
		e.preventDefault();
		
		const editorContent1 = editor1.getMarkdown();
		const editorContent2 = editor2.getMarkdown();

		var formData = new FormData($('.form-horizontal')[0]);
		event.preventDefault();
		
		formData.append('editorContent1',editorContent1);
		formData.append('editorContent2',editorContent2);
		
		$.ajax({
			url : '/admin/insertSitePolicy',
			type : 'POST',
			data : formData,
			contentType : false,
			processData : false,
			success : function(response){
				console.log(response)
			},
			error : function(xhr, status, error){
				console.log(xhr);
				console.log(status);
				console.log(error);
			}
		});
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
								<h3 class="text-info mt5">사이트 약관 관리</h3>
							</div>
						</div>
						<!-- //페이지 명 -->
						<!-- 목록 -->
						<div>
							<!-- 							<form Method="Post" id="teacher_list" name="teacher_list"> -->
							<!-- 								<input type="hidden" id="schIcon" name="schIcon" value="schIcon" /> <input type="hidden" id="sel" name="sel" /> -->
							<!-- 								<fieldset> -->
							<!-- 									<div class="panel panel-default text-center"> -->
							<!-- 										<div class="panel-body"> -->
							<!-- 											<div class="row mt10 mb10"> -->
							<!-- 												<div class="col-sm-3 text-left mt5 hidden-xs hidden-sm hidden-md"> -->
							<!-- 													<strong>Company</strong> -->
							<!-- 												</div> -->
							<!-- 												<div class="col-sm-9"> -->
							<!-- 													<div class="row"> -->
							<!-- 														<div class="col-sm-5"> -->
							<!-- 															<select id="schDisplayYN" name="schDisplayYN" class="form-control pointer"> -->
							<!-- 																<option>본사 / admin</option> -->
							<!-- 															</select> -->
							<!-- 														</div> -->
							<!-- 													</div> -->
							<!-- 												</div> -->
							<!-- 											</div> -->

							<!-- 										</div> -->
							<!-- 									</div> -->

							<!-- //게시물 -->
							<!-- 								</fieldset> -->
							<!-- 							</form> -->
						</div>
						<!-- //목록 -->
						<div>
							<form class="form-horizontal">
								<fieldset>
									<input type="hidden" name="user_seq" value=""> <input
										type="hidden" name="mode" value="insert"> <input
										type="hidden" name="page" value="1">
									<div class="well wh-bg mb10"
										style="border-radius: 10px;  box-shadow: 3px 3px 10px -7px;">
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
									<div class="text-right">
										<button type="submit" class="btn btn-primary">저장하기</button>
										<a href="/admin/main" class="btn btn-default">취소하기</a>
									</div>
								</fieldset>
							</form>
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