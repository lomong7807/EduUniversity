<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/_header.jsp" %>
	<!-- 콘텐츠 -->
	<div id="container" class="container mt-5">
		<div id="customer_container">
			<!-- 로그인 -->
			<h4 class="text-center pb-2">
				<strong>로그인</strong>
			</h4>

			<div class="row justify-content-center mt-4">
				<div class=" col-lg-6">

					<form name="f1" method=post action="/loginProc" id="login-form"
						class="">
						<input type="hidden" name="refer" value="" />
						<div class="alert alert-primary">
							<h6 class="m-0">정보를 확인하기 위해 아이디와 비밀번호을 입력해 주세요.</h6>
						</div>
						<div class="d-flex flex-column align-items-center border py-4 mt-4 px-4 px-sm-0">
							<div class="col-12 col-sm-7">
								<label for="user_id" class="col-sm-3">아이디</label>
								<div class="">
									<input type="text" class="form-control" id="user_id" name="id"
										placeholder="아이디를 입력해주세요." value="" autocomplete="off" />
								</div>
							</div>
			
							<div class="col-12 col-sm-7 mt-4">
								<label for="password" class="col-sm-3">비밀번호</label>
								<div class="">
									<input type="password" class="form-control" id="password"
										name="pw" placeholder="비밀번호를 입력해주세요." value="" />
								</div>
							</div>
							<div class="text-center mt-4 mb-2">
								<a href="/user/register-page" class=" sign_up"
									style="color: #8c8c8c"> 회원가입 </a> <span
									style="border-left: 1px solid #ddd; margin: 0 4px 0 9px">&nbsp;</span>
								<a href="/user/findIdAndPw" class="font-size-13"
									style="color: #8c8c8c"> 아이디 / 비밀번호 찾기 </a>
							</div>
						</div>
						<div class="mt-4">
							<div class="text-center">
								<button class="btn btn-primary">로그인</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

<%@ include file="/WEB-INF/view/include/_footer.jsp" %>
<script>
	$(document).ready(function() {
		$("#login-form").submit(function(event) {
			event.preventDefault();

			// 사용자 이름 및 비밀번호 가져오기
			var user_id = $("#user_id").val();
			var password = $("#password").val();
			console.log(user_id);
			console.log(password);

			// AJAX 요청 보내기
			$.ajax({
				url : "/user/loginSubmit",
				method : "POST",
				data : {
					"user_id" : user_id,
					"user_pw" : password,
				},
				success : function(data) {
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
	});
</script>
</html>