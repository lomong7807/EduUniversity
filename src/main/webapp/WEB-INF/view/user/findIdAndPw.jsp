<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1" />
<title>Document</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/loginCss/common2.css">
<link rel="stylesheet" href="/css/loginCss/common.responsive.css">
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="/js/loginJs/findIdPw.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<!-- 콘텐츠 -->
			<div id="container" class="col-md-12">
				<div id="customer_container">
					<h4 class="sc_item_title">
						<strong>아이디/비밀번호 찾기</strong>
						<hr>
						<p>
							아이디 또는 비밀번호을 잊어버리셨나요?<br /> 회원가입시 등록한 정보를 <br
								class="hidden-sm hidden-md hidden-lg" />이용하여아이디와 비밀번호를 찾으실 수
							있습니다.
						</p>
					</h4>

					<div class="row">
						<div class="col-md-8 col-md-offset-2">
							<div class="row">

								<div class="col-sm-6">
									<form id="idForm" name="idForm" class="form-horizontal xs-mt50"
										method="post">
										<input type="hidden" name="mode" value="id" />
										<h4 class="font-size-16 mt20 mb20 text-center">
											<strong class="text-info">아이디 찾기</strong>
											<p class="font-size-13 lh22">
												회원가입 시 등록한 이름과 이메일주소를<br> 입력하시면 바로 아이디 확인이 가능합니다.
											</p>
										</h4>
										<div class="well wh-bg">
											<div class="text-center">
												<input type="radio" id="find_hp" name="find_id"
													checked="checked" value="hp"
													style="position: relative; top: 3px" /> <label
													for="find_hp" class="control-label ml5"
													style="font-size: 12px; font-weight: 500">연락처로 확인</label>
												&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" id="find_email"
													name="find_id" value="email"
													style="position: relative; top: 3px" /> <label
													for="find_email" class="control-label ml5"
													style="font-size: 12px; font-weight: 500">이메일주소로 확인</label>
											</div>
											<div class="form-group has-none mt20">
												<label for="user_name" class="col-sm-2 control-label">성명</label>
												<div class="col-sm-10 col-md-9">
													<input type="tel" class="form-control" id="user_name"
														name="user_name" placeholder="성명을 입력해 주세요." value="" />
												</div>
											</div>
											<div class="form-group has-none mb20" id="emailPhInputDiv">
												<label for="hp" class="col-sm-2 control-label find-hp">연락처</label>
												<div class="col-sm-10 col-md-9 find-hp">
													<input type="tel" name="hp" id="hp" pattern="[0-9]+"
														maxlength="11" class="form-control"
														placeholder="-빼고 숫자만 입력해주세요." value="" />
												</div>
												<label for="email"
													class="col-sm-2 control-label find-email hidden">이메일</label>
												<div class="col-sm-10 col-md-9 find-email hidden">
													<input type="tel" class="form-control" id="email"
														name="email" placeholder="이메일주소를 입력해 주세요." value="" />
												</div>
											</div>

										</div>
										<div class="clearfix"></div>
										<div class="mt15 text-center">
											<button class="btn btn-md btn-primary" type="submit">확인</button>
										</div>
									</form>
								</div>
								<div class="col-sm-6">
									<form id="pwForm" name="pwForm" class="form-horizontal xs-mt50">
										<input type="hidden" name="mode" value="pw" />
										<h4 class="font-size-16 mt20 mb20 text-center">
											<strong class="text-info">비밀번호 찾기</strong>
											<p class="font-size-13 lh22">
												회원가입시 등록한 휴대전화번호로<br> 임시비밀번호를 보내드립니다.
											</p>
										</h4>
										<div class="well wh-bg">
											<div class="control-label ml5"
												style="font-size: 12px; font-weight: 500">&nbsp;</div>
											<div class="form-group has-none mt20">
												<label for="pw_user_id" class="col-sm-2 control-label">아이디</label>
												<div class="col-sm-10 col-md-9">
													<input type="text" class="form-control" id="pw_user_id"
														name="user_id" placeholder="아이디(이메일주소)를 입력해 주세요." value=""
														autocomplete="off" />
												</div>
											</div>

											<div class="form-group has-none mb20">
												<label for="pw_user_name" class="col-sm-2 control-label">성명</label>
												<div class="col-sm-10 col-md-9">
													<input type="tel" class="form-control" id="pw_user_name"
														name="user_name" placeholder="성명을 입력해 주세요." value="" />
												</div>
											</div>
										</div>
										<div class="clearfix"></div>
										<div class="mt15 text-center">
											<button class="btn btn-md btn-primary" type="submit">확인</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
	$(document).ready(function() {
		$('input[name=find_id]').on('click', function() {
			console.log('radioClicked');
			if ($(this).val() == "hp") {
				$('#idForm').find('.find-hp').removeClass('hidden');
				$('#idForm').find('.find-email').addClass('hidden');
			} else {
				$('#idForm').find('.find-hp').addClass('hidden');
				$('#idForm').find('.find-email').removeClass('hidden');
			}
		});

		$("#idForm").submit(function(event) {
			event.preventDefault();
			// 사용자 이름 및 비밀번호 가져오기
			//phone , email , user_name
			// hp인지 email 인지 부터 체크.
			console.log('idForm Submit Event');
			let user_name = $('#user_name').val();
			let val;
			let radioSelectedEle = $('input[name=find_id]:checked');
			let formData = new FormData();
			if (radioSelectedEle.val() == 'hp') {
				let val = $('#hp').val()
				formData.append('user_ph', val);
			} else {
				let val = $('#user_ph').val()
				formData.append('user_email', val);
			}
			formData.append('user_name', user_name);
			// AJAX 요청 보내기
			$.ajax({
				url : "/user/findId",
				method : "POST",
				data : formData,
				contentType : false,
				processData : false,
				success : function(data) {
					return;
					if (data == 1) {
						window.location.href = "/";
					} else {
						alert("아이디 비밀번호 오류");
					}
				},
				error : function(error) {
					console.error("login 요청 오류:", error);
				},
			});
		});

		$("#pwForm").submit(function(event) {
			event.preventDefault();
			// 사용자 이름 및 비밀번호 가져오기
			var user_id = $("#pw_user_id").val();
			var user_name = $("#pw_user_name").val();
			return;
			// AJAX 요청 보내기
			$.ajax({
				url : "/user/findPw",
				method : "POST",
				data : {
					"user_id" : user_id,
					"user_name" : user_name,
				},
				success : function(data) {
					return;
					if (data == 1) {
						window.location.href = "/";
					} else {
						alert("아이디 비밀번호 오류");
					}
				},
				error : function(error) {
					console.error("login 요청 오류:", error);
				},
			});
		});
	})
</script>
</html>