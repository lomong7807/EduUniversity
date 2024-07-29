<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>BaseConfig Page</title>
<%@ include file="layout/header.jsp"%>


<script>
	/*
	 * 최초 데이터 조회 및 데이터 바인딩
	 */
	$(document).ready(function() {
		$.ajax({
			url : '/admin/baseConfig/LoadBaseConfigData',
			type : 'GET',
			dataType : 'json',
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
	});

	/*
	 * 이메일 주소 합치기
	 */
	function updateEmail() {
		const emailPart = document.getElementById('t_Email1').value;
		const emailDomain = document.getElementById('Select_Email').value;
		var email = emailPart + '@' + emailDomain;
		document.getElementById('email').value = email;
	}

	/*
	 * 데이터 바인딩
	 */
	function dataSet(response) {
		var siteTitle = document.getElementById('site_title');
		var companyNm = document.getElementById('company_name');
		var ceoNm = document.getElementById('ceo_name');
		var businessNo = document.getElementById('business_no');
		var companyAddr = document.getElementById('company_address');
		var copyright = document.getElementById('copyright');
		var tel = document.getElementById('tel');
		var mainBannerText = document.getElementById('main_banner_text');

		siteTitle.value = response.site_title;
		companyNm.value = response.company_name;
		ceoNm.value = response.ceo_name;
		businessNo.value = response.business_no;
		companyAddr.value = response.company_address;
		copyright.value = response.copyright;
		tel.value = response.tel;
		mainBannerText.value = response.main_banner_text;
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
								<i class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
								필수항목
							</div>
						</div>
						<!-- //페이지 명 -->

						<!-- 게시판 정보 -->
						<form class="form-horizontal">
							<fieldset>
								<!-- 기본사항 -->
								<!-- 									<h4 class="text-info mb10">기본사항</h4> -->
								<div class="well wh-bg"
									style="border-radius: 10px; box-shadow: 3px 3px 10px -7px;">
									<div class="form-group">
										<label for="t_Status" class="col-sm-2 control-label">
											<i class="fa fa-star text-danger nano-small"
											aria-hidden="true"></i><strong>사이트 타이틀</strong>
										</label>
										<div class="col-sm-4">
											<input id="site_title" name="site_title" class="form-control"
												required />
										</div>
										<label for="t_MemGrade" class="col-sm-2 control-label xs-mt10">
											<i class="fa fa-star text-danger nano-small"
											aria-hidden="true"></i> <strong>회사명</strong>
										</label>
										<div class="col-sm-4">
											<input id="company_name" name="company_name"
												class="form-control" required />
										</div>
									</div>

									<div class="form-group">
										<label for="t_MemID" class="col-sm-2 control-label"> <i
											class="text-danger nano-small" aria-hidden="true"></i> <strong>대표자명</strong>
										</label>
										<div class="col-sm-4">
											<input id="ceo_name" name="ceo_name" class="form-control" />
										</div>
										<label for="t_MemName" class="col-sm-2 control-label xs-mt10">
											<i class="text-danger nano-small" aria-hidden="true"></i> <strong>사업자
												등록번호</strong>
										</label>
										<div class="col-sm-4">
											<input id="business_no" name="business_no"
												class="form-control" />
										</div>
									</div>

									<div class="form-group">
										<label for="t_MemPW" class="col-sm-2 control-label"> <i
											class="text-danger nano-small" aria-hidden="true"></i> <strong>대표번호</strong>
										</label>
										<div class="col-sm-4">
											<input id="tel" name="tel" class="form-control" />
											<p class="form-control-static">' - ' 없이 숫자만 입력</p>
										</div>
										<label for="t_rePW" class="col-sm-2 control-label xs-mt10">
											<i class="text-danger nano-small" aria-hidden="true"></i> <strong>이메일</strong>
										</label>
										<div class="col-sm-2">
											<input type="text" class="form-control" id="t_Email1"
												name="t_Email1" value="teacher" required />
										</div>
										<div class="col-sm-2">
											<select id="Select_Email" name="Select_Email"
												class="form-control" onchange="updateEmail()">
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
											<i class="text-danger nano-small" aria-hidden="true"></i> <strong>회사주소</strong>
										</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="company_address"
												name="company_address" value="Address" required />
										</div>
										<label for="t_UnitCost" class="col-sm-2 control-label">
											<i class="fa fa-star text-danger nano-small"
											aria-hidden="true"></i> <strong>카피라이트</strong>
										</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="copyright"
												name="copyright"
												value="Copyright ⓒ |주|에듀에듀. all rights reserved." required />
										</div>
									</div>
									<div class="form-group">
										<label for="upFile_Photo" class="col-sm-2 control-label"><strong>로고
												이미지</strong></label>
										<div class="col-sm-4">
											<input type="file" class="form-control" name="logo_image"
												accept="image/*" required />
										</div>
										<label for="upFile_Photo" class="col-sm-2 control-label"><strong>파비콘
												이미지</strong></label>
										<div class="col-sm-4">
											<input type="file" class="form-control" name="favicon_image"
												accept="image/*" required />
										</div>
									</div>
									<div class="form-group">
										<label for="t_UnitCost" class="col-sm-2 control-label">
											<i class="text-danger nano-small" aria-hidden="true"></i> <strong>메인
												배너 텍스트</strong>
										</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="main_banner_text"
												name="main_banner_text" value="" required />
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
				url : '/admin/baseConfig/dataInput', // 서버의 엔드포인트 URL을 입력합니다.
				type : 'POST', // 전송 방식을 선택합니다.
				data : formData, // 폼 데이터를 전송합니다.
				contentType : false,
				processData : false,
				success : function(response) {
					if (response.status === 200) {
						alert('성공적으로 전송되었습니다.');
						console.log('메시지:', response.message); // 성공 메시지 출력
						// 추가적인 성공 처리 로직을 여기에 작성할 수 있습니다.
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

