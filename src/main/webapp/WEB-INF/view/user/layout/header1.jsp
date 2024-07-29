<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
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
<title>에듀대학교</title>
<meta name="author" content="Hom2Box">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!--[if IEMobile]>
			<meta http-equiv="cleartype" content="on" />
		<![endif]-->
<meta name="format-detection" content="telephone=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<link rel="shortcut icon" href="../css/img/logomark.icox">
<link rel="apple-touch-icon" href="../css/img/logomark.svg">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1" />

<!-- Stylesheets -->
<!-- 절대 수정하지마세요. -->
<link href="/css/common/animate.min.css" rel="stylesheet">
<link href="/css/common/bootstrap.min.css" rel="stylesheet">
<link href="/css/common/bootstrap-datetimepicker.min.css" rel="stylesheet">
<link href="/css/common/common.css" rel="stylesheet">
<link href="/css/common/common.responsive.css" rel="stylesheet">
<link href="/css/common/c3.min.css" rel="stylesheet">
<link href="/css/common/font-awesome.min.css" rel="stylesheet">
<link href="/css/common/themify.min.css" rel="stylesheet">
<!-- <link href="/css/common/NotoSansCJKkr.css" rel="stylesheet"> -->
<link href="/css/common/NotoSansKr.css" rel="stylesheet">
<!-- //절대 수정하지마세요. -->
<link href="/css/user/theme.css" rel="stylesheet">

<!--[if lt IE 9]>
			<script src="../../js/html5shiv.min.js"></script>
		<![endif]-->

<!--[if lt IE 10]>
			<script src="../../js/media.match.min.js"></script>
			<script src="../../js/respond.min.js"></script>
		<![endif]-->

<!-- Scripts -->
<script src="/js/common/modernizr.min.js"></script>
<script src="/js/common/jquery.min.js"></script>
<script src="/js/common/moment.js"></script>
</head>

<body>
	<input type="hidden" value="${selectedMenu.menu_seq}" id="selectedMenuSeq">
	<input type="hidden" value="${selectedMenu.p_menu_seq}" id="selectedMenuPSeq">
	<input type="hidden" value = "${config.config_seq }" id="config_seq" >
	<div id="page" class="page-wrapper offices-layout">
		<!-- 상단 네비게이션 -->
		<div id="gnb">
			<nav class="navbar-slider navbar-default col7">
				<div class="container top">
					<div class="row">
						<div class="col-sm-6">
							<button type="button" class="navbar-toggle collapsed hidden-md hidden-lg" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
								<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
							</button>
							<a href="/site/main" class="navbar-logo animated" data-animate="fadeIn" data-delay=".1" style="width: 110px;"> <img src="/img/user/eduedu-s.png" class="img-responsive" alt="logo" />
							</a>
						</div>
						<div class="col-sm-6 text-right hidden-xs animated" data-animate="fadeInRight" data-delay=".2">
							<div class="etc_navi">
								<ul>
									<sec:authorize access="isAnonymous()">
										<!-- 비로그인 사용자에게 보이는 내용 -->
										<li><a href="/site/login">로그인</a></li>
										<li><a href="/site/register">회원가입</a></li>
									</sec:authorize>

									<sec:authorize access="isAuthenticated()">
										<!-- 로그인한 사용자에게 보이는 내용 -->
										<li style="margin-top: 3.35px"><sec:authentication property="principal.user.name" var="userName" /> 환영합니다, ${userName}님!</li>
										<li><a href="#" onclick="logout()">로그아웃</a></li>
										<sec:authentication property="principal.user.role_seq" var="roleSeq" />
										<c:if test="${roleSeq != 1}">
											<li><a href="/admin/main">관리자 페이지</a></li>
										</c:if>
									</sec:authorize>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<div id="lnb-web" class="lnb hidden-xs hidden-sm js-cd-header_nav">
					<div class="lnb-bg">
						<div class="container">
							<ul class="lnb-bg-wrap" id="headerWrapper">
							</ul>
						</div>
					</div>
				</div>
				<div id="lnb-mobile" class="lnb hidden-md hidden-lg">
					<ul class="lnb-bg-wrap">
						<li class="sidebar-main animated" data-animate="fadeIn" data-delay=".1"><strong class="logo num-webfont">학교법인 정의학원</strong> <i class="menu-icon ti-close"></i></li>
						<li class="navi1m-loop animated" data-animate="fadeIn" data-delay=".2"><a href="../school/school_intro.html" accesskey="1" class="navi1m"> <strong>학교소개</strong>
						</a>
							<div class="navi2m">
								<ul>
									<li><a href="../school/school_intro.html"> <span> <strong>학교소개</strong>
										</span>
									</a></li>
									<li><a href="../school/school_philosophy.html"> <span> <strong>건학이념</strong>
										</span>
									</a></li>
									<li><a href="../school/school_greetings.html"> <span> <strong>이사장 인사말</strong>
										</span>
									</a></li>
									<li><a href="../school/school_history.html"> <span> <strong>연혁</strong>
										</span>
									</a></li>
									<li><a href="../school/school_organization.html"> <span> <strong>조직도</strong>
										</span>
									</a></li>
									<li><a href="../school/school_rule.html"> <span> <strong>정관 및 규정</strong>
										</span>
									</a></li>
								</ul>
							</div></li>
						<li class="navi1m-loop animated" data-animate="fadeIn" data-delay=".3"><a href="../company_directors/company_founding_officers.html" accesskey="2" class="navi1m"> <strong>이사회</strong>
						</a>
							<div class="navi2m">
								<ul>
									<li><a href="../company_directors/company_founding_officers.html"> <span> <strong>창립임원</strong>
										</span>
									</a></li>
									<li><a href="../company_directors/company_chairman.html"> <span> <strong>역대 이사장</strong>
										</span>
									</a></li>
									<li><a href="../company_directors/company_executive_status.html"> <span> <strong>임원현황</strong>
										</span>
									</a></li>
									<li><a href="../company_directors/company_schedule.html"> <span> <strong>연간 일정 안내</strong>
										</span>
									</a></li>
									<li><a href="../company_directors/company_dir_schedule.html"> <span> <strong>이사회 일정</strong>
										</span>
									</a></li>
									<li><a href="../company_directors/company_proceed.html"> <span> <strong>이사회 회의록</strong>
										</span>
									</a></li>
								</ul>
							</div></li>
						<li class="navi1m-loop animated" data-animate="fadeIn" data-delay=".5"><a href="../board/board_notice.html" accesskey="4" class="navi1m"> <strong>자료실</strong>
						</a>
							<div class="navi2m">
								<ul>
									<li><a href="../board/board_notice.html"> <span> <strong>공지사항</strong>
										</span>
									</a></li>
									<li><a href="../board/board_common.html"> <span> <strong>일반 게시판</strong>
										</span>
									</a></li>
									<li><a href="../board/board_gallery.html"> <span> <strong>갤러리 게시판</strong>
										</span>
									</a></li>
									<li><a href="../board/board_portfolio.html"> <span> <strong>포트폴리오 게시판</strong>
										</span>
									</a></li>
									<li><a href="../board/board_webzin.html"> <span> <strong>웹진 게시판</strong>
										</span>
									</a></li>
									<li><a href="../board/board_block.html"> <span> <strong>블록 게시판</strong>
										</span>
									</a></li>
									<li><a href="../board/board_blog_1.html"> <span> <strong>블로그타입1 게시판</strong>
										</span>
									</a></li>
									<li><a href="../board/board_blog_2.html"> <span> <strong>블로그타입2 게시판</strong>
										</span>
									</a></li>
									<li><a href="../board/board_question.html"> <span> <strong>자주묻는질문 게시판</strong>
										</span>
									</a></li>
								</ul>
							</div></li>
					</ul>
				</div>
			</nav>
		</div>
		<!-- //상단 네비게이션 -->
		<!-- 비쥬얼 테마 조합 샘플 -->
		<!-- //비쥬얼 테마 조합 샘플 -->

	</div>
</body>
<script>
var oneNum = -1;
/* $(document).ready(
function() {
   // Navbar Slider
   var $window = $(window), $lnbBG = $('.lnb-bg'), $Body = $('body');
   // Web
   $('.lnb-bg-wrap').on('mouseenter focusin',
         function() {
            $('.lnb-bg').stop().animate({
               height : 306
            }, 400);
         });
   $('.lnb-bg-wrap').on('mouseleave focusout',
         function() {
            $('.lnb-bg').stop().animate({
               height : 48
            }, 400);
         });
   $('.navi1m-loop').on('mouseenter focusin',
         function() {
            $(this).addClass('active');
         });
   $('.navi1m-loop').on('mouseleave focusout',
         function() {
            $(this).removeClass('active');
         });

   $(".lnb-web-close")
         .children("li")
         .each(
               function(q) {
                  $(this)
                        .mouseleave(
                              function() {
                                 $(
                                       this)
                                       .removeClass(
                                             "active");
                                 $lnbBG
                                       .stop()
                                       .animate(
                                             {
                                                height : 48
                                             },
                                             400,
                                             "easeOutCubic");
                                 if (oneNum != -1) {
                                    activeSub()
                                 }

                              })
                        .focusout(
                              function() {
                                 $(
                                       this)
                                       .mouseleave();
                              })
               })
}) */

   // Mobile SideBar
$(document).ready(function() {
   function activeSub() {
      $("#lnb-web ul").children("li").eq(oneNum).addClass(
            "active");
   }
   // header 요소들을 가져온다.
   $.get('/site/getHeader', function(data) {
      console.log('data : ');
      console.log(data);
      let maxLength;
      // maxLength + a 만큼 div 를 늘려야됨. animate 에.
      // 다만, maxLength + a > 400 일 경우에는 굳이 다시 설정할 필요가 없음. 400으로 고정하면 됨.
      
      // <li class="navi1m-loop animated" data-animate="fadeIn" data-delay=".3"><a href="../school/school_intro.html" accesskey="1" class="navi1m"> 
      // <strong>학교소개</strong>
      //               </a>
      let wrapper = $('#headerWrapper');
      data.parentMenus.forEach(e => {
         let li0 = $('<li class="navi1m-loop animated fadeIn" data-animate="fadeIn" data-delay = ".3" style="visibility: visible; animation-delay: 0.3s;">');
         let str0 = $('<strong>'+e.title+'</strong>');
         if(e.menu_seq == $('#selectedMenuPSeq').val()){
        	 console.log('here tlfgodehla');
        	 str0.css({'font-weight':'bold','color' : '#337ab7'});
         }
         let navBody0 = $('<div class="navi2m">');
         let ul0 = $('<ul>');
         let firstChildSeq;
         for(let i = 0; i < data.childMenus.length; i++){
        	 if(e.menu_seq == data.childMenus[i].p_menu_seq){
            	 firstChildSeq = data.childMenus[i].menu_seq;
            	 break;
             }
         }
         let a0 = $('<a href="/site/menu/'+ firstChildSeq+'" class="navi1m">');
         a0.append(str0);
         li0.append(a0);
         navBody0.append(ul0);
         li0.append(navBody0);
         data.childMenus.forEach(f => {
            if(e.menu_seq == f.p_menu_seq){
               let li1 = $('<li style="width : 50%;">');
               let a1 = $('<a href= "/site/menu/'+f.menu_seq+'">');
               let str1 = $('<strong>'+f.title+'</strong>');
               if(f.menu_seq == $('#selectedMenuSeq').val()){
            	   str1.css('color','#fff');
            	   a1.css('background-color','#393655');
               }
               a1.append(str1);
               li1.append(a1);
               ul0.append(li1);   
            }
         });
         wrapper.append(li0);
      });
      animate();
   });

   function animate(){
      var $window = $(window), $lnbBG = $('.lnb-bg'), $Body = $('body');
      // Web
      $('.lnb-bg-wrap').on('mouseenter focusin',
            function() {
               $('.lnb-bg').stop().animate({
                  height : 306
               }, 400);
            });
      $('.lnb-bg-wrap').on('mouseleave focusout',
            function() {
               $('.lnb-bg').stop().animate({
                  height : 48
               }, 400);
            });
      $('.navi1m-loop').on('mouseenter focusin',
            function() {
               $(this).addClass('active');
            });
      $('.navi1m-loop').on('mouseleave focusout',
            function() {
               $(this).removeClass('active');
            });

      $(".lnb-web-close")
            .children("li")
            .each(
                  function(q) {
                     $(this)
                           .mouseleave(
                                 function() {
                                    $(
                                          this)
                                          .removeClass(
                                                "active");
                                    $lnbBG
                                          .stop()
                                          .animate(
                                                {
                                                   height : 48
                                                },
                                                400,
                                                "easeOutCubic");
                                    if (oneNum != -1) {
                                       activeSub()
                                    }

                                 })
                           .focusout(
                                 function() {
                                    $(
                                          this)
                                          .mouseleave();
                                 })
                  })

      // Mobile SideBar
      $('#lnb-mobile .navi1m-loop')
            .children('a')
            .on(
                  'click',
                  function(event) {
                     event.preventDefault();
                     $(this)
                           .toggleClass(
                                 'active')
                           .next('.navi2m')
                           .slideToggle(
                                 200)
                           .end()
                           .parent(
                                 '.navi1m-loop')
                           .siblings(
                                 '.navi1m-loop')
                           .children('a')
                           .removeClass(
                                 'active')
                           .next('.navi2m')
                           .slideUp(200);
                  });
      // Mobile Toggle
      //open
      $('#lnb-mobile').removeClass('open');
      $('.navbar-slider .navbar-toggle').on(
            'click',
            function() {
               $('#lnb-mobile').animate({
                  left : '0'
               }, 48, "easeOutQuart")
                     .addClass('open');
               $Body.addClass('fixed');
            });

      //close
      $('#lnb-mobile .sidebar-main').on(
            'click',
            function() {
               $('#lnb-mobile').animate({
                  left : '-240'
               }, 48, "easeOutQuart")
                     .removeClass('open');
               $Body.removeClass('fixed');
            });

      // Mobile Search Toggle
      $('.header-wrap .search-toggle').on(
            'click',
            function() {
               $('.header-search-container')
                     .toggleClass("open");
            });
      
      $('#lnb-mobile .navi1m-loop')
      .children('a')
      .on(
            'click',
            function(event) {
               event.preventDefault();
               $(this)
                     .toggleClass(
                           'active')
                     .next('.navi2m')
                     .slideToggle(
                           200)
                     .end()
                     .parent(
                           '.navi1m-loop')
                     .siblings(
                           '.navi1m-loop')
                     .children('a')
                     .removeClass(
                           'active')
                     .next('.navi2m')
                     .slideUp(200);
            });
   // Mobile Toggle
   //open
   $('#lnb-mobile').removeClass('open');
   $('.navbar-slider .navbar-toggle').on(
      'click',
      function() {
         $('#lnb-mobile').animate({
            left : '0'
         }, 48, "easeOutQuart")
               .addClass('open');
         $Body.addClass('fixed');
      });

   //close
   $('#lnb-mobile .sidebar-main').on(
      'click',
      function() {
         $('#lnb-mobile').animate({
            left : '-240'
         }, 48, "easeOutQuart")
               .removeClass('open');
         $Body.removeClass('fixed');
      });

   // Mobile Search Toggle
   $('.header-wrap .search-toggle').on(
      'click',
      function() {
         $('.header-search-container')
               .toggleClass("open");
      });
   }
   
   
});

function logout() {
	fetch('/logout', {
		method: 'POST',
		credentials: 'include', // 쿠키를 포함시키기 위해 필요합니다.
		headers: {
			'Content-Type': 'application/json',
			// JWT를 사용하는 경우, Authorization 헤더를 추가할 수 있습니다.
			// 'Authorization': 'Bearer ' + localStorage.getItem('accessToken')
		}
	})
			.then(response => {
				if (response.ok) {
					console.log('Logged out successfully');
					// 로컬 스토리지에 저장된 토큰이 있다면 삭제
					localStorage.removeItem('accessToken');
					localStorage.removeItem('refreshToken');
					// 로그아웃 후 리다이렉트 (예: 홈페이지로)
					window.location.href = '/';
				} else {
					console.error('Logout failed');
				}
			})
			.catch(error => {
				console.error('Error during logout:', error);
			});
}


</script>
</html>
