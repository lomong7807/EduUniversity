<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>JSP 내부프로젝트</title>
<!-- style sheet -->

<!--[if lt IE 9]>
      <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
      <script src="src/vendor/html5shiv.js"></script>
      <script src="src/vendor/respond.js"></script>
    <![endif]-->
</head>
<link rel="stylesheet" href="/css/bootstrap/bootstrap.css">
<body>
	<div class="container relative px-4 mx-auto overflow-hidden text-sm leading-snug tracking-tight isolate">
		<div class="visual-bg-a"></div>
		<div class="visual-bg-b"></div>
		<div class="max-w-2xl px-4 py-16 mx-auto sm:px-6 sm:py-24 lg:max-w-7xl lg:px-8">
			<h2 class="text-2xl font-bold tracking-tight text-gray-900">JSP 사용자 화면 작업상태</h2>
			<p class="mt-1 text-gray-500">
				1단계 디자인<span class="mx-3 text-gray-200">|</span>2단계 퍼플리싱<span class="mx-3 text-gray-200">|</span> 3단계 개발
			</p>
			<div class="my-4 text-xl">
				<span class="inline-flex items-center px-4 py-1.5 text-sm font-semibold text-white bg-blue-700 rounded-md ring-1 ring-inset ring-blue-700/10">우선순위</span> <span class="inline-flex items-center px-4 py-1.5 text-sm font-semibold text-gray-600 rounded-md bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> <span class="inline-flex items-center px-4 py-1.5 text-sm font-semibold text-red-700 rounded-md bg-red-50 ring-1 ring-inset ring-red-600/10">일정도래</span> <span class="inline-flex items-center px-4 py-1.5 text-sm font-semibold text-yellow-800 rounded-md bg-yellow-50 ring-1 ring-inset ring-yellow-600/20">작업중</span> <span class="inline-flex items-center px-4 py-1.5 text-sm font-semibold text-green-700 rounded-md bg-green-50 ring-1 ring-inset ring-green-600/20">작업완료</span>
			</div>
			<div class="grid grid-cols-1 mt-6 gap-x-6 gap-y-10 md:grid-cols-2 xl:grid-cols-3 xl:gap-x-8">

				<!-- Loop -->
				<div>
					<h5 class="mb-4 pb-2 text-lg font-bold text-blue-800 border-b border-gray-200 border-dashed">레이아웃</h5>
					<ul class="mt-2 mb-4 list-none">
						<li><a target="_blank" href="https://temp.bzip.kr/mandarin/theme/basic/index.php">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md 
            bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> TOP
							</a></li>
						<li><a target="_blank" href="https://temp.bzip.kr/mandarin/theme/basic/index.php">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> HEADER
							</a></li>
						<li><a target="_blank" href="https://temp.bzip.kr/mandarin/theme/basic/index.php">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> FOOTER
							</a></li>
						<li><a target="_blank" href="https://temp.bzip.kr/mandarin/theme/basic/index.php">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> MAIN
							</a></li>
						<li><a target="_blank" href="https://temp.bzip.kr/mandarin/theme/basic/index.php">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> 모바일레프트 메뉴
							</a></li>
						<li><a target="_blank" href="https://temp.bzip.kr/pilates/theme/basic/main.php">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> 검색결과(메뉴)
							</a></li>
					</ul>
				</div>
				<!-- //Loop -->
				<!-- Loop -->
				<div>
					<h5 class="mb-4 pb-2 text-lg font-bold text-blue-800 border-b border-gray-200 border-dashed">로그인/회원가입</h5>
					<ul class="mt-2 mb-4 list-none">
						<li><a target="_blank" href="https://temp.bzip.kr/mandarin/theme/basic/membership_login.php?mem_userid=df&password=df">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md 
            bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> 로그인
							</a></li>
						<li><a target="_blank" href="https://temp.bzip.kr/mandarin/theme/basic/membership_agree.php">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> 약관동의(회원가입)
							</a></li>
						<li><a target="_blank" href="https://temp.bzip.kr/mandarin/theme/basic/membership_regist.php">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> 회원가입
							</a></li>
						<li><a target="_blank" href="https://temp.bzip.kr/mandarin/theme/basic/membership_modify.php">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> 내정보수정
							</a></li>
						<li><a target="_blank" href="https://temp.bzip.kr/mandarin/theme/basic/membership_idpwfind.php">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> 아이디/비밀번호찾기
							</a></li>
					</ul>
				</div>
				<!-- //Loop -->
				<!-- Loop -->
				<div>
					<h5 class="mb-4 pb-2 text-lg font-bold text-blue-800 border-b border-gray-200 border-dashed">학교소개</h5>
					<ul class="mt-2 mb-4 list-none">
						<li><a target="_blank" href="https://temp.bzip.kr/mandarin/theme/basic/contents.php">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md 
            bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> 학교소개
							</a></li>
						<li><a target="_blank" href="https://temp.bzip.kr/mandarin/theme/basic/contents.php">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> 건학이념
							</a></li>
						<li><a target="_blank" href="https://temp.bzip.kr/mandarin/theme/basic/contents.php">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> 이사장인삿말
							</a></li>
						<li><a target="_blank" href="https://temp.bzip.kr/mandarin/theme/basic/history.php">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> 연혁
							</a></li>
						<li><a target="_blank" href="http://chungui.ac.kr/site/topmenu001/introduction5.html">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> 조직도
							</a></li>
						<li><a target="_blank" href="https://temp.bzip.kr/mandarin/theme/basic/bbs_general.php">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> 정관및규정
							</a></li>

					</ul>
				</div>
				<!-- //Loop -->
				<!-- Loop -->
				<div>
					<h5 class="mb-4 pb-2 text-lg font-bold text-blue-800 border-b border-gray-200 border-dashed">이사회</h5>
					<ul class="mt-2 mb-4 list-none">
						<li><a target="_blank" href="https://temp.bzip.kr/mandarin/theme/basic/contents.php">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md 
            bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> 창립임원
							</a></li>
						<li><a target="_blank" href="https://temp.bzip.kr/mandarin/theme/basic/bbs_webzine.php">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> 역대이사장
							</a></li>
						<li><a target="_blank" href="https://temp.bzip.kr/mandarin/theme/basic/contents.php">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> 임원현황
							</a></li>
						<li><a target="_blank" href="http://chungui.ac.kr/site/topmenu002/executive4.html">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> 연간일정안내
							</a></li>
						<li><a target="_blank" href="http://chungui.ac.kr/board/index.html?board_id=event&action=list">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> 이사회일정
							</a></li>
						<li><a target="_blank" href="https://temp.bzip.kr/mandarin/theme/basic/bbs_general.php">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> 이사회회의록
							</a></li>

					</ul>
				</div>
				<!-- //Loop -->
				<!-- Loop -->
				<div>
					<h5 class="mb-4 pb-2 text-lg font-bold text-blue-800 border-b border-gray-200 border-dashed">설치학교</h5>
					<ul class="mt-2 mb-4 list-none">
						<li><a target="_blank" href="https://temp.bzip.kr/mandarin/theme/basic/contents.php">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md 
            bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> 부속학교1
							</a></li>
					</ul>
				</div>
				<!-- //Loop -->
				<!-- Loop -->
				<div>
					<h5 class="mb-4 pb-2 text-lg font-bold text-blue-800 border-b border-gray-200 border-dashed">자료실</h5>
					<ul class="mt-2 mb-4 list-none">
						<li><a target="_blank" href="https://temp.bzip.kr/mandarin/theme/basic/bbs_general.php">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md 
            bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> 공지사항
							</a></li>
						<li><a target="_blank" href="https://temp.bzip.kr/mandarin/theme/basic/bbs_block.php">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> 게시판(이미지)
							</a></li>
						<li><a target="_blank" href="https://temp.bzip.kr/mandarin/theme/basic/bbs_general.php?BoardMode=view">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> 글 조회화면
							</a></li>
						<li><a target="_blank" href="https://temp.bzip.kr/mandarin/theme/basic/bbs_general.php?BoardMode=write">
								<span class="inline-flex items-center px-3 py-1 mr-2 text-[12px]text-gray-600 rounded-md bg-gray-50 ring-1 ring-inset ring-gray-500/10">작업전</span> 글 수정,등록화면
							</a></li>
					</ul>
				</div>
				<!-- //Loop -->
			</div>
		</div>
	</div>
</body>
</html>
