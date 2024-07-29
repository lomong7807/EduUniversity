<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<meta charset="utf-8">
<head>
<script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<title>자료실</title>
<script>
	$(document).ready(function() {
		// editor 생성
		const editor = new toastui.Editor({
			el : document.querySelector('#toast_editor'),
			height : '500px',
			previewStyle : 'tab',
			initialEditType : 'wysiwyg',
		});
		
		function getUrlSeq(){
		    var url = window.location.href;
		    var pattern = /\/update\/(\d+)/;  // 백슬래시 이스케이프 수정
		    var match = url.match(pattern);

		    if(match) {
			    return match[1];
		    }
		}
		
		var boardSeq = getUrlSeq();
		
		// URL 에 따라 inser,update endpoint 변경
		var currentUrl = window.location.href;
		var endpoint = 'insertBoardData';
		
		function checkURL(){
     		var pathname = currentUrl;
     		var writeIndex = pathname.indexOf('/write/');

     		if (writeIndex !== -1) {
		      var afterWrite = pathname.substring(writeIndex + '/write/'.length);
		      return afterWrite === 'update';
		    }
		    return '';
		}	
		
		if(checkURL === 'update'){
			endpoint = 'update/'+boardSeq;
		}
		
		// Form 전송
		$('#WriteForm').on('submit',(e)=>{
			e.preventDefault();
			
			const editorContent = editor.getMarkdown();
			var formData = new FormData($('.form-horizontal')[0]);
			
			formData.append('editorContent', editorContent);
			
			$.ajax({
				url : '/site/write/'+endpoint,
				type : 'POST',
				data : formData,
				contentType : false,
				processData : false, 
				success : function(response) {
					alert('정상 처리 되었습니다.')
					history.back();
					
				},
				error : function(xhr,status,error){
					console.log(error);
				} 
			});
		});
		
		
		if(boardSeq){
			$.ajax({
			url:"/site/write/getBoardDetail/"+ boardSeq,
			type:"GET",
			success: function(response){
				dataSet(response);
				editor.setMarkdown(response.content);
			},
			error: function(xhr, status, error){
			}
			});
		}
		
		function dataSet(response){
			var title = document.getElementById('title');
			var writeId = document.getElementById('write_id');
			var link = document.getElementById('input_link');
			var cate = document.getElementById('category_seq');
			
			title.value = response.title
			writeId.value = response.write_id
			link.value = response.link_url
			cate.value = response.category_seq
		}
	});
			
	
	document.addEventListener('DOMContentLoaded', function() {

	});
	
</script>
</head>
<body>
	<%@ include file="../layout/header1.jsp"%>
	<div class="sub_visual bg-thema1"></div>
	<!-- 콘테이너 -->
	<div class="container">
		<div class="row">
			<!-- 사이드 -->
			<%@ include file="../layout/boardSidebar.jsp"%>
			<!-- //사이드 -->
			<!-- 콘텐츠 -->
			<div id="container" class="col-md-9">
				<div class="page-header">
					<div class="row">
						<div class="col-md-5">
							<h2>${config.board_name}</h2>
						</div>
						<div class="col-md-7 text-right">
							<ol class="breadcrumb hidden-xs">
								<li>
									<a href="./">
										<i class="glyphicon glyphicon-home"></i> 홈
									</a>
								</li>
								<li>자료실</li>
								<li class="active">${config.board_name}</li>
							</ol>
						</div>
					</div>
				</div>

				<div id="customer_container">
					<!-- 게시판 글쓰기 -->
					<form id="WriteForm" class="form-horizontal">
						<input type="hidden" id="config_seq" name="config_seq" value="${config.config_seq}" />
						<fieldset>
							<legend class="sr-only">게시판 글쓰기</legend>
							<div class="well well-black">
								<div class="form-group">
									<label for="input_category" class="col-sm-2 control-label">분류</label>
									<div class="col-sm-3">
										<select class="form-control" id="category_seq" name="category_seq">
											<option value="0">전체</option>
											<c:forEach var="category" items="${cate}" varStatus="status">
												<option value="${category.category_seq}">${category.title}</option>
											</c:forEach>
										</select>
									</div>
								</div>


								<div class="form-group">
									<label for="input_subject" class="col-sm-2 control-label">제목</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" id="title" name="title" placeholder="제목를 입력하세요." required autofocus />
									</div>
									<div class="col-sm-3">
										<div class="checkbox-inline">
											<label for="notice_yn">
												<input type="checkbox" name="is_notice" id="is_notice" /> 공지사항
											</label>
										</div>
									</div>
								</div>

								<div class="form-group">
									<label for="input_name" class="col-sm-2 control-label">작성자</label>
									<div class="col-sm-3">
										<input type="text" class="form-control" id="write_id" name="write_id" value="${config.write_id}" />
									</div>
								</div>

								<div class="form-group">
									<label for="input_memo" class="col-sm-2 control-label">내용</label>
									<div class="col-sm-10">
										<!-- Toast Editor -->
										<div class="form-group">
											<div id="toast_editor"></div>
											<!-- editor_text -->
										</div>
									</div>
								</div>

								<div class="form-group">
									<label for="input_link" class="col-sm-2 control-label">링크</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" id="input_link" placeholder="링크를 입력하세요.">
									</div>
								</div>

								<!-- 								<div class="form-group"> -->
								<!-- 									<label for="file1" class="col-sm-2 control-label">썸네일</label> -->
								<!-- 									<div class="col-sm-7"> -->
								<!-- 										<input type="file" class="form-control" id="file1" name="files" /> -->
								<!-- 									</div> -->
								<!-- 								</div> -->

								<div class="form-group">
									<label for="file1" class="col-sm-2 control-label">썸네일</label>
									<div class="col-sm-7">
										<input type="file" class="form-control" id="file1" name="files" multiple />
									</div>
								</div>


								<div class="form-group">
									<label for="file2" class="col-sm-2 control-label">파일1</label>
									<div class="col-sm-7">
										<input type="file" class="form-control" id="file2" name="files" multiple />
									</div>
								</div>

								<div class="form-group">
									<label for="file3" class="col-sm-2 control-label">파일2</label>
									<div class="col-sm-7">
										<input type="file" class="form-control" id="file3" name="files" multiple />
									</div>
								</div>

								<div class="form-group form-inline">
									<label for="writekey" class="col-sm-2 control-label">자동등록방지</label>
									<div class="col-sm-10">
										<img id="kcaptcha_image" class="pointer img-rounded" alt="캡차이미지"> <input type="text" class="form-control" id="writekey" name="writekey" />
										<p class="form-control-static text-danger">자동등록방지용 글자를 입력해 주세요.</p>
									</div>
								</div>
							</div>

							<div class="text-right">
								<button type="submit" class="btn btn-primary">작성완료</button>
								<a href="/site/menu/${menu_seq}" class="btn btn-default" onclick="return confirm('정말로 취소하시겠습니까?')">취소</a>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
			<!-- //콘텐츠 -->
		</div>
	</div>
	<!-- //콘테이너 -->
	<%@ include file="../layout/footer1.jsp"%>
</body>
</html>