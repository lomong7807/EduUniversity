<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
<title>이사회</title>
</head>
<body>
	<!-- 콘테이너 -->
	<%@ include file="../layout/header1.jsp"%>
	<div class="sub_visual bg-thema1"></div>
	<div class="container">
		<div class="row">
			<%@ include file="../layout/boardSidebar.jsp"%>

			<!-- 콘텐츠 -->
			<div id="container" class="col-md-9">
				<div class="page-header">
					<div class="row">
						<div class="col-md-5 pl10">
							<h2>건학이념</h2>
						</div>
						<div class="col-md-7 text-right">
							<ol class="breadcrumb hidden-xs">
								<li><a href="./"><i class="glyphicon glyphicon-home"></i> 홈</a></li>
								<li>학교소개</li>
								<li class="active">건학이념</li>
							</ol>
						</div>
					</div>
				</div>

				<div id="customer_container">
					<!-- 콘텐츠 샘플 -->
					<!-- 콘텐츠1 -->
					<div class="section">
						<div class="text-justify">
							<div class="row">
								<div class="col-md-6 col-lg-4 pr20 pl20 pb10">
									<img src="/img/user/m_introduction2.jpg" class="img-responsive1" alt="소개" />
								</div>
								<div class="col-md-6 col-lg-8">
									<div class="ml-md-6">
										<h2 class="font-size-16 font-size-18-sm font-size-20-lg text-primary font-weight-bold ls5 mb-3 lh26 lh28-lg">
											<i class="fa fa-certificate" aria-hidden="true"></i> 건학이념
										</h2>
										<p class="font-size-13 font-size-14-lg text-justify">학교법인 민주국가 건설초기에 강력한 도의정신과 기술을 구비한 지도자가 절실히 요구되는 실정에 비추어 재래의 대량 생산적이고 지적 편중인 대학교육을 지양하고 지적교육과 아울러 기독교 정신에 입각한 도의 실천 교육과 기술교육을 선발 받은
											극소수에게 균형있게 실시함으로써 출세주의, 성공주의, 간판주의를 떠나 동족과 인류의 행복을 위하여 자발적으로 수준 이하의 사회와 퇴폐된 농촌의 개척자 선봉자로서 봉사할 수 있는 지·덕·술이 겸비된 여성지도자를 양성함에 있다.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<hr />
					<!-- //콘텐츠1 -->
					<!-- //콘텐츠 샘플 -->
				</div>
			</div>
			<!-- //콘텐츠 -->
		</div>
	</div>
	<!-- //콘테이너 -->
	<%@ include file="../layout/footer1.jsp"%>
</body>
</html>