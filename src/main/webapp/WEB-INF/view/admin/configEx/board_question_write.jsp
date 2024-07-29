<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
<title>이사회</title>
<link href="/css/common/font-awesome.min.css" rel="stylesheet">
<link href="/css/common/NotoSansCJKkr.css" rel="stylesheet">
<!-- <link href="/css/common/NotoSansCJKjp.css" rel="stylesheet">
<link href="/css/common/NotoSansCJKsc.css" rel="stylesheet">
<link href="/css/common/NotoSansCJKtc.css" rel="stylesheet"> -->
<link href="/admin/css/theme.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/themify-icons/1.0.1/css/themify-icons.css" rel="stylesheet">
<link href="/css/common/animate.min.css" rel="stylesheet">
<link href="/css/common/bootstrap.min.css" rel="stylesheet">
<link href="/css/common/bootstrap-datetimepicker.min.css" rel="stylesheet">
<link href="/css/common/c3.min.css" rel="stylesheet">
<link href="/css/common/themify.min.css" rel="stylesheet">
<link href="/css/common/NotoSansCJKkr.css" rel="stylesheet">
<link href="/css/common/NotoSansKR.css" rel="stylesheet">
<link href="/css/common/common.css" rel="stylesheet">
<link href="/css/common/common.responsive.css" rel="stylesheet">
<link href="/css/admin/theme.css" rel="stylesheet">

<!-- Scripts -->
<script src="/js/common/modernizr.min.js"></script>
<script src="/js/common/jquery.min.js"></script>
<script src="/js/common/moment.js"></script>
<script src="/js/common/animate-plus.min.js"></script>
<script src="/js/common/jquery-ui.min.js" title="제이쿼리 UI"></script>
<script src="/js/common/jquery-migrate-git.min.js" title="제이쿼리 하위버전 호환 플로그인"></script>
<script src="/js/common/jquery.easing.js" title="이징"></script>
<script src="/js/common/bootstrap.min.js" title="부트스트랩"></script>
<script src="/js/common/bootstrap-switch.min.js" title="부트스트랩 switch"></script>
<script src="/js/common/bootstrap-datetimepicker.min.js" title="부트스트랩 DateTimePicker"></script>
<script src="/js/common/c3.min.js" title="차트 api"></script>
<script src="/js/admin/customer.script.js" title="사용자 선언"></script>

</head>
<body>
	<!-- 콘테이너 -->
	<div class="container">
		<div class="row">
			<!-- 사이드 -->
			<div id="sidebar" class="col-md-3">
				<div class="sidebar_wrap">

					<div class="page-label labels">
						<strong>자료실</strong> <span
							class="pull-right clickable hidden-md hidden-lg"><i
							class="fa fa-chevron-up"></i></span>
					</div>
					<ul id="sidebar_navi" class="list-group">
						<li class="list-group-item"><a
							href="../board/board_notice.html" class=""><span><strong>공지사항</strong></span></a>
						</li>
						<li class="list-group-item"><a
							href="../board/board_common.html" class=""><span><strong>일반
										게시판</strong></span></a></li>
						<li class="list-group-item"><a
							href="../board/board_gallery.html" class=""><span><strong>갤러리
										게시판</strong></span></a></li>
						<li class="list-group-item"><a
							href="../board/board_portfolio.html" class=""><span><strong>포트폴리오
										게시판</strong></span></a></li>
						<li class="list-group-item"><a
							href="../board/board_webzin.html" class=""><span><strong>웹진
										게시판</strong></span></a></li>
						<li class="list-group-item"><a
							href="../board/board_block.html" class=""><span><strong>블럭
										게시판</strong></span></a></li>
						<li class="list-group-item"><a
							href="../board/board_blog_1.html" class=""><span><strong>블로그타입1
										게시판</strong></span></a></li>
						<li class="list-group-item"><a
							href="../board/board_blog_2.html" class=""><span><strong>블로그타입2
										게시판</strong></span></a></li>
						<li class="list-group-item"><a href="../board/question.html"
							class=""><span><strong>자주묻는질문 게시판</strong></span></a></li>
					</ul>
				</div>
			</div>

			<script type="text/javascript">
				$(document).ready(function() {
					// SlideBar
					$("#sidebar_navi").metisMenu();
				});
			</script>
			<!-- //사이드 -->

			<!-- 콘텐츠 -->
			<div id="container" class="col-md-9">
				<div class="page-header">
					<div class="row">
						<div class="col-md-5">
							<h2>자주묻는질문 게시판</h2>
						</div>
						<div class="col-md-7 text-right">
							<ol class="breadcrumb hidden-xs">
								<li><a href="./"><i class="glyphicon glyphicon-home"></i>
										홈</a></li>
								<li>자료실</li>
								<li class="active">자주묻는질문 게시판</li>
							</ol>
						</div>
					</div>
				</div>

				<div id="customer_container">
					<!-- 게시판 글쓰기 -->
					<form id="WriteForm" class="form-horizontal">
						<fieldset>
							<legend class="sr-only">게시판 글쓰기</legend>
							<div class="well well-black">
								<div class="form-group">
									<label for="input_category" class="col-sm-2 control-label">분류</label>
									<div class="col-sm-3">
										<select class="form-control" id="input_category">
											<option>문의</option>
											<option>건의</option>
										</select>
									</div>
								</div>


								<div class="form-group">
									<label for="input_subject" class="col-sm-2 control-label">제목</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" id="input_subject"
											placeholder="제목를 입력하세요." required autofocus />
									</div>
									<div class="col-sm-3">
										<div class="checkbox-inline">
											<label for="notice_yn"><input type="checkbox"
												name="notice_yn" id="notice_yn" /> 공지사항</label>
										</div>
										<div class="checkbox-inline">
											<label for="secret_yn"><input type="checkbox"
												name="secret_yn" id="secret_yn" /> 비밀글</label>
										</div>
									</div>
								</div>

								<div class="form-group">
									<label for="input_name" class="col-sm-2 control-label">작성자</label>
									<div class="col-sm-3">
										<input type="text" class="form-control" id="input_name"
											placeholder="작성자를 입력하세요." required />
									</div>
								</div>

								<div class="form-group">
									<label for="input_memo" class="col-sm-2 control-label">내용</label>
									<div class="col-sm-10">
										<textarea class="form-control" rows="10" id="input_memo"
											required></textarea>
									</div>
								</div>

								<div class="form-group">
									<label for="input_link" class="col-sm-2 control-label">링크</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" id="input_link"
											placeholder="링크를 입력하세요.">
									</div>
								</div>

								<div class="form-group">
									<label for="input_files1" class="col-sm-2 control-label">파일1</label>
									<div class="col-sm-7">
										<input type="file" class="form-control" id="input_files1" />
									</div>
								</div>

								<div class="form-group">
									<label for="input_files2" class="col-sm-2 control-label">파일2</label>
									<div class="col-sm-7">
										<input type="file" class="form-control" id="input_files2" />
									</div>
								</div>

								<div class="form-group">
									<label for="input_password" class="col-sm-2 control-label">비밀번호</label>
									<div class="col-sm-3">
										<input type="password" class="form-control"
											id="input_password" required />
									</div>
								</div>

								<div class="form-group form-inline">
									<label for="writekey" class="col-sm-2 control-label">자동등록방지</label>
									<div class="col-sm-10">
										<img id="kcaptcha_image" class="pointer img-rounded"
											alt="캡차이미지"> <input type="text" class="form-control"
											id="writekey" name="writekey" />
										<p class="form-control-static text-danger">자동등록방지용 글자를 입력해
											주세요.</p>
									</div>
								</div>
							</div>

							<div class="text-right">
								<button type="submit" class="btn btn-primary">작성완료</button>
								<a href="?BoardMode=list" class="btn btn-default">취소</a>
							</div>
						</fieldset>
					</form>
					<!-- jquery.kcaptcha -->
					<script src="../../kcaptcha/md5.js"></script>
					<script src="../../kcaptcha/jquery.kcaptcha.js"></script>
					<!-- //jquery.kcaptcha -->

					<script src="../../editor/ckeditor.js"></script>
					<script>
						//<![CDATA[
						jQuery(function($) {
							// http://ckeditor.com/ 참고
							CKEDITOR.replace('input_memo',
									{
										height : '300',
										language : 'ko',
										uiColor : '#f5f5f5',
										enterMode : '2',
										shiftEnterMode : '3',
										skin : 'moono',
										toolbar : [
												{
													name : 'basicstyles',
													groups : [ 'basicstyles',
															'cleanup' ],
													items : [ 'Undo', 'Redo',
															'Bold', 'Italic',
															'Underline',
															'Strike',
															'Subscript',
															'Superscript',
															'Source' ]
												},
												{
													name : 'paragraph',
													groups : [ 'list',
															'indent', 'blocks',
															'align', 'bidi' ],
													items : [ 'NumberedList',
															'BulletedList',
															'CreateDiv',
															'Link', 'Unlink',
															'Image', 'Table',
															'HorizontalRule',
															'Smiley' ]
												} ]
									});
						});
						//]]>
					</script>
					<!-- //게시판 글쓰기 -->
				</div>
			</div>
			<!-- //콘텐츠 -->
		</div>
	</div>
	<!-- //콘테이너 -->

</body>
</html>