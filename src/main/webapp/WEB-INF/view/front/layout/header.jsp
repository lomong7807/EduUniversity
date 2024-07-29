<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>BaseConfig Page</title>
<meta name="author" content="Hom2Box">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

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
	<!-- Sidebar Wrapper -->
	<!-- Quick Bar -->
	<div class="contents-header">
		<button type="button" id="meta-toggle"
			class="top-quick-left btn hidden-md hidden-lg">
			<i class="fa fa-bars"></i>
		</button>
		<a href="javascript:void(0);" class="logo hidden-md hidden-lg"> <img
			src="/img/admin/mandarin-white.svg" alt="mandarin"
			class="mobile-logo" />
		</a>
		<button type="button" id="quick-toggle"
			class="top-quick-right btn hidden-md hidden-lg">
			<i class="fa fa-sort-amount-desc"></i>
		</button>
		<div class="quick-navi-wrap">
			<div class="quick-navi">
				<div class="row">
					<div
						class="col-xs-6 col-sm-6 col-lg-3 md-mb10 m-mb10 xs-mb10 add-col">
						<a href="/_admin/member/member_list.html" class="text-center"><img
							src="../img/admin/quick-01.svg" class="img" alt="quick-01">회원종합관리</a>
					</div>
					<div
						class="col-xs-6 col-sm-6 col-lg-3 md-mb10 m-mb10 xs-mb10 add-col last-col-sm">
						<a href="/_admin/teacher/teacher_list.html" class="text-center"><img
							src="../img/admin/quick-01.svg" class="img" alt="quick-02">강사관리</a>
					</div>
					<div
						class="col-xs-6 col-sm-6 col-lg-3  md-mb10 m-mb10 xs-mb10 last-col-md add-col add-col-xs odd-col">
						<a href="/_admin/realtime/realtime_category_list.html" class="text-center"><img
							src="../img/admin/quick-03.svg" class="img" alt="quick-03">실시간화상
							관리</a>
					</div>

					<div
						class="col-xs-6 col-sm-6 col-lg-3  md-mb10 m-mb10 xs-mb10 last-col-md add-col add-col-xs odd-col last-col-sm">
						<a href="/_admin/room/company_list.html" class="text-center"><img
							src="../img/admin/quick-04.svg" class="img" alt="quick-04">단체방관리</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //Quick Bar -->


	<div id="ubhome-sidebar-wrapper">
		<ul class="ubhome-sidebar">
			<li class="ubhome-sidebar-main"><a href="javascript:void(0);" class="logo"> <img src="/img/admin/mandarin-white.svg" alt="mandarin" />
			</a> <i class="menu-icon fa fa-exchange ubhome-toggle" id="ubhome-toggle"></i> <i class="menu-icon fa fa-exchange ubhome-toggle-mobile" id="ubhome-toggle-mobile"></i></li>

			<li class="ubhome-sidebar-user">
				<div class="media">
					<div class="media-left media-middle">
						<img class="media-object" src="/img/admin/admin-sample.jpg" alt="..." />
					</div>
					<div class="media-body media-middle">
						<h6>환영합니다.</h6>
						<h5>
							관리자님 <a href="javascript:void(0);"> <i class="ti-power-off"></i>
							</a>
						</h5>
					</div>
				</div>
			</li>

			<!-- 환경설정 -->
			<li class="ubhome-sidebar-list"><a href="javascript:void(0);" class="ubhome-sidebar-title"> <i class="menu-icon fa fa-cogs"></i> 환경설정
			</a>
				<ul class="ubhome-sidebar-sub">
					<li><a href="/admin/comnCdMng">코드관리</a></li>
					<li><a href="/admin/baseConfig">기초환경설정</a></li>
					<li><a href="javascript:void(0);">사이트 정책</a></li>
					<!-- 					<li><a href="javascript:void(0);">휴일관리</a></li> -->
					<!-- 					<li><a href="javascript:void(0);">결제관리</a></li> -->
					<!-- 					<li><a href="javascript:void(0);">강좌분류관리</a></li> -->
					<!-- 					<li><a href="javascript:void(0);">레벨분류관리</a></li> -->
					<li><a href="/admin/popup">팝업관리</a></li>
					<li><a href="javascript:void(0);">사이트페이지 관리</a></li>
					<li><a href="javascript:void(0);">사이트 테마 관리</a></li>
					<li><a href="/admin/bannerMng">배너 관리</a></li>
					<!-- 					<li><a href="javascript:void(0);">할인율 설정</a></li> -->
				</ul></li>
			<!-- //환경설정 -->

			<!-- 게시판 -->
			<li class="ubhome-sidebar-list"><a href="javascript:void(0);" class="ubhome-sidebar-title"> <i class="menu-icon fa fa-user-circle-o"></i> 게시판 관리
			</a>
				<ul class="ubhome-sidebar-sub">
					<li><a href="/admin/boardMng">게시판 관리</a></li>
					<li><a href="/admin/boardCategory">게시판 분류 관리</a></li>
				</ul></li>
			<!-- 게시판 종료 -->

			<!-- 메뉴 관리 -->
			<li class="ubhome-sidebar-list"><a href="javascript:void(0);" class="ubhome-sidebar-title"> <i class="menu-icon fa fa-user-circle-o"></i> 메뉴 관리
			</a>
				<ul class="ubhome-sidebar-sub">
					<li><a href="javascript:void(0);">관리자메뉴관리</a></li>
					<li><a href="javascript:void(0);">사이트메뉴관리</a></li>
				</ul></li>
			<!-- 메뉴 종료 -->

			<!-- 회원관리 -->
			<li class="ubhome-sidebar-list"><a href="javascript:void(0);" class="ubhome-sidebar-title"> <i class="menu-icon fa fa-user-circle-o"></i> 회원관리
			</a>
				<ul class="ubhome-sidebar-sub">
					<li><a href="javascript:void(0);">관리자 관리</a></li>
					<li><a href="javascript:void(0);">기업정보관리</a></li>
					<li><a href="javascript:void(0);">기업회원 일괄등록</a></li>
					<li><a href="javascript:void(0);">회원종합관리</a></li>
					<!-- 					<li> -->
					<!-- 						<a href="javascript:void(0);">포인트 관리</a> -->
					<!-- 					</li> -->
					<!-- 					<li> -->
					<!-- 						<a href="javascript:void(0);">쿠폰관리</a> -->
					<!-- 					</li> -->
					<!-- 					<li> -->
					<!-- 						<a href="javascript:void(0);">쿠폰사용내역</a> -->
					<!-- 					</li> -->
				</ul></li>
			<!-- //회원관리 -->

			<!-- 강사관리 -->
			<!-- 			<li class="ubhome-sidebar-list"> -->
			<!-- 				<a href="javascript:void(0);" class="ubhome-sidebar-title"> -->
			<!-- 					<i class="menu-icon fa fa-graduation-cap"></i> 강사관리 -->
			<!-- 				</a> -->
			<!-- 				<ul class="ubhome-sidebar-sub"> -->
			<!-- 					<li> -->
			<!-- 						<a href="../teacher/teacher_list.php">강사관리</a> -->
			<!-- 					</li> -->
			<!-- 					<li> -->
			<!-- 						<a href="../teacher/teacher_time_edit.php">강사시간관리</a> -->
			<!-- 					</li> -->
			<!-- 					<li> -->
			<!-- 						<a href="../teacher/teachergroup_list.php">강사그룹설정</a> -->
			<!-- 					</li> -->
			<!-- 					<li> -->
			<!-- 						<a href="../teacher/teachersurvey_list.php">강사평가</a> -->
			<!-- 					</li> -->
			<!-- 				</ul> -->
			<!-- 			</li> -->
			<!-- //강사관리 -->

			<!-- 강좌관리 -->
			<!-- 			<li class="ubhome-sidebar-list"> -->
			<!-- 				<a href="javascript:void(0);" class="ubhome-sidebar-title"> -->
			<!-- 					<i class="menu-icon fa fa-university"></i> 강좌관리 -->
			<!-- 				</a> -->
			<!-- 				<ul class="ubhome-sidebar-sub"> -->
			<!-- 					<li> -->
			<!-- 						<a href="javascript:void(0);">강좌관리</a> -->
			<!-- 					</li> -->
			<!-- 					<li> -->
			<!-- 						<a href="javascript:void(0);">교재관리</a> -->
			<!-- 					</li> -->
			<!-- 					<li> -->
			<!-- 						<a href="javascript:void(0);">중국어신문관리</a> -->
			<!-- 					</li> -->
			<!-- 				</ul> -->
			<!-- 			</li> -->
			<!-- //강좌관리 -->

			<!-- 주문관리 -->
			<!-- 			<li class="ubhome-sidebar-list"> -->
			<!-- 				<a href="javascript:void(0);" class="ubhome-sidebar-title"> -->
			<!-- 					<i class="menu-icon fa fa-laptop"></i> 주문관리 -->
			<!-- 				</a> -->
			<!-- 				<ul class="ubhome-sidebar-sub"> -->
			<!-- 					<li> -->
			<!-- 						<a href="../order/class_order_list.php">주문관리</a> -->
			<!-- 					</li> -->
			<!-- 					<li> -->
			<!-- 						<a href="javascript:void(0);">레벨테스트관리</a> -->
			<!-- 					</li> -->
			<!-- 					<li> -->
			<!-- 						<a href="javascript:void(0);">재주문관리</a> -->
			<!-- 					</li> -->
			<!-- 				</ul> -->
			<!-- 			</li> -->
			<!-- //주문관리 -->

			<!-- 수업관리 -->
			<!-- 			<li class="ubhome-sidebar-list"> -->
			<!-- 				<a href="javascript:void(0);" class="ubhome-sidebar-title"> -->
			<!-- 					<i class="menu-icon fa fa-book"></i> 수업관리 -->
			<!-- 				</a> -->
			<!-- 				<ul class="ubhome-sidebar-sub"> -->
			<!-- 					<li> -->
			<!-- 						<a href="../schedule/full_calendar.php">수업캘린더관리</a> -->
			<!-- 					</li> -->
			<!-- 					<li> -->
			<!-- 						<a href="javascript:void(0);">수업관리</a> -->
			<!-- 					</li> -->
			<!-- 					<li> -->
			<!-- 						<a href="javascript:void(0);">장기연기관리</a> -->
			<!-- 					</li> -->
			<!-- 					<li> -->
			<!-- 						<a href="javascript:void(0);">결석관리</a> -->
			<!-- 					</li> -->
			<!-- 					<li> -->
			<!-- 						<a href="javascript:void(0);">수업변경로그</a> -->
			<!-- 					</li> -->
			<!-- 					<li> -->
			<!-- 						<a href="javascript:void(0);">영작교정</a> -->
			<!-- 					</li> -->
			<!-- 					<li> -->
			<!-- 						<a href="javascript:void(0);">월평가설정</a> -->
			<!-- 					</li> -->
			<!-- 					<li> -->
			<!-- 						<a href="javascript:void(0);">월평가관리</a> -->
			<!-- 					</li> -->
			<!-- 					<li> -->
			<!-- 						<a href="javascript:void(0);">기간별 출석(기업)</a> -->
			<!-- 					</li> -->
			<!-- 				</ul> -->
			<!-- 			</li> -->
			<!-- //수업관리 -->

			<!-- 고객센터 -->
			<li class="ubhome-sidebar-list"><a href="javascript:void(0);" class="ubhome-sidebar-title"> <i class="menu-icon fa fa-comments-o"></i> 고객센터
			</a>
				<ul class="ubhome-sidebar-sub">
					<li><a href="javascript:void(0);">공지사항</a></li>
					<li><a href="javascript:void(0);">1:1 고객센터</a></li>
					<!-- 					<li> -->
					<!-- 						<a href="javascript:void(0);">강사 1:1 게시판</a> -->
					<!-- 					</li> -->
					<!-- 					<li> -->
					<!-- 						<a href="javascript:void(0);">기업제안신청</a> -->
					<!-- 					</li> -->
					<!-- 					<li> -->
					<!-- 						<a href="javascript:void(0);">직원게시판</a> -->
					<!-- 					</li> -->
					<!-- 					<li> -->
					<!-- 						<a href="javascript:void(0);">학습자료실</a> -->
					<!-- 					</li> -->
					<!-- 					<li> -->
					<!-- 						<a href="javascript:void(0);">매일회화표현</a> -->
					<!-- 					</li> -->
					<li><a href="javascript:void(0);">FAQ</a></li>
				</ul></li>
			<!-- //고객센터 -->

			<!-- 통계관리 -->
			<li class="ubhome-sidebar-list"><a href="javascript:void(0);" class="ubhome-sidebar-title"> <i class="menu-icon fa fa-pie-chart"></i> 통계관리
			</a>
				<ul class="ubhome-sidebar-sub">
					<li><a href="javascript:void(0);">접속통계</a></li>
					<li><a href="javascript:void(0);">회원가입통계</a></li>
					<li>
						<!-- 						<a href="javascript:void(0);">레벨테스트통계</a> -->
					</li>
					<li>
						<!-- 						<a href="javascript:void(0);">수업신청통계</a> -->
					</li>
					<li>
						<!-- 						<a href="javascript:void(0);">일별매출통계</a> -->
					</li>
					<li>
						<!-- 						<a href="javascript:void(0);">월별매출통계</a> -->
					</li>
				</ul></li>
			<!-- //통계관리 -->

			<!-- 언어선택 -->
			<li class="ubhome-sidebar-lang"><a href="javascript:void(0);" class="btn btn-block btn-default" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> 한국어 <span
					class="num-webfont">(KOR)</span> <span class="caret"></span>
			</a>
				<ul class="dropdown-menu" role="menu">
					<li class="active"><a href="javascript:void(0);"> 한국어 <span class="num-webfont">(KOR)</span>
					</a></li>
					<li><a href="javascript:void(0);"> 영어 <span class="num-webfont">(ENG)</span>
					</a></li>
					<li><a href="javascript:void(0);"> 중국어 <span class="num-webfont">(CHN)</span>
					</a></li>
					<li><a href="javascript:void(0);"> 일본어 <span class="num-webfont">(JPN)</span>
					</a></li>
				</ul></li>
			<!-- //언어선택 -->
		</ul>

		<!-- LMS 환경설정 -->
		<div class="row ubhome-sidebar-footer">
			<div class="col-xs-12">
				<a href="javascript:void(0);"> <i class="fa fa-cog"></i> <span>LMS 환경설정</span>
				</a>
			</div>
		</div>
		<!-- //LMS 환경설정 -->
	</div>
</body>
</html>