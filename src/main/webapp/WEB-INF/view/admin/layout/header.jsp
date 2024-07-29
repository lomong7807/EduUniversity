<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/themify-icons/1.0.1/css/themify-icons.css"
	rel="stylesheet">
<link href="/css/common/animate.min.css" rel="stylesheet">
<link href="/css/common/bootstrap.min.css" rel="stylesheet">
<link href="/css/common/bootstrap-datetimepicker.min.css"
	rel="stylesheet">
<link href="/css/common/c3.min.css" rel="stylesheet">
<link href="/css/common/themify.min.css" rel="stylesheet">
<link href="/css/common/NotoSansCJKkr.css" rel="stylesheet">
<link href="/css/common/NotoSansKR.css" rel="stylesheet">
<link href="/css/common/common.css" rel="stylesheet">
<link href="/css/common/common.responsive.css" rel="stylesheet">
<link href="/css/admin/theme.css" rel="stylesheet">

<!-- Scripts -->
<script src="/js/common/modernizr.min.js"></script>
<script src="/js/common/moment.js"></script>
<script src="/js/common/jquery.min.js"></script>
<script src="/js/common/animate-plus.min.js"></script>
<script src="/js/common/jquery-ui.min.js" title="제이쿼리 UI"></script>
<script src="/js/common/jquery-migrate-git.min.js"
	title="제이쿼리 하위버전 호환 플로그인"></script>
<script src="/js/common/jquery.easing.js" title="이징"></script>
<script src="/js/common/bootstrap.min.js" title="부트스트랩"></script>
<script src="/js/common/bootstrap-switch.min.js" title="부트스트랩 switch"></script>
<script src="/js/common/bootstrap-datetimepicker.min.js"
	title="부트스트랩 DateTimePicker"></script>
<script src="/js/common/c3.min.js" title="차트 api"></script>
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
					<div class="col-xs-6 col-sm-6 col-lg-3 md-mb10 m-mb10 xs-mb10 add-col">
						<a href="/site/main" class="text-center">
							<img src="../img/admin/home.png" class="img" alt="home">홈으로
						</a>
					</div>
					<div class="col-xs-6 col-sm-6 col-lg-3 md-mb10 m-mb10 xs-mb10 add-col last-col-sm">
						<a href="/admin/userMng" class="text-center">
							<img src="../img/admin/quick-04.svg" class="img" alt="quick-04">회원종합 관리
						</a>
					</div>
					<div class="col-xs-6 col-sm-6 col-lg-3  md-mb10 m-mb10 xs-mb10 last-col-md add-col add-col-xs odd-col">
						<a href="/admin/adminMng" class="text-center">
							<img src="../img/admin/admin.png" class="img" alt="admin">관리자 관리
						</a>
					</div>

					<div class="col-xs-6 col-sm-6 col-lg-3  md-mb10 m-mb10 xs-mb10 last-col-md add-col add-col-xs odd-col last-col-sm">
						<a href="/admin/smsMng" class="text-center">
							<img src="../img/admin/message.png" class="img" alt="message">SMS 발송 관리
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //Quick Bar -->


	<div id="ubhome-sidebar-wrapper">
		<ul class="ubhome-sidebar" id="sidebar">
			<li class="ubhome-sidebar-main"><a href="/admin/main"
				class="logo"> <img src="/img/admin/admin_logo.png"
					alt="mandarin" />
			</a> <i class="menu-icon fa fa-exchange ubhome-toggle" id="ubhome-toggle"></i>
				<i class="menu-icon fa fa-exchange ubhome-toggle-mobile"
				id="ubhome-toggle-mobile"></i></li>

			<li class="ubhome-sidebar-user">
				<div class="media">
					<div class="media-left media-middle">
						<img class="media-object" src="/img/admin/admin-sample.jpg"
							alt="..." />
					</div>
					<div class="media-body media-middle">
						<h6>환영합니다.</h6>
						<sec:authorize access="isAuthenticated()">
						<h5>
							<sec:authentication property="principal.user.name" var="userName" />
							${userName}님
							<a href="#" onclick="logout()">
								<i class="ti-power-off"></i>
							</a>
						</h5>
						</sec:authorize>
					</div>
				</div>
			</li>

			<!-- 환경설정 -->
			<!-- <li class="ubhome-sidebar-list"><a href="javascript:void(0);" class="ubhome-sidebar-title"> <i class="menu-icon fa fa-cogs"></i> 환경설정
			</a>
				<ul class="ubhome-sidebar-sub">
					<li><a href="/admin/comnCdMng">코드관리</a></li>
					<li><a href="/admin/baseConfig">기초환경설정</a></li>
					<li><a href="javascript:void(0);">사이트 정책</a></li>
										<li><a href="javascript:void(0);">휴일관리</a></li>
										<li><a href="javascript:void(0);">결제관리</a></li>
										<li><a href="javascript:void(0);">강좌분류관리</a></li>
										<li><a href="javascript:void(0);">레벨분류관리</a></li>
					<li><a href="/admin/popup">팝업관리</a></li>
					<li><a href="javascript:void(0);">사이트페이지 관리</a></li>
					<li><a href="javascript:void(0);">사이트 테마 관리</a></li>
					<li><a href="/admin/bannerMng">배너 관리</a></li>
										<li><a href="javascript:void(0);">할인율 설정</a></li>
				</ul></li> -->
			<!-- //환경설정 -->

			<!-- 게시판 -->
			<!-- <li class="ubhome-sidebar-list"><a href="javascript:void(0);" class="ubhome-sidebar-title"> <i class="menu-icon fa fa-user-circle-o"></i> 게시판 관리
			</a>
				<ul class="ubhome-sidebar-sub">
					<li><a href="/admin/boardMng">게시판 관리</a></li>
					<li><a href="/admin/boardCategory">게시판 분류 관리</a></li>
				</ul></li>
			게시판 종료

			메뉴 관리
			<li class="ubhome-sidebar-list"><a href="javascript:void(0);" class="ubhome-sidebar-title"> <i class="menu-icon fa fa-user-circle-o"></i> 메뉴 관리
			</a>
				<ul class="ubhome-sidebar-sub">
					<li><a href="javascript:void(0);">관리자메뉴관리</a></li>
					<li><a href="javascript:void(0);">사이트메뉴관리</a></li>
				</ul></li> -->
			<!-- 메뉴 종료 -->

			<!-- 회원관리 -->
			<!-- <li class="ubhome-sidebar-list"><a href="javascript:void(0);" class="ubhome-sidebar-title"> <i class="menu-icon fa fa-user-circle-o"></i> 회원관리
			</a>
				<ul class="ubhome-sidebar-sub">
					<li><a href="/admin/adminMng">관리자 관리</a></li>
					<li><a href="javascript:void(0);">기업정보관리</a></li>
					<li><a href="javascript:void(0);">기업회원 일괄등록</a></li>
					<li><a href="/admin/userMng">회원종합관리</a></li>
										<li>
											<a href="javascript:void(0);">포인트 관리</a>
										</li>
										<li>
											<a href="javascript:void(0);">쿠폰관리</a>
										</li>
										<li>
											<a href="javascript:void(0);">쿠폰사용내역</a>
										</li>
				</ul></li> -->
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
			<!-- <li class="ubhome-sidebar-list"><a href="javascript:void(0);" class="ubhome-sidebar-title"> <i class="menu-icon fa fa-comments-o"></i> 고객센터
			</a>
				<ul class="ubhome-sidebar-sub">
					<li><a href="javascript:void(0);">공지사항</a></li>
					<li><a href="javascript:void(0);">1:1 고객센터</a></li>
										<li>
											<a href="javascript:void(0);">강사 1:1 게시판</a>
										</li>
										<li>
											<a href="javascript:void(0);">기업제안신청</a>
										</li>
										<li>
											<a href="javascript:void(0);">직원게시판</a>
										</li>
										<li>
											<a href="javascript:void(0);">학습자료실</a>
										</li>
										<li>
											<a href="javascript:void(0);">매일회화표현</a>
										</li>
					<li><a href="javascript:void(0);">FAQ</a></li>
				</ul></li> -->
			<!-- //고객센터 -->

			<!-- 통계관리 -->
			<!-- <li class="ubhome-sidebar-list"><a href="javascript:void(0);" class="ubhome-sidebar-title"> <i class="menu-icon fa fa-pie-chart"></i> 통계관리
			</a>
				<ul class="ubhome-sidebar-sub">
					<li><a href="javascript:void(0);">접속통계</a></li>
					<li><a href="javascript:void(0);">회원가입통계</a></li>
					<li>
												<a href="javascript:void(0);">레벨테스트통계</a>
					</li>
					<li>
												<a href="javascript:void(0);">수업신청통계</a>
					</li>
					<li>
												<a href="javascript:void(0);">일별매출통계</a>
					</li>
					<li>
												<a href="javascript:void(0);">월별매출통계</a>
					</li>
				</ul></li>
			//통계관리
		</ul> -->

			<!-- LMS 환경설정 -->
			<!-- <div class="row ubhome-sidebar-footer">
				<div class="col-xs-12">
					<a href="javascript:void(0);"> <i class="fa fa-cog"></i> <span>LMS 환경설정</span>
					</a>
				</div>
			</div> -->
			<!-- //LMS 환경설정 -->
	</div>
</body>
<script>
$(document).ready(function(){
	console.log('here')
getData();
async function getData(){
  try {
    const response = await $.get('/admin/getAllMenus');
    const data = response;  // Assuming the response is already parsed as JSON

    let rootMenuList = [];
    data.forEach(e => {
      if (e.p_menu_seq === 0) {
        rootMenuList.push(e);
      }
    });
    for (let i = 0; i < rootMenuList.length; i++) {
      let li0 = $('<li class="ubhome-sidebar-list">');
      let a0 = $('<a href="javascript:void(0);" class="ubhome-sidebar-title"></a>');
      let i0 = $('<i class="' + rootMenuList[i].icon_class + '"></i>');

      a0.append(i0); // 아이콘을 먼저 추가
      a0.append(' ' + rootMenuList[i].title); // 텍스트를 뒤에 추가
      li0.append(a0);

      let ul = $('<ul class="ubhome-sidebar-sub"></ul>');
      li0.append(ul);
      data.forEach(menu => {
        if (menu.p_menu_seq === rootMenuList[i].menu_seq) {
          let li1 = $('<li>');
          li1.append($('<a href="' + menu.url + '">' + menu.title + '</a>'));
          ul.append(li1);
        }
      });
      $('#sidebar').append(li0);
    }

	setActiveMenu(data);
    
    let script = document.createElement('script');
    script.src = "/js/admin/customer.script.js";
    document.body.append(script);
  } catch (error) {
    console.error('Error fetching data:', error);
  }
}
	function setActiveMenu(data) {
		const currentUrl = window.location.pathname;

		data.forEach(menu => {
			if (menu.url === currentUrl) {
				const activeMenu = $(`a[href="`+currentUrl+`"]`).parent('li');
				activeMenu.addClass('active');
				activeMenu.parents('ul.ubhome-sidebar-sub').prev('a.ubhome-sidebar-title').addClass('active');
				activeMenu.closest('ul.ubhome-sidebar-sub').show();
			}
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