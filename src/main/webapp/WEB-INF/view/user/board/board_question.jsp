<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
<title>이사회</title>
</head>
<body>
	<%@ include file="../layout/header1.jsp"%>
	<div class="sub_visual bg-thema1"></div>
	<!-- 콘테이너 -->
	<div class="container">
		<div class="row">
			<!-- 사이드 -->
			<%@ include file="../layout/boardSidebar.jsp"%>
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
								<li><a href="./"><i class="glyphicon glyphicon-home"></i> 홈</a></li>
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

					<!-- 총게시물 수 & 목록검색 -->
					<div class="row mb10">
						<div class="col-sm-12 text-left">
							<!-- 총 게시물 수 -->
							<div class="pagetotal num-webfont">
								Total Article<strong class="text-primary">3</strong> / Total Pages<strong>1</strong>
							</div>
							<!-- //총 게시물 수 -->
						</div>
					</div>
					<!-- //총게시물 수 & 목록검색 -->

					<!-- 목록 검색 -->
					<form class="form-inline panel panel-default text-center write2" name="searchForm" action="#">
						<fieldset>
							<legend class="sr-only">게시글의 분야,제목으로 검색하세요.</legend>
							<div class="panel-body">
								<div class="form-group">
									<label for="search" class="sr-only">검색 옵션</label> <select id="search" name="search" class="form-control">
										<option value="title">제목</option>
										<option value="content">내용</option>
									</select>
								</div>
								<div class="input-group">
									<label for="searchstring" class="sr-only">키워드입력</label> <input type="text" id="searchstring" name="searchstring" value="" class="form-control" placeholder="키워드입력" /> <span
										class="input-group-btn"><button type="submit" class="btn btn-default">검색</button></span>
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
								<a class=" bg-sky panel-title accordion-toggle" data-toggle="collapse" data-parent="#faq" href="#collapse1010"> <i class="fa fa-question-circle mr20" aria-hidden="true"></i> <strong>학교
										상담서비스는 어떻게 이용하나요?</strong>
								</a>
							</div>
							<div id="collapse1010" class="panel-collapse collapse in">
								<div class="panel-body write2">
									<div class="faq_a text-justify">어떤 홈페이지인가?는 유지를 어떻게 하는가에 결정됩니다. 안전한 개인정보, 편한 유지보수와 확장성을 가진 전자전부 표준프레임워크의 기능을 그대로 구현한 표준의 표준!! 만다린 전화화상중국어를 제안합니다.</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="panel panel-default">
							<div class="panel-heading">
								<a class="panel-title accordion-toggle collapsed bg-sky" data-toggle="collapse" data-parent="#faq" href="#collapse1009"> <i class="fa fa-question-circle mr20" aria-hidden="true"></i><strong>입학신청은
										어떻게 하나요?</strong>
								</a>
							</div>
							<div id="collapse1009" class="panel-collapse collapse">
								<div class="panel-body write2">
									<div class="faq_a text-justify">
										템플릿 홈페이지란 이미 만들어진 디자인에 내용만 바꾸어 사용하는 형태로 공산품 같은 의미입니다. 가령, 업무상 필요로 특정 회사와 계약이 필요한 상황입니다. 포털사이트에서 검색하였습니다.<br /> <br /> 검색결과에 뜨는 사이트들이 너무 많습니다. 열심히 들여다보지만 내용도 디자인도 비슷한 홈페이지가 수십개라 슬슬 집중력이
										떨어지기 시작했습니다. 홈페이지에 기업의 개성과 독자성이 없으면 지루할 뿐입니다. 사이트 이탈하는 비율이 높아집니다. 한마디로 메인페이지만 보고 나간다는 겁니다.
									</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->


						<!-- Loop -->
						<div class="panel panel-default">
							<div class="panel-heading">
								<a class="panel-title accordion-toggle collapsed bg-sky" data-toggle="collapse" data-parent="#faq" href="#collapse1005"> <i class="fa fa-question-circle mr20" aria-hidden="true"></i><strong>장학금
										신청은 어떻게 하나요?</strong>
								</a>
							</div>
							<div id="collapse1005" class="panel-collapse collapse">
								<div class="panel-body write2">
									<div class="faq_a text-justify">옛날엔 전국지도 책자를 보고 목적지를 가던 시절도 있었는데 말이죠. 아직도 대다수 홈페이지는 플래시사용으로 모바일에서 보이지 않거나 구조가 틀어져 정상적으로 보이지 않습니다. 이러한 홈페이지는 이탈률이 높은 홈페이지 중 하나이죠. 이렇게 모바일에 보이지 않은 홈페이지는 고객
										또는 거래업체에 신뢰도를 삭감시킬 수 있는 요인이 됩니다. 모바일에서 PC화면이 잘 보이더라도 확대하여 페이지를 봐야한다면 매우 불편할 것입니다. 이제 모바일웹은 필수입니다.</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="panel panel-default">
							<div class="panel-heading">
								<a class="panel-title accordion-toggle collapsed bg-sky" data-toggle="collapse" data-parent="#faq" href="#collapse1004"> <i class="fa fa-question-circle mr20" aria-hidden="true"></i><strong>졸업
										요건은 무엇인가요?</strong>
								</a>
							</div>
							<div id="collapse1004" class="panel-collapse collapse">
								<div class="panel-body write2">
									<div class="faq_a text-justify">
										기존에는 브랜드가 고객에게 일방향적인 커뮤니케이션을 진행하였습니다.<br /> 제품 이 지난 특장점, 제품의 디자인, 제품의 USP를 FACT 중심으로 전달하고, 비쥬얼한 표현으로 고객들에게 단발적인 Impression을 주는데 주력하였습니다. 하지만 최근에는 고객과의 양방향 커뮤니케션 방식이 대두되면서, 고객의 “입장”에서 브랜딩을
										하는 방식이 트렌드가 되고 있습니다.
									</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="panel panel-default">
							<div class="panel-heading">
								<a class="panel-title accordion-toggle collapsed bg-sky" data-toggle="collapse" data-parent="#faq" href="#collapse1003"> <i class="fa fa-question-circle mr20" aria-hidden="true"></i><strong>진학
										상담은 어떻게 받을 수 있나요?</strong>
								</a>
							</div>
							<div id="collapse1003" class="panel-collapse collapse">
								<div class="panel-body write2">
									<div class="faq_a text-justify">제품 이 지난 특장점, 제품의 디자인, 제품의 USP를 FACT 중심으로 전달하고, 비쥬얼한 표현으로 고객들에게 단발적인 Impression을 주는데 주력하였습니다. 하지만 최근에는 고객과의 양방향 커뮤니케션 방식이 대두되면서, 고객의 “입장”에서 브랜딩을 하는 방식이
										트렌드가 되고 있습니다.</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->
					</div>
					<!-- //게시물 -->

					<!-- 페이징 -->
					<nav class="text-center">
						<ul class="pagination pagination-sm num-webfont">
							<li><a href="#" aria-label="Previous" title="처음"> <span aria-hidden="true"><i class="fa fa-angle-double-left" aria-hidden="true"></i></span>
							</a></li>
							<li><a href="#" aria-label="Previous" title="이전"> <span aria-hidden="true"><i class="fa fa-angle-left" aria-hidden="true"></i></span>
							</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#" aria-label="Next" title="다음"> <span aria-hidden="true"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
							</a></li>
							<li><a href="#" aria-label="Next" title="마지막"> <span aria-hidden="true"><i class="fa fa-angle-double-right" aria-hidden="true"></i></span>
							</a></li>
						</ul>
					</nav>
					<!-- //페이징 -->
					<!-- 검색 및 버튼 -->
					<div class="row mt15">
						<div class="col-sm-12 text-right">
							<a href="?BoardMode=write" class="btn btn-primary">글쓰기</a>
						</div>
					</div>
					<!-- //검색 및 버튼 -->
					<!-- //게시판 목록 -->
				</div>
			</div>
			<!-- //콘텐츠 -->
		</div>
	</div>
	<!-- //콘테이너 -->
	<%@ include file="../layout/footer1.jsp"%>
</body>
</html>