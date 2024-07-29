<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<title>관리자 모드</title>
<meta name="author" content="Hom2Box">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!--[if IEMobile]>
			<meta http-equiv="cleartype" content="on" />
		<![endif]-->
<meta name="format-detection" content="telephone=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<link rel="shortcut icon" href="../img/logomark.ico">
<link rel="apple-touch-icon" href="././img/logomark.svg">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1" />
<!-- Stylesheets -->
<!-- 절대 수정하지마세요. -->
<link href="/common/css/animate.min.css" rel="stylesheet">
<link href="/common/css/bootstrap.min.css" rel="stylesheet">
<link href="/common/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
<link href="/common/css/common.css" rel="stylesheet">
<link href="/common/css/common.responsive.css" rel="stylesheet">
<link href="/common/css/c3.min.css" rel="stylesheet">
<link href="/common/css/font-awesome.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="/common/css/themify.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/themify-icons/1.0.1/css/themify-icons.css" rel="stylesheet">
<link href="/common/css/NotoSansCJKkr.css" rel="stylesheet">
<link href="/common/css/NotoSansCJKjp.css" rel="stylesheet">
<link href="/common/css/NotoSansCJKsc.css" rel="stylesheet">
<link href="/common/css/NotoSansCJKtc.css" rel="stylesheet">
<!-- //절대 수정하지마세요. -->
<link href="/admin/css/theme.css" rel="stylesheet">

<!--[if lt IE 9]>
			<script src="../js/html5shiv.min.js"></script>
		<![endif]-->

<!--[if lt IE 10]>
			<script src="../js/media.match.min.js"></script>
			<script src="../js/respond.min.js"></script>
		<![endif]-->

<!-- Scripts -->
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
</head>
<body class="admin_login">

	<div id="page" class="page-wrapper">
		<header class="header">
			<div class="container">
				<div class="row">
					<div class="col-xs-6">
						<div class="login-brand">
							<img src="/admin/img/mandarin-white.svg" alt="mandarin" />
						</div>
					</div>
					<div class="col-xs-6 text-right">
						<div class="etc_navi">
							<a href="/" target="_blank" title="HOMEPAGE"><i class="fa fa-home" aria-hidden="true"></i></a>
						</div>
					</div>
				</div>
			</div>
		</header>

		<form name="login-form" class="form-signin" id="loginform">
			<fieldset>
				<div class="container">
					<div class="form-signin-heading">
						<img src="/admin/img/mandarin.svg" class="img-responsive img-centered" alt="mandarin" />
					</div>
					<div class="form-signin-text">
						아이디 및 패스워드를 잊어버리셨거나, <br />문제가 있을경우 관리자에게 문의하세요.
					</div>
					<div class="frame">
						<div class="input-group userid">
							<input type="text" class="form-control num-webfont" name="userId" id="userId" placeholder="Please enter your ID." required autofocus>
							<div class="input-group-addon">
								<i class="glyphicon glyphicon-user"></i>
							</div>
						</div>

						<div class="input-group password">
							<input type="password" class="form-control num-webfont" name="userPwd" id="userPwd" placeholder="Please enter your password." required>
							<div class="input-group-addon">
								<i class="glyphicon glyphicon-lock"></i>
							</div>
						</div>

						<div class="check-save">
							<input class="switch-hb" type="checkbox" name="user_chk" id="user_chk" value="Y" checked="checked" data-size="mini" data-on-color="primary" /> <label for="user_chk" class="text">아이디 저장</label>
						</div>

						<button class="btn btn-lg btn-primary btn-block num-webfont" type="submit">LOGIN</button>
					</div>
				</div>
			</fieldset>
		</form>
	</div>
	<jsp:include page="layout/footer.jsp"></jsp:include>
</body>
<script>
	console.log('a');
	 $("#loginform").submit(function (event) {
         event.preventDefault();

         // 사용자 이름 및 비밀번호 가져오기
         var userid = $("#userId").val();
         var password = $("#userPwd").val();
         console.log(userid);
         console.log(password);
         // AJAX 요청 보내기
         $.ajax({
           url: "/admin/login-proc",
           method: "POST",
           data: {
             id: userid,
             pw: password,
           },
           success: function (data) {
             if (data == true) {
               window.location.href = "/admin/main";
             } else {
               alert("아이디 비밀번호 오류");
             }
           },
           error: function (error) {
             console.error("login 요청 오류:", error);
           },
         });
       });
       $("#registerBtn").on("click", () => {
         console.log("clicked");
       });
	</script>
</html>
