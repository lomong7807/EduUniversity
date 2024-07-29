<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!doctype html>
<html lang="ko" class="">
<head>
<meta charset="utf-8">
<title>BoardMng Page</title>
<%@ include file="layout/header.jsp"%>
</head>
<body class="admin">

	<!-- Admin Wrapper -->
	<div id="ubhome-wrapper">
		<!-- Sidebar Wrapper -->

		<div class="mask-win"></div>
		<!-- //Sidebar Wrapper -->

		<!-- Page Content -->
		<div id="content-wrapper">

			<!-- Main Content -->
			<div class="main-content">
				<!-- 콘테이너 -->
				<div id="container">
					<div class="dashboard">
						<!-- 페이지 명 -->
						<div class="row form-inline mb10">
							<div class="col-sm-6">
								<h3 class="text-info mt5">게시글 관리</h3>
							</div>
						</div>
						<!-- //페이지 명 -->
						<!-- 목록 -->
						<form Method="Post" id="teacher_list" name="teacher_list">
							<input type="hidden" id="schIcon" name="schIcon" value="schIcon" /> <input type="hidden" id="sel" name="sel" />
							<fieldset>
								<!-- 목록 검색 -->
								<div class="panel panel-default text-center" style="border-radius: 10px; box-shadow: 3px 3px 10px -7px;">
									<div class="panel-body">
										<div class="row ">
											<div class="col-sm-3 text-left">
												<div class="mt5">
													<strong>검색</strong>
												</div>
											</div>
											<div class="col-sm-9">
												<div class="row">
													<div class="col-sm-3">
														<select id="searchCate" name="searchCate" class="form-control">
															<option value="">게시판 구분</option>
															<c:forEach var="config" items="${configs }">
																<option value="${config.config_seq }">${config.board_name }</option>
															</c:forEach>
														</select>
													</div>
													<div class="col-sm-3">
														<select id="searchCate" name="searchCate" class="form-control">
															<option value="">검색 구분</option>
															<option value="writer">작성자</option>
															<option value="title">제목</option>
														</select>
													</div>
													<div class="col-sm-4">
														<input type="text" id="keywordInput" class="form-control" name="keyword" value="" placeholder="Keyword">
													</div>
													<div class="col-sm-2">
														<button type="button" class="btn btn-block btn-default" onclick="searchKey(1);">
															<i class="fa fa-search"></i> Search
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- //목록 검색 -->
								<!-- 총 게시물 수 -->
								<div class="pagetotal">
									검색 <strong id="totalRecords" class="text-primary">1</strong> 건
								</div>
								<!-- //총 게시물 수 -->

								<!-- 게시물 -->
								<table class="table text-center table-hover">
									<thead class="hidden-xs">
										<tr>
											<th scope="col" class="all-check"><label for="LCheckALL_List" class="checkbox-inline"> <input type="checkbox" id="LCheckALL_List" name="LCheckALL_List" />
											</label></th>
											<th scope="col" class="hidden-xs">No</th>
											<th scope="col" class="hidden-xs">게시판명</th>
											<th scope="col" class="hidden-xs">게시글 제목</th>
											<th scope="col" class="hidden-xs">작성자</th>
											<th scope="col" class="hidden-xs hidden-sm">생성일자</th>
										</tr>
									</thead>
									<tbody>
										<!-- Loop -->
										<%-- <c:forEach var = "" items = ""> --%>
										<tr>
											<td class="check"><label for="LCheck_List03" class="checkbox-inline"> <input value="03" type="checkbox" id="LCheck_List03" name="LCheck_List03" />
											</label></td>
											<td class="hidden-xs num-webfont"><span class="hidden-sm hidden-md">1</span></td>
											<td class="hidden-xs hidden-sm"><img src="/common/css/img/picture-sample.png" class="img-responsive img-centered img-thumbnail" alt="thacher3" style="max-width: 100px;" /></td>
											<td class="hidden-xs num-webfont"><span class="hidden-sm hidden-md">Test</span></td>
											<td class="hidden-xs num-webfont"><span class="hidden-sm hidden-md">Test</span></td>
											<td class="hidden-xs num-webfont"><span class="hidden-sm hidden-md">2</span></td>
											<td class="hidden-xs num-webfont"><span class="hidden-sm hidden-md">2</span></td>
											<td class="hidden-xs num-webfont">2018 <span class="hidden-sm hidden-md">-</span> <br class="hidden-lg" />10-27
											</td>
											<td class="hidden-xs">
												<button type="button" class="btn btn-xs btn-black">
													<i class="fa fa-external-link" aria-hidden="true"></i> Tester
												</button>
											</td>
											<td class="hidden-xs"><a href="../teacher/teacher_write.php" class="btn btn-xs btn-info">미리보기</a></td>
										</tr>
										<%-- </c:forEach> --%>
										<!-- //Loop -->

									</tbody>
								</table>
								<!-- //게시물 -->

								<!-- 버튼 -->
								<div class="row">
									<div class="col-sm-6 col-sm-offset-3">
										<!-- 페이징 -->
										<nav class="text-center">
											<ul id="pagination" class="pagination pagination-sm num-webfont">

											</ul>
										</nav>
										<!-- //페이징 -->
									</div>
									<div class="col-sm-3 text-right xs-mt10">
										<a href="#" class="btn btn-mini btn-default" onclick="deleteBoard();">삭제하기 </a>
									</div>
								</div>
								<!-- //버튼 -->
							</fieldset>
						</form>
						<!-- //목록 -->
					</div>
				</div>
				<!-- //콘테이너 -->
			</div>
			<!-- //Main Content -->
		</div>
		<!-- //Page Content -->
	</div>
	<!-- //Admin Wrapper -->

	<!--  이력 모달 -->
	<div class="modal fade" id="teacherHistoryModal" tabindex="-1" role="dialog" aria-labelledby="teacherHistoryModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close" title="창닫기">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="teacherHistoryModalLabel">
						<strong> 이력</strong>
					</h4>
				</div>
				<div class="modal-body">
					<!-- 게시물 -->
					<table class="table text-center">
						<colgroup>
							<col style="width: 10%;" class="hidden-xs">
							<col style="width: 14%;" class="hidden-xs">
							<col>
						</colgroup>
						<thead>
							<tr>
								<th scope="col" class="hidden-xs">번호</th>
								<th scope="col" class="hidden-xs">날짜</th>
								<th scope="col"><span class="hidden-sm hidden-md hidden-lg">날짜/</span> 이력</th>
							</tr>
						</thead>
						<tbody>
							<!-- Nothing Data -->

							<!-- Loop -->
							<tr>
								<td class="hidden-xs num-webfont">214</td>
								<td class="hidden-xs num-webfont">2018-10-27</td>
								<td class="text-left">
									<div class="text-info mb5 hidden-sm hidden-md hidden-lg num-webfont">2018-10-27</div> 신 HSK 시험 대비반 및 구어 과정, 비즈니스 중국어 과정등을 기본 과정으로 하고 전문가 과정으로 통역병 과정, 한중 번역 과정, 기업 교육 과정등의 수업이 개설 되어 있습니다. 중국
									문화 수업으로 고급 발음 수업, 서예 수업 , 수묵화 수업, 차(茶) 수업 등이 있습니다.
								</td>
							</tr>
							<!-- //Loop -->

							<!-- Loop -->
							<tr>
								<td class="hidden-xs num-webfont">213</td>
								<td class="hidden-xs num-webfont">2018-10-25</td>
								<td class="text-left">
									<div class="text-info mb5 hidden-sm hidden-md hidden-lg num-webfont">2018-10-25</div> 중국 문화 수업으로 고급 발음 수업, 서예 수업 , 수묵화 수업, 차(茶) 수업 등이 있습니다. 신 HSK 시험 대비반 및 구어 과정, 비즈니스 중국어 과정등을 기본 과정으로 하고 전문가
									과정으로 통역병 과정, 한중 번역 과정, 기업 교육 과정등의 수업이 개설 되어 있습니다.
								</td>
							</tr>
							<!-- //Loop -->
						</tbody>
					</table>
					<!-- //게시물 -->

					<!-- 페이징 -->
					<nav class="text-center">
						<ul class="pagination pagination-sm num-webfont">
							<li><a href="#" aria-label="Previous" title="처음"> <span aria-hidden="true"> <i class="fa fa-angle-double-left" aria-hidden="true"></i>
								</span>
							</a></li>
							<li><a href="#" aria-label="Previous" title="이전"> <span aria-hidden="true"> <i class="fa fa-angle-left" aria-hidden="true"></i>
								</span>
							</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#" aria-label="Next" title="다음"> <span aria-hidden="true"> <i class="fa fa-angle-right" aria-hidden="true"></i>
								</span>
							</a></li>
							<li><a href="#" aria-label="Next" title="마지막"> <span aria-hidden="true"> <i class="fa fa-angle-double-right" aria-hidden="true"></i>
								</span>
							</a></li>
						</ul>
					</nav>
					<!-- //페이징 -->
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">창닫기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- //이력 모달 -->
</body>
<script>

//Tracks The Current Page
let currentPage = 1;

//Search Function
function searchKey(page = 1){
 let formData = new FormData();
 let inputArr = $('.panel-body').find('input , select');
 let arr = ['config_seq','cate','keyword'];
 console.log(inputArr);
 arr.forEach((e,idx) => {
	 formData.append(e,inputArr[idx].value);
 })
 formData.append('page', page);
 
 $.ajax({
     type : "POST",
     url : "/admin/getBoardList",
     data : formData,
     //dataType : "json",
     processData:false,
     contentType:false,
     success : function( data ) {

         // Current Page Update
         currentPage = page;

         // adminList is empty
         if (data.list.length === 0) {
             $('#pagination').hide(); // Hide pagination
             $('tbody').html('<tr><td colspan="7" class="text-center">검색된 결과가 없습니다.</td></tr>'); // Show no results message
             $('#totalRecords').text(0);
             return;
         }

         // Table Update
         $('#totalRecords').text(data.totalRecords);
         let tableBody = $('tbody');
         tableBody.empty();
		console.log(data.list);
         data.list.forEach(function(ele, index) {
        	 console.log(ele.write_time);
             let row = '<tr class="odd pointer" onclick="boardUpdate('+ ele.board_seq + ')">';
                 row += '<td class="checkbox-cell"><input onclick="event.stopPropagation()" type="checkbox" name="board_seq[' + ele.config_seq + ']" value="' + ele.config_seq + '" class="flat"></td>';
                 row += '<td class="hidden-xs">' + ((data.totalRecords - (data.currentPage - 1) * data.pageSize) - index) + '</td>';
                 row += '<td class="hidden-xs">' + ele.board_name + '</td>';
                 row += '<td class="hidden-xs">' + ele.title + '</td>';
                 row += '<td class="hidden-xs">' + ele.write_id + '</td>';
                 row += '<td class="hidden-xs">' + ele.write_time + '</td>';

                 // 작은 화면 목록 추가
                 /* row += '<td class="text-left hidden-sm hidden-md hidden-lg">';
                 row += '<div class="hidden-sm hidden-md hidden-lg">';
                 row += '<ul class="list-icon mb5">';
                 row += '<li><span class="text-info">아이디 </span> : ' + admin.id + '</li>';
                 row += '<li><span class="text-info">성명 </span> : ' + admin.name + '</li>';
                 row += '<li><span class="text-info">등급 </span> : ' + admin.levelName + '</li>';
                 row += '<li><span class="text-info">생성일시 </span> : ' + admin.write_time + '</li>';
                 row += '</ul>';
                 row += '</div>';
                 row += '</td>';
                 row += '</tr>'; */

             tableBody.append(row);
         });

         // Pagination
         let pagination = $('#pagination');
         pagination.empty();

         let totalPages = Math.ceil(data.totalRecords / data.pageSize);

         // First Page
         pagination.append('<li><a href="#" aria-label="First Page" title="First Page" onclick="goPage(1);"><span aria-hidden="true"><i class="fa fa-angle-double-left" aria-hidden="true"></i></span></a></li>');

         // Previous Page
         let prevPage = page > 1 ? page - 1 : 1;
         pagination.append('<li><a href="#" aria-label="Previous" title="Previous Page" onclick="goPage(' + prevPage + ');"><span aria-hidden="true"><i class="fa fa-angle-left" aria-hidden="true"></i></span></a></li>');

         // Page Numbers
         let startPage = Math.max(1, page - 4);
         let endPage = Math.min(totalPages, page + 4);

         // Adjust start and end page if we're near the beginning or end
         if (startPage === 1) {
             endPage = Math.min(9, totalPages);
         } else if (endPage === totalPages) {
             startPage = Math.max(1, totalPages - 8);
         }

         for (let i = startPage; i <= endPage; i++) {
             if (i === page) {
                 pagination.append('<li class="active"><a href="#" onclick="goPage(' + i + ');">' + i + '</a></li>');
             } else {
                 pagination.append('<li><a href="#" onclick="goPage(' + i + ');">' + i + '</a></li>');
             }
         }

         // Next Page
         let nextPage = page < totalPages ? page + 1 : totalPages;
         pagination.append('<li><a href="#" aria-label="Next" title="Next Page" onclick="goPage(' + nextPage + ');"><span aria-hidden="true"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a></li>');

         // Last Page
         pagination.append('<li><a href="#" aria-label="Next" title="Last Page" onclick="goPage(' + totalPages + ');"><span aria-hidden="true"><i class="fa fa-angle-double-right" aria-hidden="true"></i></span></a></li>');
     },
     error : function( data ) {
         if(data.error != null && data.errorMessage != null){
             console.log( "error : " + data.error );
             console.log( "errorMessage : " + data.errorMessage );
         }
         alert('작업에 실패했습니다. 관리자에게 문의하세요.');
     }
 });
}

function boardUpdate(e){
	window.location.href = "/admin/boardUpdate/" + e;
}

//Pagination
function goPage(page) {
 if(page !== currentPage){
     searchKey(page);
 }
}

//First Load The Page Default Page Setting
$(document).ready(function() {
 // Press Enter Call SearchKey
 $('#keywordInput').on('keyup', function(event) {
     if (event.key === 'Enter') {
         event.preventDefault();
         searchKey(1);
     }
 });
 searchKey(1);

 // 테이블 행 클릭 이벤트 처리
 $('table').on('click', 'tr', function(event) {
     const target = $(event.target);

     // 체크박스 셀을 클릭한 경우
     if (target.closest('td').hasClass('checkbox-cell')) {
         const checkbox = target.closest('td').find('input[type="checkbox"]');
         if (!target.is('input[type="checkbox"]')) {
             checkbox.prop('checked', !checkbox.prop('checked'));
         }
         // 이벤트 전파 중지
         event.stopPropagation();
         return;
     }

     // 다른 셀을 클릭한 경우 상세 페이지로 이동
     const href = $(this).data('href');
     if (href) {
         window.location.href = href;
     }
 });

 // 체크박스에 대한 커서 스타일 변경
 $('#data-table').on('mouseover', 'input[type="checkbox"]', function() {
     $(this).css('cursor', 'pointer');
 });

});

//Check All Function
$("#check-all").click(function() {
 // Only Not Disabled Checkbox Checked
 if ($("#check-all").is(":checked")) {
     $("input[type='checkbox']").prop("checked", true);
 } else {
     $("input[type='checkbox']").prop("checked", false);
 }
});


//Delete Function
function deleteBoard() {

 // 체크된 체크박스들을 선택
 let checkedCheckboxes = $("input[name^='board_seq']:checked");

 // 선택된 체크박스들의 값을 배열로 저장
 let checkedValuesArr = [];
 checkedCheckboxes.each(function() {
     checkedValuesArr.push($(this).val());
 });

 let checkedValues = checkedValuesArr.join(',');

 if(checkedValues === '' || checkedValues === null){
     alert('삭제할 게시글을 선택해주세요.');
     return;
 }else if(!confirm('선택된 항목들을 삭제하시겠습니까?')){
     return;
 }

 $.ajax({
     type : "POST",
     url : "/admin/boardDelete",
     data : JSON.stringify({'delBoards': checkedValues}),
     //dataType : ,
     processData:false,
     contentType:false,
     success : function( data ) {
         if(data.result > 0){
             alert('삭제가 완료되었습니다.');
             setTimeout(function() {
                 location.reload();
             }, 500);
         }else{
             alert('작업에 실패했습니다. 관리자에게 문의하세요.');
         }
     },
     error : function( data ) {
         if(data.error != null && data.errorMessage != null){
             console.log( "error : " + data.error );
             console.log( "errorMessage : " + data.errorMessage );
         }
         alert('작업에 실패했습니다. 관리자에게 문의하세요.');
     }
 });
}
</script>
</html>