<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
<%@ include file="../layout/header1.jsp"%>
<title>login</title>
</head>
<body>
	<!-- 콘테이너 -->
	<div class="container">
		<div class="row">
			<!-- 콘텐츠 -->
			<div id="container" class="col-md-12">
				<div id="customer_container">
					<!-- 로그인 -->
					<h4 class="sc_item_title">
						<strong>로그인</strong>
						<div class="hbseparator hbseparator-primary">
							<i class="ti-music-alt"></i>
						</div>
						<p>
							JSP에 <br class="hidden-sm hidden-md hidden-lg">오신 것을
							환영합니다!
						</p>
					</h4>

					<div class="row">
						<div class="col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
							<form id="loginForm" class="form-horizontal">
								<div class="alert alert-primary">
									<h5 class="mb0 text-center">정보를 확인하기 위해 아이디와 비밀번호을 입력해 주세요.</h5>
								</div>
								<div class="well wh-bg">
									<div class="form-group has-none mt10">
										<label for="userId" class="col-sm-3 control-label"><strong>아이디</strong></label>
										<div class="col-sm-7">
											<input type="text" class="form-control" id="userId"
												name="userId" placeholder="아이디를 입력해주세요." value=""
												autocomplete="off" />
										</div>
									</div>

									<div class="form-group has-none">
										<label for="password" class="col-sm-3 control-label"><strong>비밀번호</strong></label>
										<div class="col-sm-7">
											<input type="password" class="form-control" id="password"
												name="password" placeholder="비밀번호를 입력해주세요." value="" />
											<div id="passwordError" class="error-text" style="color: red;"></div>
										</div>
									</div>

									<div class="form-group has-none text-center">
										<a href="/site/register" class="btn btn-link">회원가입</a> <a
											href="/site/find-account" class="btn btn-link">아이디/비밀번호
											찾기</a>
<%--										<label for="remember-me" class="col-sm-3 control-label">
											<input type="checkbox" name="remember-me" id="remember-me"> 자동로그인
										</label>--%>
									</div>
								</div>
								<div class="clearfix"></div>
								<div class="mt15 text-center">
									<button id="loginButton" class="btn btn-md btn-primary" type="submit">
										<strong>로그인</strong>
									</button>
								</div>
							</form>
						</div>
					</div>
					<!-- //로그인 -->
				</div>
			</div>
			<!-- //콘텐츠 -->
		</div>
	</div>
	<!-- //콘테이너 -->

	<%@ include file="../layout/footer1.jsp"%>
</body>
<script>

	let loginInProgress = false;
	let debounceTimer;
	let lastAttempt = { id: '', pw: '' };

	window.onload = function (){
		document.getElementById('userId').focus();
	}


	$("#loginForm").submit(function (event) {
		event.preventDefault();

		// 이미 로그인 진행 중이면 추가 요청 방지
		if (loginInProgress) {
			return;
		}

		// 디바운싱: 300ms 내에 추가 요청이 오면 이전 요청 취소
		clearTimeout(debounceTimer);
		debounceTimer = setTimeout(function() {
			login();
		}, 300);
	});

	function login(){
		// 사용자 이름 및 비밀번호 가져오기
		const userId = $("#userId").val().trim();
		const password = $("#password").val().trim();

		// 기본적인 유효성 검사
		if (!userId || !password) {
			$("#passwordError").text("아이디와 비밀번호를 모두 입력해주세요.");
			return;
		}

		// 이전 실패한 로그인 시도와 동일한 경우 요청 방지
		if (userId === lastAttempt.id && password === lastAttempt.pw) {
			console.log("이전에 실패한 로그인 정보");
			return;
		}

		loginInProgress = true;
		$("#loginButton").prop('disabled', true);
		$("#passwordError").text("");

		// AJAX 요청 보내기
		$.ajax({
			url: "/login",
			method: "POST",
			contentType: "application/json",
			data: JSON.stringify({
				id: userId,
				pw: password,
			}),
			success: function (data) {
				console.log(data);
				// 사용자 역할에 따른 리다이렉트
				if(data.redirectUrl){
					window.location.href = data.redirectUrl;
				}else{
					$("#passwordError").text("아이디 또는 비밀번호를 잘못 입력했습니다. 입력하신 내용을 다시 확인해주세요.");
					// 실패한 로그인 시도 저장
					lastAttempt = { id: userId, pw: password };
				}
			},
			error: function (error) {
				console.error("login 요청 오류:", error);
				$("#passwordError").text("아이디 또는 비밀번호를 잘못 입력했습니다. 입력하신 내용을 다시 확인해주세요.");
				// 실패한 로그인 시도 저장
				lastAttempt = { id: userId, pw: password };
			},
			complete: function() {
				// 로딩 상태 해제
				loginInProgress = false;
				$("#loginButton").prop('disabled', false).text('로그인');
			}
		});
	}

	// 입력 필드 변경 시 lastAttempt 초기화
	$("#userId, #password").on('input', function() {
		lastAttempt = { id: '', pw: '' };
	});
</script>


</html>