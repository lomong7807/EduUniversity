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
						<div class="col-md-5 pl10">
							<h2>연간 일정 안내</h2>
						</div>
						<div class="col-md-7 text-right">
							<ol class="breadcrumb hidden-xs">
								<li><a href="./"><i class="glyphicon glyphicon-home"></i> 홈</a></li>
								<li>이사회</li>
								<li class="active">연간일정안내</li>
							</ol>
						</div>
					</div>
				</div>

				<div id="customer_container">
					<!-- 콘텐츠 샘플 -->
					<!-- 콘텐츠2 -->
					<div class="section">
						<div>
							<table class="table table-bordered text-center table-condensed">
								<caption class="sr-only">오시는 길</caption>
								<colgroup>
									<col style="width: 15%;">
									<col style="width: 20%;">
									<col style="width: 20%;">
									<col style="width: 20%;">
									<col style="width: 20%;">
								</colgroup>
								<tbody>
									<tr>
										<td rowspan="2" class="active"><strong class="text-info">일정</strong></td>
										<td colspan="4" class="active "><strong class="text-info">주요안건</td>
									</tr>
									<tr>
										<td scope="row" class="active "><strong class="text-info">정의학원</strong></td>
										<td class="active"><strong class="text-info">서울여자대학교</td>
										<td scope="row" class="active"><strong class="text-info">화랑초등학교</strong></td>
										<td class="active"><strong class="text-info">부속유치원</td>
									</tr>
									<tr>
										<td rowspan="2"><strong>1월<br>(예산관련)
										</strong></td>
										<td scope="row" class="text-left">추가경정예산안심의<br> - 법인일반업무회계 <br>- 수익사업회계
										</td>
										<td scope="row" class="text-left">추가경정예산안심의<br> - 학교비회계
										</td>
										<td class="text-left">추가경정예산안심의 <br>- 학교회계
										</td>
										<td class="text-left">추가경정예산안심의<br> - 부속유치원회계
										</td>
									</tr>
									<tr>
										<td scope="row" class="text-left">예산안심의<br> - 법인일반업무회계 - 수익사업회계
										</td>
										<td scope="row" class="text-left">예산안심의<br> - 학교비회계
										</td>
										<td scope="row" class="text-left">예산안심의<br> - 학교회계
										</td>
										<td scope="row" class="text-left">예산안심의<br> - 부속유치원회계
										</td>
									</tr>
									<tr>
										<td scope="row"><strong>4월<br>(결산관련)
										</strong></td>
										<td scope="row" class="text-left">전년도 결산 감사보고<br> 전년도 결산 심의승인
										</td>
										<td scope="row" class="text-left">전년도 결산 감사보고<br> 전년도 결산 심의승인
										</td>
										<td scope="row" class="text-left">전년도 결산 감사보고 <br>전년도 결산 심의승인
										</td>
										<td scope="row" class="text-left">전년도 결산 감사보고<br> 전년도 결산 심의승인
										</td>
									</tr>
									<tr>
										<td scope="row"><strong>6월<br>(교원 임면 관련)
										</strong></td>
										<td scope="row"></td>
										<td scope="row" class="text-left">교원 임면</td>
										<td scope="row"></td>
										<td scope="row"></td>
									</tr>
									<tr>
										<td scope="row"><strong>12월<br>(교원 임면 관련)
										</strong></td>
										<td scope="row"></td>
										<td scope="row" class="text-left">교원 임면</td>
										<td scope="row" class="text-left">교원 임면</td>
										<td scope="row" class="text-left">교원 임면</td>
									</tr>

								</tbody>
							</table>
						</div>


					</div>
					<!-- //콘텐츠2 -->
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