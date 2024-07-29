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
			<%@ include file="../layout/boardSidebar.jsp"%>

			<!-- 콘텐츠 -->
			<div id="container" class="col-md-9">
				<div class="page-header">
					<div class="row">
						<div class="col-md-5">
							<h2>역대 이사장</h2>
						</div>
						<div class="col-md-7 text-right">
							<ol class="breadcrumb hidden-xs">
								<li><a href="./"><i class="glyphicon glyphicon-home"></i> 홈</a></li>
								<li>이사회</li>
								<li class="active">역대 이사장</li>
							</ol>
						</div>
					</div>
				</div>

				<div id="customer_container">
					<!-- 게시판 목록 -->
					<!-- 게시물 -->
					<div class="row portfolio">
						<!-- Loop -->
						<div class="col-sm-4">
							<div class="thumbnail"> 
							<img src="/img/user/sample07.jpg" class="img-responsive" alt="" />
								<div class="caption text-center mb0">
									<div class="text-info">
										<strong>초대 이사장 전필순</strong>
									</div>
									<div class="text-muted">1958.07.29 ~ 1962.07.28</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="col-sm-4">
							<div class="thumbnail"> <img src="/img/user/sample07.jpg" class="img-responsive" alt="" />
								<div class="caption text-center mb0">
									<div class="text-info">
										<strong>제2대 이사장 한경직 </strong>
									</div>
									<div class="text-muted">1962.07.28 ~ 1975.01.21</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="col-sm-4">
							<div class="thumbnail"> <img src="/img/user/sample07.jpg" class="img-responsive" alt="" />
								<div class="caption text-center mb0">
									<div class="text-info">
										<strong>제3대 이사장 김금련 </strong>
									</div>
									<div class="text-muted">1975.02.03 ~ 1977.08.13</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="col-sm-4">
							<div class="thumbnail"> <img src="/img/user/sample07.jpg" class="img-responsive" alt="" />
								<div class="caption text-center mb0">
									<div class="text-info">
										<strong>제4대 이사장 김성섭 </strong>
									</div>
									<div class="text-muted">1977.08.26 ~ 1983.03.18</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="col-sm-4">
							<div class="thumbnail"> <img src="/img/user/sample07.jpg" class="img-responsive" alt="" />
								<div class="caption text-center mb0">
									<div class="text-info">
										<strong>제5대 이사장 양성담 </strong>
									</div>
									<div class="text-muted">1983.05.02 ~ 1985.01.18</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->

						<!-- Loop -->
						<div class="col-sm-4">
							<div class="thumbnail"> <img src="/img/user/sample07.jpg" class="img-responsive" alt="" />
								<div class="caption text-center mb0">
									<div class="text-info">
										<strong>제6대 이사장 이세웅 </strong>
									</div>
									<div class="text-muted">1985.01.19 ~ 1988.03.09</div>
								</div>
							</div>
						</div>
						<!-- //Loop -->
					</div>
					<!-- //게시물 -->

					<!-- 페이징 -->
<!-- 					<nav class="text-center"> -->
<!-- 						<ul class="pagination pagination-sm num-webfont"> -->
<!-- 							<li><a href="#" aria-label="Previous" title="처음"> <span aria-hidden="true"><i class="fa fa-angle-double-left" aria-hidden="true"></i></span> -->
<!-- 							</a></li> -->
<!-- 							<li><a href="#" aria-label="Previous" title="이전"> <span aria-hidden="true"><i class="fa fa-angle-left" aria-hidden="true"></i></span> -->
<!-- 							</a></li> -->
<!-- 							<li class="active"><a href="#">1</a></li> -->
<!-- 							<li><a href="#">2</a></li> -->
<!-- 							<li><a href="#">3</a></li> -->
<!-- 							<li><a href="#">4</a></li> -->
<!-- 							<li><a href="#">5</a></li> -->
<!-- 							<li><a href="#" aria-label="Next" title="다음"> <span aria-hidden="true"><i class="fa fa-angle-right" aria-hidden="true"></i></span> -->
<!-- 							</a></li> -->
<!-- 							<li><a href="#" aria-label="Next" title="마지막"> <span aria-hidden="true"><i class="fa fa-angle-double-right" aria-hidden="true"></i></span> -->
<!-- 							</a></li> -->
<!-- 						</ul> -->
<!-- 					</nav> -->
					<!-- //페이징 -->
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