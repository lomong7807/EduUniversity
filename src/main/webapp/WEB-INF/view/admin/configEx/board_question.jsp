<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
<title>이사회</title>
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

	<!-- 콘테이너 -->
	<div class="container">
		<div class="row">
			<!-- 사이드 -->
			<div id="sidebar" class="col-md-3">
				<div class="sidebar_wrap">
					<h2 class="page-label labels">
						<strong>자료실</strong> <span
							class="pull-right clickable hidden-md hidden-lg"><i
							class="fa fa-chevron-up"></i></span>
					</h2>

					<ul id="sidebar_navi" class="list-group">
						<li class="list-group-item"><a
							href="../board/board_notice.html" class=""><span><strong>공지사항</strong></span></a>
						</li>
						<li class="list-group-item"><a
							href="../board/board_common.html" class=""><span><strong>일반
										게시판</strong></span></a></li>
						<li class="list-group-item"><a
							href="../board/board_gallery.html" class=""><span><strong>갤러리
										게시판</strong></span></a></li>
						<li class="list-group-item"><a
							href="../board/board_portfolio.html" class=""><span><strong>포트폴리오
										게시판</strong></span></a></li>
						<li class="list-group-item"><a
							href="../board/board_webzin.html" class=""><span><strong>웹진
										게시판</strong></span></a></li>
						<li class="list-group-item"><a
							href="../board/board_block.html" class=""><span><strong>블럭
										게시판</strong></span></a></li>
						<li class="list-group-item"><a
							href="../board/board_blog_1.html" class=""><span><strong>블로그타입1
										게시판</strong></span></a></li>
						<li class="list-group-item"><a
							href="../board/board_blog_2.html" class=""><span><strong>블로그타입2
										게시판</strong></span></a></li>
						<li class="list-group-item"><a
							href="../board/question.html" class=""><span><strong>자주묻는질문
										게시판</strong></span></a></li>
						<!--<li class="list-group-item">
                  <a href="history.php"><span>타임라인(연혁)</span></a>
                </li>
                <li class="list-group-item">
                  <a href="map.php"><span>찾아오시는길</span></a>
                </li>
                <li class="list-group-item">
                  <a href="sitemap.php"><span>사이트맵</span></a>
                </li>
                <li class="list-group-item">
                  <a href="error.php"><span>에러페이지</span></a>
                </li>
                <li class="list-group-item">
                  <a href="bootstrap.php"><span>부트스트랩 샘플</span></a>
                </li>-->
					</ul>
				</div>
			</div>

			<script type="text/javascript">
				$(document).ready(function() {
					// SlideBar
					$("#sidebar_navi").metisMenu();
				});
			</script>
			<!-- //사이드 -->

			<!-- 콘텐츠 -->
			<div id="container" class="col-md-9">
				<div class="page-header">
					<div class="row">
						<div class="col-md-5 pl10">
							<h2>자주묻는질문 게시판</h2>
						</div>
						<div class="col-md-7 text-right">
							<ol class="breadcrumb hidden-xs">
								<li><a href="./"><i class="glyphicon glyphicon-home"></i>
										홈</a></li>
								<li>자료실</li>
								<li class="active">자주묻는질문 게시판</li>
							</ol>
						</div>
					</div>
				</div>
				<div id="customer_container">
					<!-- 게시판 목록 -->
					<!-- 카테고리 타입1 -->
					<div class="category-wrap">
						<ul>
							<li class="total"><a href="#"><strong>전체</strong></a></li>
							<li><a href="#"><strong>카테고리1</strong></a></li>
							<li><a href="#"><strong>카테고리2</strong></a></li>
							<li class="active"><a href="#"><strong>카테고리3</strong></a></li>
							<li><a href="#"><strong>카테고리4</strong></a></li>
							<li><a href="#"><strong>카테고리5</strong></a></li>
							<li><a href="#"><strong>카테고리6</strong></a></li>
							<li><a href="#"><strong>카테고리7</strong></a></li>
							<li><a href="#"><strong>카테고리8</strong></a></li>
							<li><a href="#"><strong>카테고리9</strong></a></li>
							<li><a href="#"><strong>카테고리10</strong></a></li>
							<li><a href="#"><strong>카테고리11</strong></a></li>
							<li><a href="#"><strong>카테고리12</strong></a></li>
							<li><a href="#"><strong>카테고리13</strong></a></li>
							<li><a href="#"><strong>카테고리14</strong></a></li>
							<li><a href="#"><strong>카테고리15</strong></a></li>
						</ul>
					</div>
					<!-- //카테고리 타입1 -->

					<!-- 총게시물 수 & 카테고리 타입2 -->
					<div class="row mb20">
						<div class="col-sm-7">
							<!-- 카테고리 타입2 -->
							<a href="javascript:void(0);" class="btn btn-default"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">카테고리 <span class="caret ml5"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">카테고리1</a></li>
								<li><a href="#">카테고리2</a></li>
								<li class="active"><a href="#">카테고리3</a></li>
								<li><a href="#">카테고리4</a></li>
								<li><a href="#">카테고리5</a></li>
								<li><a href="#">카테고리6</a></li>
								<li><a href="#">카테고리7</a></li>
								<li><a href="#">카테고리8</a></li>
								<li><a href="#">카테고리9</a></li>
								<li><a href="#">카테고리10</a></li>
								<li><a href="#">카테고리11</a></li>
								<li><a href="#">카테고리12</a></li>
								<li><a href="#">카테고리13</a></li>
								<li><a href="#">카테고리14</a></li>
								<li><a href="#">카테고리15</a></li>
							</ul>
							<!-- //카테고리 타입2 -->
						</div>
						<div class="col-sm-5 text-right">
							<!-- 총 게시물 수 -->
							<div class="pagetotal num-webfont">
								Total Article<strong class="text-primary">3</strong> / Total
								Pages<strong class="text-info">1</strong>
							</div>
							<!-- //총 게시물 수 -->
						</div>
					</div>
					<!-- //총게시물 수 & 카테고리 타입2 -->

					<!-- 목록 검색 -->
					<form class="form-inline panel panel-default text-center"
						name="searchForm" action="#">
						<fieldset>
							<legend class="sr-only">게시글의 분야,제목으로 검색하세요.</legend>
							<div class="panel-body">
								<div class="form-group">
									<label for="search" class="sr-only">검색 옵션</label> <select
										id="search" name="search" class="form-control">
										<option value="title">제목</option>
										<option value="content">내용</option>
									</select>
								</div>
								<div class="input-group">
									<label for="searchstring" class="sr-only">키워드입력</label> <input
										type="text" id="searchstring" name="searchstring" value=""
										class="form-control" placeholder="키워드입력" /> <span
										class="input-group-btn"><button type="submit"
											class="btn btn-default">검색</button></span>
								</div>
							</div>
						</fieldset>
					</form>
					<!-- //목록 검색 -->

					<!-- 게시물 -->
					<div class="panel-group faq" id="faq">
						<!-- Loop -->
						<div class="panel panel-default">
							<div class="panel-heading">
								<a class="panel-title accordion-toggle" data-toggle="collapse"
									data-parent="#faq" href="#collapse1010"> <span
									class="faq_q"><strong>홈페이지의 구축은 끝이 아니라 시작입니다.</strong></span>
								</a>
							</div>
							<div id="collapse1010" class="panel-collapse collapse in">
								<div class="panel-body">
									<div class="faq_a text-justify">어떤 홈페이지인가?는 유지를 어떻게 하는가에
										결정됩니다. 안전한 개인정보, 편한 유지보수와 확장성을 가진 전자전부 표준프레임워크의 기능을 그대로 구현한
										표준의 표준!! 만다린 전화화상중국어를 제안합니다.</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="panel panel-default">
							<div class="panel-heading">
								<a class="panel-title accordion-toggle collapsed"
									data-toggle="collapse" data-parent="#faq" href="#collapse1009">
									<span class="faq_q"><strong>무료 홈페이지 혹은 템플릿디자인으로
											홈페이지를 만들려고 고민하고 계신가요?</strong></span>
								</a>
							</div>
							<div id="collapse1009" class="panel-collapse collapse">
								<div class="panel-body">
									<div class="faq_a text-justify">
										템플릿 홈페이지란 이미 만들어진 디자인에 내용만 바꾸어 사용하는 형태로 공산품 같은 의미입니다. 가령, 업무상
										필요로 특정 회사와 계약이 필요한 상황입니다. 포털사이트에서 검색하였습니다.<br /> <br />
										검색결과에 뜨는 사이트들이 너무 많습니다. 열심히 들여다보지만 내용도 디자인도 비슷한 홈페이지가 수십개라 슬슬
										집중력이 떨어지기 시작했습니다. 홈페이지에 기업의 개성과 독자성이 없으면 지루할 뿐입니다. 사이트 이탈하는
										비율이 높아집니다. 한마디로 메인페이지만 보고 나간다는 겁니다.
									</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="panel panel-default">
							<div class="panel-heading">
								<a class="panel-title accordion-toggle collapsed"
									data-toggle="collapse" data-parent="#faq" href="#collapse1008">
									<span class="faq_q"><strong>기억에 강렬히 남는 매력적인
											홈페이지는 행운을 가져다줍니다.</strong></span>
								</a>
							</div>
							<div id="collapse1008" class="panel-collapse collapse">
								<div class="panel-body">
									<div class="faq_a text-justify">홈페이지만 만들어 두신다고 사업이 잘되는 것은
										아니지만, 소비자 혹은 기업체에 강렬히 기억 남을 만한 홈페이지는 제작비용의 몇십, 몇백배의 수익을 가져다줄 수
										있습니다. 기억에 오래 남을 만한 웹사이트를 만들기 위해선 홈페이지 제작을 맡기고 가만히 기다리시는 게 아니라
										어떤 강렬한 인상을 남기실지에 대한 회사의 슬로건이나 회사를 어필할 수 있는 문장, 홈페이지에 기재될 내용을
										정성껏 준비해주시면 감사하겠습니다. 사업수완(사업성)이 좋으시거나 화술이 뛰어나시더라도 홈페이지 하나 잘못
										만드시면 밑 빠진 독에 물을 붓는 상황이 되실 수도 있겠습니다. 그리고 홈페이지에는 무엇보다 사진이 굉장히
										중요합니다. 클라이언트의 요구사항과 최신기술, 디자인 경향을 접목했을지라도 제품사진, 회사전경사진의 퀄리티가
										떨어진다면 아무리 실력 좋은 디자이너라도 클라이언트를 만족하게 하기 어렵습니다. 주변 사람들이나 스스로 보시기에
										사진의 퀄리티가 떨어진다면 다소 비용을 들이시더라도 사진에 투자하시기를 권장해 드립니다.</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="panel panel-default">
							<div class="panel-heading">
								<a class="panel-title accordion-toggle collapsed"
									data-toggle="collapse" data-parent="#faq" href="#collapse1007">
									<span class="faq_q"><strong>디자인은 젊은 감각 만다린
											전화화상중국어에 맡겨주세요.</strong></span>
								</a>
							</div>
							<div id="collapse1007" class="panel-collapse collapse">
								<div class="panel-body">
									<div class="faq_a text-justify">상담을 통해 제작 시에 필요한 사항, 요구하신
										홈페이지 컨셉을 요즘 기기환경 및 디자인 경향에 맞게 제작하여 드립니다. 주 고객층의 나이 및 성향에 대한
										정보도 빠짐없이 기재하여 주시면 디자인 작업 시 반영하여 홈페이지를 만들어 드립니다. 주 고객층의 성향에 맞추는
										것은 굉장히 중요한 작업요소 중의 하나로써, 만다린 전화화상중국어라는 업체명을 가진 이유 중 하나는 다음과
										같습니다. 본래 홈페이지라는 것은 하나의 웹사이트에 접속하였을 때 첫 번째로 보이는 페이지를 의미하고 있지만
										많은 분이 홈페이지라는 용어로 인식하고 있으므로 저희 만다린 전화화상중국어에서도 홈페이지라는 용어를 많이
										이용하였습니다. 요구사항이나 필요한 프로그램 기능, 홈페이지의 컨셉 등을 잘 기재하여 온라인 상담을
										신청해주시거나 카톡으로 문의하시면 정성껏 답변을 준비하여 귀사에 도움이 될 수 있도록 하겠습니다.</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="panel panel-default">
							<div class="panel-heading">
								<a class="panel-title accordion-toggle collapsed"
									data-toggle="collapse" data-parent="#faq" href="#collapse1006">
									<span class="faq_q"><strong>생활 속에 자리 잡은 스마트폰
											그리고 모바일웹의 필요성</strong></span>
								</a>
							</div>
							<div id="collapse1006" class="panel-collapse collapse">
								<div class="panel-body">
									<div class="faq_a text-justify">
										스마트폰 보급률 세계 2위 대한민국, 불과 몇 년 전만 해도 아침 출퇴근 지하철에는 메트로, 데일리뉴스 등의
										일간지를 보는 풍경이 주를 이루었습니다. 하지만 지금은 음식점을 갈 때도 검색창에 "가산동 맛집" 이렇게 검색을
										하고 방문 후기를 찾아 메뉴판을 미리 보고 음식을 사진으로 보고 지도앱으로 교통편을 검색한 후 방문하게 됩니다.
										가끔은 차량 내비게이션이 없으면 어떻게 목적지로 갈수있을 까라는 생각을 하곤 합니다.<br /> <br />
										옛날엔 전국지도 책자를 보고 목적지를 가던 시절도 있었는데 말이죠. 아직도 대다수 홈페이지는 플래시사용으로
										모바일에서 보이지 않거나 구조가 틀어져 정상적으로 보이지 않습니다. 이러한 홈페이지는 이탈률이 높은 홈페이지 중
										하나이죠. 이렇게 모바일에 보이지 않은 홈페이지는 고객 또는 거래업체에 신뢰도를 삭감시킬 수 있는 요인이
										됩니다. 모바일에서 PC화면이 잘 보이더라도 확대하여 페이지를 봐야한다면 매우 불편할 것입니다. 이제 모바일웹은
										필수입니다.
									</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="panel panel-default">
							<div class="panel-heading">
								<a class="panel-title accordion-toggle collapsed"
									data-toggle="collapse" data-parent="#faq" href="#collapse1005">
									<span class="faq_q"><strong>만다린 전화화상중국어 모바일웹의
											기본형</strong></span>
								</a>
							</div>
							<div id="collapse1005" class="panel-collapse collapse">
								<div class="panel-body">
									<div class="faq_a text-justify">옛날엔 전국지도 책자를 보고 목적지를 가던
										시절도 있었는데 말이죠. 아직도 대다수 홈페이지는 플래시사용으로 모바일에서 보이지 않거나 구조가 틀어져
										정상적으로 보이지 않습니다. 이러한 홈페이지는 이탈률이 높은 홈페이지 중 하나이죠. 이렇게 모바일에 보이지 않은
										홈페이지는 고객 또는 거래업체에 신뢰도를 삭감시킬 수 있는 요인이 됩니다. 모바일에서 PC화면이 잘 보이더라도
										확대하여 페이지를 봐야한다면 매우 불편할 것입니다. 이제 모바일웹은 필수입니다.</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="panel panel-default">
							<div class="panel-heading">
								<a class="panel-title accordion-toggle collapsed"
									data-toggle="collapse" data-parent="#faq" href="#collapse1004">
									<span class="faq_q"><strong>잔금 50%입금 후 작업된 사이트를
											실제 도메인과 호스팅에 연결합니다.</strong></span>
								</a>
							</div>
							<div id="collapse1004" class="panel-collapse collapse">
								<div class="panel-body">
									<div class="faq_a text-justify">
										기존에는 브랜드가 고객에게 일방향적인 커뮤니케이션을 진행하였습니다.<br /> 제품 이 지난 특장점, 제품의
										디자인, 제품의 USP를 FACT 중심으로 전달하고, 비쥬얼한 표현으로 고객들에게 단발적인 Impression을
										주는데 주력하였습니다. 하지만 최근에는 고객과의 양방향 커뮤니케션 방식이 대두되면서, 고객의 “입장”에서
										브랜딩을 하는 방식이 트렌드가 되고 있습니다.
									</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="panel panel-default">
							<div class="panel-heading">
								<a class="panel-title accordion-toggle collapsed"
									data-toggle="collapse" data-parent="#faq" href="#collapse1003">
									<span class="faq_q"><strong>고객사에 대한 지속적인 관심과
											전문적인 서비스를 제공하겠습니다.</strong></span>
								</a>
							</div>
							<div id="collapse1003" class="panel-collapse collapse">
								<div class="panel-body">
									<div class="faq_a text-justify">제품 이 지난 특장점, 제품의 디자인, 제품의
										USP를 FACT 중심으로 전달하고, 비쥬얼한 표현으로 고객들에게 단발적인 Impression을 주는데
										주력하였습니다. 하지만 최근에는 고객과의 양방향 커뮤니케션 방식이 대두되면서, 고객의 “입장”에서 브랜딩을 하는
										방식이 트렌드가 되고 있습니다.</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="panel panel-default">
							<div class="panel-heading">
								<a class="panel-title accordion-toggle collapsed"
									data-toggle="collapse" data-parent="#faq" href="#collapse1002">
									<span class="faq_q"><strong>만다린 전화화상중국어는 그 꿈을
											함께 나아가길 원합니다.</strong></span>
								</a>
							</div>
							<div id="collapse1002" class="panel-collapse collapse">
								<div class="panel-body">
									<div class="faq_a text-justify">주위를 둘러보면, 꿈과 목표를 갖고 열심히
										사는 사람들이 많습니다. 또한 "꿈과 현실은 다르다."라고 말하며 현실에 안주하는 사람도 많습니다. 그러나
										인생은 하느냐 하지 않느냐에 따라 많이 달라지는 것이라 믿고 있습니다. 그렇다고 단순히 목표를 향해 나아가는
										것을 의미하지 않습니다. 프랑스 철학자 알랭 바디우(Alain Badiou)는 "꾸준한 노력을 실력이라
										부른다"라고 하였습니다.</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->
					</div>
					<!-- //게시물 -->

					<!-- 페이징 -->
					<nav class="text-center">
						<ul class="pagination pagination-sm num-webfont">
							<li><a href="#" aria-label="Previous" title="처음"> <span
									aria-hidden="true"><i class="fa fa-angle-double-left"
										aria-hidden="true"></i></span>
							</a></li>
							<li><a href="#" aria-label="Previous" title="이전"> <span
									aria-hidden="true"><i class="fa fa-angle-left"
										aria-hidden="true"></i></span>
							</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#" aria-label="Next" title="다음"> <span
									aria-hidden="true"><i class="fa fa-angle-right"
										aria-hidden="true"></i></span>
							</a></li>
							<li><a href="#" aria-label="Next" title="마지막"> <span
									aria-hidden="true"><i class="fa fa-angle-double-right"
										aria-hidden="true"></i></span>
							</a></li>
						</ul>
					</nav>
					<!-- //페이징 -->
					<!-- 버튼 -->
					<div class="row">
						<div class="col-xs-6"></div>
						<div class="col-xs-6 text-right">
							<a href="?BoardMode=write" class="btn btn-primary">글쓰기</a>
						</div>
					</div>
					<!-- //버튼 -->
					<!-- //게시판 목록 -->
				</div>
			</div>
			<!-- //콘텐츠 -->
		</div>
	</div>
	<!-- //콘테이너 -->
</body>
</html>