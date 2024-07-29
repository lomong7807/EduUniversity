<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>BannerMng Page</title>
<%@ include file="layout/header.jsp"%>


<script>
	/*
	 * 최초 데이터 조회 및 데이터 바인딩
	 */
	$(document).ready(function() {
		var paramValue = '${param.banner_seq}';

		if (paramValue) {
			$.ajax({
				url : '/admin/bannerMngList',
				type : 'POST',
				data : {
					banner_seq : paramValue
				},
				success : function(response) {
					dataSet(response);
				},
				error : function(xhr, status, error) {
					console.error(xhr);
					console.error(status);
					console.error(error);
					console.error('전송 중 오류가 발생했습니다.');
				}
			});
		}
	});

	/*
	 * 데이터 바인딩
	 */
	function dataSet(response) {
		var banner_text = document.getElementById('banner_text');
		var banner_small_text = document.getElementById('banner_small_text');
		var banner_link_text = document.getElementById('banner_link_text');
		var banner_link_url = document.getElementById('banner_link_url');
		// 		var banner_image_url = document.getElementById('banner_image_url');

		banner_text.value = response.adminList[0].banner_text
		banner_small_text.value = response.adminList[0].banner_small_text
		banner_link_text.value = response.adminList[0].banner_link_text
		banner_link_url.value = response.adminList[0].banner_link_url
		// 		banner_image_url.value = response.banner_image_url
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
								<h3 class="text-info mt5">배너 이미지 등록</h3>
							</div>
						</div>
						<div class="row form-inline">
							<div class="col-xs-6"></div>
							<div class="col-xs-6 text-right">
								<i class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
								필수항목
							</div>
						</div>
						<!-- //페이지 명 -->

						<!-- 게시판 정보 -->
						<form class="form-horizontal">
							<fieldset>
								<div class="well wh-bg"
									style="border-radius: 10px; box-shadow: 3px 3px 10px -7px; background: f1fbf;">
									<input type="hidden" id="banner_seq" name="banner_seq" />
									<div class="form-group">
										<label for="t_Status" class="col-sm-2 control-label">
											<i class="fa fa-star text-danger nano-small"
											aria-hidden="true"></i> <strong>배너 메인 텍스트</strong>
										</label>
										<div class="col-sm-4">
											<input id="banner_text" name="banner_text"
												class="form-control" />
										</div>
										<label for="t_MemGrade" class="col-sm-2 control-label xs-mt10">
											<i class="fa fa-star text-danger nano-small"
											aria-hidden="true"></i> <strong>배너 작은 텍스트</strong>
										</label>
										<div class="col-sm-4">
											<input id="banner_small_text" name="banner_small_text"
												class="form-control" />
										</div>
									</div>

									<div class="form-group">
										<label for="t_UnitCost" class="col-sm-2 control-label">
											<i class="text-danger nano-small" aria-hidden="true"></i> <strong>링크
												버튼 텍스트</strong>
										</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="banner_link_text"
												name="banner_link_text" />
										</div>
										<label for="t_UnitCost" class="col-sm-2 control-label">
											<i class="fa fa-star text-danger nano-small"
											aria-hidden="true"></i> <strong>링크 URL</strong>
										</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="banner_link_url"
												name="banner_link_url" />
										</div>
									</div>
									<div class="form-group">
										<label for="upFile_Photo" class="col-sm-2 control-label">
											<strong>배너 이미지</strong>
										</label>
										<div class="col-sm-4">
											<input type="file" class="form-control" id="banner_image_url"
												name="banner_image_url" accept="image/*" />
										</div>
									</div>
								</div>
								<!-- //기본사항 -->
								<div class="text-right">
									<button id="submitBtn" type="submit" onclick="submitForm();"
										class="btn btn-primary">저장하기</button>
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

	<script>
		function submitForm() {
			// 폼 데이터를 FormData 객체로 가져옵니다.
			var formData = new FormData($('.form-horizontal')[0]);

			event.preventDefault();

			// Ajax 요청을 보냅니다.
			$.ajax({
				url : '/admin/insertBannerData', // 서버의 엔드포인트 URL을 입력합니다.
				type : 'POST', // 전송 방식을 선택합니다.
				data : formData, // 폼 데이터를 전송합니다.
				contentType : false,
				processData : false,
				success : function(response) {
					if (response.status === 200) {
						alert('성공적으로 전송되었습니다.');
						console.log('메시지:', response.message); // 성공 메시지 출력
						// 추가적인 성공 처리 로직을 여기에 작성할 수 있습니다.
					}
					location.href = '/admin/bannerMng';
				},
				error : function(xhr, status, error) {
					alert('전송 중 오류가 발생했습니다.');

					console.error(xhr);
					console.error(status);
					console.error(error);
					console.error('전송 중 오류가 발생했습니다.');
				}
			});
		}

		/*
		 * keydown 멈춤 // 엔터 전송 막기		
		 */
		document.getElementById('submitBtn').addEventListener('keydown',
				function(event) {
					if (event.keyCode === 13) { // 엔터 키의 keyCode는 13입니다.
						event.preventDefault(); // 기본 동작(폼 제출)을 막습니다.
					}
				});
	</script>
</body>
</html>

