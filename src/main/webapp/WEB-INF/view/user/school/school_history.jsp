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
							<h2>연혁</h2>
						</div>
						<div class="col-md-7 text-right">
							<ol class="breadcrumb hidden-xs">
								<li><a href="./"><i class="glyphicon glyphicon-home"></i> 홈</a></li>
								<li>학교소개</li>
								<li class="active">연혁</li>
							</ol>
						</div>
					</div>
				</div>

				<div id="customer_container">
					<!-- 타임라인 -->
					<ul class="timeline">
						<!-- 2000~현재 -->
						<li>
							<div class="timeline-image1">
								<div class="img-responsive img-circle">
									<strong>2000~</strong>
								</div>
							</div>
							<div class="timeline-panel" style="border-radius: 10px; box-shadow: 5px 5px 10px -7px;">
								<ul>
									<li><strong>이수영 목사 제9대 이사장 취임</strong></li>
									<li><strong>송재식 목사 제10대 이사장 취임</strong></li>
									<li><strong>김용담 이사 이사장직무대행 취임</strong></li>
									<li><strong>김경진 목사 제11대 이사장 취임</strong></li>
								</ul>
							</div>
						</li>
						<!-- //2000~현재 -->

						<!-- 2011 -->
						<li class="timeline-inverted">
							<div class="timeline-image1">
								<div class="img-responsive img-circle">
									<strong>2011</strong>
								</div>
							</div>
							<div class="timeline-panel" style="border-radius: 10px; box-shadow: 5px 5px 10px -7px;">
								<ul>
									<li><strong>이수영 목사 제9대 이사장 취임</strong></li>
									<li><strong>송재식 목사 제10대 이사장 취임</strong></li>
									<li><strong>김용담 이사 이사장직무대행 취임</strong></li>
									<li><strong>김경진 목사 제11대 이사장 취임</strong></li>
								</ul>
							</div>
						</li>
						<!-- //2011 -->

						<!-- 2008 -->
						<li>
							<div class="timeline-image1">
								<div class="img-responsive img-circle">
									<strong>2008</strong>
								</div>
							</div>
							<div class="timeline-panel" style="border-radius: 10px; box-shadow: 5px 5px 10px -7px;">
								<ul>
									<li><strong>이수영 목사 제9대 이사장 취임</strong></li>
									<li><strong>송재식 목사 제10대 이사장 취임</strong></li>
									<li><strong>김용담 이사 이사장직무대행 취임</strong></li>
									<li><strong>김경진 목사 제11대 이사장 취임</strong></li>
								</ul>
							</div>
						</li>
						<!-- //2008 -->

						<!-- 2005 -->
						<li class="timeline-inverted">
							<div class="timeline-image1">
								<div class="img-responsive img-circle ">
									<strong>2005</strong>
								</div>
							</div>
							<div class="timeline-panel" style="border-radius: 10px; box-shadow: 5px 5px 10px -7px;">
								<ul>
									<li><strong>이수영 목사 제9대 이사장 취임</strong></li>
									<li><strong>송재식 목사 제10대 이사장 취임</strong></li>
									<li><strong>김용담 이사 이사장직무대행 취임</strong></li>
									<li><strong>김경진 목사 제11대 이사장 취임</strong></li>
								</ul>
							</div>
						</li>
						<!-- //2005 -->

						<!-- 2001 -->
						<li>
							<div class="timeline-image1">
								<div class="img-responsive img-circle ">
									<strong>2001</strong>
								</div>
							</div>
							<div class="timeline-panel" style="border-radius: 10px; box-shadow: 5px 5px 10px -7px;">
								<ul>
									<li><strong>이수영 목사 제9대 이사장 취임</strong></li>
									<li><strong>송재식 목사 제10대 이사장 취임</strong></li>
									<li><strong>김용담 이사 이사장직무대행 취임</strong></li>
									<li><strong>김경진 목사 제11대 이사장 취임</strong></li>
								</ul>
							</div>
						</li>
						<!-- //2001 -->
					</ul>
					<!-- //타임라인 -->
				</div>
			</div>
			<!-- //콘텐츠 -->
		</div>
	</div>
	<!-- //콘테이너 -->
	<%@ include file="../layout/footer1.jsp"%>
</body>
</html>