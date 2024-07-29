<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>팝업 등록</title>
<%@ include file="layout/header.jsp"%>
<!--  에디터 CDN -->
<script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />


<script>

/* 데이터 로드 요청
* param에 붙은 seq 값 확인후 해당 데이터 로드
*/
$(document).ready(function() {
	var paramValue = '${param.popup_seq}';
	
	// toast Editor 생성(초기화)
	const editor = new toastui.Editor({
        el: document.querySelector('#toast_editor'),
        height: '500px',
		previewStyle : 'tab',
		initialEditType: 'wysiwyg',
    });
	
	
	if (paramValue) {
		$.ajax({
			url : '/admin/popupMngSearch',
			type : 'POST',
			data : {
				popup_seq : paramValue
			},
			success : function(response) {
				// Form 데이터 바인딩
				dataSet(response)
				
				// Editor 데이터 바인딩
				editor.setMarkdown(response.adminList[0].content);
				
			},
			error : function(xhr, status, error) {
				console.error('Error fetching data: ', error);
			}
		});
	}
	
	$('form').on('submit',(e)=>{
		e.preventDefault();
		
		const editorContent = editor.getMarkdown();
		const popup_seq = '${param.popup_seq}';

		// 폼 데이터를 FormData 객체로 가져옵니다.
		var formData = new FormData($('.form-horizontal')[0]);
		event.preventDefault();

		formData.append('editorContent', editorContent);
		// Ajax 요청을 보냅니다.
		$.ajax({
			url : '/admin/insertPopupData',
			type : 'POST',
			data : formData,
			contentType : false,
			processData : false,
			success : function(response) {
				if (response.status === 200) {
					alert('성공적으로 전송되었습니다.');
					console.log('메시지:', response.message); // 성공 메시지 출력
					// 추가적인 성공 처리 로직을 여기에 작성할 수 있습니다.
					location.href = '/admin/popup';
				} else {
					console.error('서버 오류:', response.message); // 실패 메시지 출력
					// 추가적인 실패 처리 로직을 여기에 작성할 수 있습니다.
				}
			},
			error : function(xhr, status, error) {
				alert('전송 중 오류가 발생했습니다.');

				console.error(xhr);
				console.error(status);
				console.error(error);
				console.error('전송 중 오류가 발생했습니다.');
			}
		});
	});
	
});

// Data Load
	
// 데이터 바인딩
function dataSet(response){
	var popup_seq = document.getElementById('popup_seq');
	var popup_title = document.getElementById('title');
	var popup_sday = document.getElementById('sday');
	var popup_eday = document.getElementById('eday');
	var popup_x_pos = document.getElementById('x_pos');
	var popup_y_pos = document.getElementById('y_pos');
	var popup_width = document.getElementById('width');
	var popup_height = document.getElementById('height');
	var popup_link = document.getElementById('link_url');
	var popup_content = document.getElementById('toast_editor');
	
	popup_seq.value = response.adminList[0].popup_seq
	popup_title.value =  response.adminList[0].title
	popup_content.value =  response.adminList[0].content
	popup_sday.value =  response.adminList[0].sday
	popup_eday.value =  response.adminList[0].eday
	popup_x_pos.value =  response.adminList[0].x_pos
	popup_y_pos.value =  response.adminList[0].y_pos
	popup_width.value =  response.adminList[0].width
	popup_height.value =  response.adminList[0].height
	popup_link.value =  response.adminList[0].link_url
}


// 이메일 합치기
function updateEmail() {
	const emailPart = document.getElementById('t_Email1').value;
	const emailDomain = document.getElementById('Select_Email').value;
	var email = emailPart + '@' + emailDomain;
	document.getElementById('email').value = email;
}

</script>
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
						<form class="form-horizontal">
							<fieldset>
								<div class="well wh-bg" style="border-radius: 10px; box-shadow: 3px 3px 10px -7px;">
									<input type="hidden" id="popup_seq" name="popup_seq" />
									<div class="form-group">
										<label for="t_Status" class="col-sm-2 control-label">
											<i class="fa fa-star text-danger nano-small" aria-hidden="true"></i> <strong>제목</strong>
										</label>
										<div class="col-sm-4">
											<input id="title" name="title" class="form-control" required />
										</div>
										<label for="t_MemGrade" class="col-sm-2 control-label xs-mt10">
											<i class="fa fa-star text-danger nano-small" aria-hidden="true"></i> <strong>활성화</strong>
										</label>
										<div class="col-sm-4">
											<select id="is_open" name="is_open" class="form-control">
												<option value="Y">Y</option>
												<option value="N">N</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="t_MemID" class="col-sm-2 control-label">
											<i class="fa fa-star text-danger nano-small" aria-hidden="true"></i> <strong>시작일</strong>
										</label>
										<div class="col-sm-4">
											<input type="date" id="sday" name="sday" class="form-control pointer" required>
										</div>
										<label for="t_MemName" class="col-sm-2 control-label xs-mt10">
											<i class="fa fa-star text-danger nano-small" aria-hidden="true"></i> <strong>종료일</strong>
										</label>
										<div class="col-sm-4">
											<input type="date" id="eday" name="eday" class="form-control pointer" required>
										</div>
									</div>
									<div class="form-group">
										<label for="t_UnitCost" class="col-sm-2 control-label">
											<i class="fa fa-star text-danger nano-small" aria-hidden="true"></i> <strong>X좌표</strong>
										</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" pattern="[0-9]+" id="x_pos" name="x_pos" required placeholder="숫자를 입력하세요." />
										</div>
										<label for="t_UnitCost" class="col-sm-2 control-label">
											<i class="fa fa-star text-danger nano-small" aria-hidden="true"></i> <strong>Y좌표</strong>
										</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" pattern="[0-9]+" id="y_pos" name="y_pos" required placeholder="숫자를 입력하세요." />
										</div>
									</div>
									<div class="form-group">
										<label for="t_UnitCost" class="col-sm-2 control-label">
											<i class="fa fa-star text-danger nano-small" aria-hidden="true"></i> <strong>높이</strong>
										</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" pattern="[0-9]+" id="height" name="height" required placeholder="숫자를 입력하세요." />
										</div>
										<label for="t_UnitCost" class="col-sm-2 control-label">
											<i class="fa fa-star text-danger nano-small" aria-hidden="true"></i> <strong>너비</strong>
										</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" pattern="[0-9]+" id="width" name="width" required placeholder="숫자를 입력하세요." />
										</div>
									</div>
									<div class="form-group">
										<label for="t_UnitCost" class="col-sm-2 control-label">
											<i class="text-danger nano-small" aria-hidden="true"></i> <strong>링크</strong>
										</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="link_url" name="link_url" />
										</div>
									</div>
									<!-- Toast Editor -->
									<div class="form-group">
										<div id="toast_editor"></div>
										<!-- editor_text -->
									</div>
									<!-- Toast Editor End -->
								</div>


								<!-- //기본사항 -->
								<div class="text-right">
									<button type="submit" class="btn btn-primary">저장하기</button>
									<a href="/admin/main" class="btn btn-default">취소하기</a>
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