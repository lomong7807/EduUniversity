<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<!--[if lt IE 7 ]><html lang="ko" class="ie6"><![endif]-->
<!--[if IE 7 ]>   <html lang="ko" class="ie7"><![endif]-->
<!--[if IE 8 ]>   <html lang="ko" class="ie8"><![endif]-->
<!--[if IE 9 ]>   <html lang="ko" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="ko" class="">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<title>AdminMng</title>
<%@ include file="layout/header.jsp"%>

</head>
<body class="admin">
	<!-- Admin Wrapper -->
	<div id="ubhome-wrapper">
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
								<h3 class="text-info mt5">관리자 관리</h3>
							</div>
						</div>
						<!-- //페이지 명 -->
						<!-- 목록 -->
						<div>
							<%--                        <form Method="GET" id="teacher_list" name="teacher_list">--%>
							<fieldset>
								<!-- 목록 검색 -->
								<div class="panel panel-default text-center"
									style="border-radius: 10px; box-shadow: 3px 3px 10px -7px;">
									<div class="panel-body">
										<div class="row ">
											<div class="col-sm-3 text-left">
												<div class="mt5">
													<strong>검색</strong>
												</div>
											</div>
											<div class="col-sm-9">
												<div class="row">
													<div class="col-sm-5">
														<select id="searchCate" name="searchCate"
															class="form-control">
															<option value="">검색 구분</option>
															<option value="name">이름</option>
															<option value="id">아이디</option>
														</select>
													</div>
													<div class="col-sm-5">
														<input type="text" id="keywordInput" class="form-control"
															name="keyword" value="${keyword}" placeholder="Keyword">
													</div>
													<div class="col-sm-2">
														<button type="button" class="btn btn-block btn-default"
															onclick="searchKey();">
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
									Total: <strong id="totalRecords" class="text-primary">${totalRecords}</strong>
									count
								</div>
								<!-- //총 게시물 수 -->
								<!-- 게시물 -->
								<form name="form" method="post" action="admin_proc.php">
									<input type="hidden" name="mode" value="delete">
									<div>
										<table id="data-table" class="table text-center table-hover">
											<thead>
												<tr class="headings">
													<th class="hidden-xs"><input type="checkbox"
														id="check-all" class="flat"></th>
													<th class="column-title hidden-xs">No.</th>
													<th class="column-title hidden-xs">아이디</th>
													<th class="column-title hidden-xs">성명</th>
													<th class="column-title hidden-xs">휴대폰</th>
													<th class="column-title hidden-xs">등급</th>
													<th class="column-title hidden-xs">생성일시</th>
												</tr>
											</thead>
											<!-- 테이블 정보 위치 -->
											<tbody>

											</tbody>
										</table>
									</div>
									<div class="row" style="text-align: center;">
										<!--페이징-->
										<nav class="text-center">
											<!-- 페이징 정보 위치 -->
											<ul id="pagination"
												class="pagination pagination-sm num-webfont">

											</ul>
										</nav>
										<!--페이징-->
									</div>
									<div class="row pull-right">
										<a href="#" class="btn btn-mini btn-default"
											onclick="deleteAdmin();">삭제하기
										</a> <a href="/admin/adminMngRegister"
											class="btn btn-mini btn-primary">등록하기
										</a>
									</div>
								</form>
								<!-- //게시물 -->
							</fieldset>
							<%--                        </form>--%>
						</div>
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
</body>
<script>

    // Tracks The Current Page
    let currentPage = 1;

    // Search Function
    function searchKey(page = 1){
        let inputArr = $('.panel-body').find('input, select');
        let arr = ['searchCate', 'keyword'];
        let formData = new FormData();
        formData.append('page', page);
        arr.forEach((e,idx) => {
            formData.append(e, inputArr[idx].value);
        });

        $.ajax({
            type : "POST",
            url : "/admin/searchAdminMng",
            data : formData,
            //dataType : "json",
            processData:false,
            contentType:false,
            success : function( data ) {

                // Current Page Update
                currentPage = page;

                // adminList is empty
                if (data.adminList.length === 0) {
                    $('#pagination').hide(); // Hide pagination
                    $('#data-table tbody').html('<tr><td colspan="7" class="text-center">검색된 결과가 없습니다.</td></tr>'); // Show no results message
                    $('#totalRecords').text(0);
                    return;
                }

                // Table Update
                $('#totalRecords').text(data.totalRecords);
                let tableBody = $('#data-table tbody');
                tableBody.empty();

				console.log(data.adminList);
                data.adminList.forEach(function(admin, index) {

                    let row = '<tr class="odd pointer" data-href="/admin/adminMngRegister?admin_seq=' + admin.admin_seq + '">';
                        row += '<td class="checkbox-cell"><input type="checkbox" name="admin_seq[' + admin.admin_seq + ']" value="' + admin.admin_seq + '" class="flat"></td>';
                        row += '<td class="hidden-xs">' + ((data.totalRecords - (data.currentPage - 1) * data.pageSize) - index) + '</td>';
                        row += '<td class="hidden-xs">' + admin.id + '</td>';
                        row += '<td class="hidden-xs">' + admin.name + '</td>';
                        row += '<td class="hidden-xs">' + admin.hp + '</td>';
                        row += '<td class="hidden-xs">' + admin.roleName + '</td>';
                        row += '<td class="hidden-xs">' + admin.write_time + '</td>';

                        // 작은 화면 목록 추가
                        row += '<td class="text-left hidden-sm hidden-md hidden-lg">';
                        row += '<div class="hidden-sm hidden-md hidden-lg">';
                        row += '<ul class="list-icon mb5">';
                        row += '<li><span class="text-info">아이디 </span> : ' + admin.id + '</li>';
                        row += '<li><span class="text-info">성명 </span> : ' + admin.name + '</li>';
                        row += '<li><span class="text-info">등급 </span> : ' + admin.roleName + '</li>';
                        row += '<li><span class="text-info">생성일시 </span> : ' + admin.write_time + '</li>';
                        row += '</ul>';
                        row += '</div>';
                        row += '</td>';
                        row += '</tr>';

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

    // Pagination
    function goPage(page) {
        if(page !== currentPage){
            searchKey(page);
        }
    }

    // Check All Function
    $("#check-all").click(function() {
        // Only Not Disabled Checkbox Checked
        if ($("#check-all").is(":checked")) {
            $("input[type='checkbox']").prop("checked", true);
        } else {
            $("input[type='checkbox']").prop("checked", false);
        }
    });


    // Delete Function
    function deleteAdmin(page = 1) {

        let inputArr = $('.panel-body').find('input, select');
        let arr = ['searchCate', 'keyword'];
        let formData = new FormData();
        formData.append('page', page);

        // 체크된 체크박스들을 선택
        let checkedCheckboxes = $("input[name^='admin_seq']:checked");

        // 선택된 체크박스들의 값을 배열로 저장
        let checkedValuesArr = [];
        checkedCheckboxes.each(function() {
            checkedValuesArr.push($(this).val());
        });

        let checkedValues = checkedValuesArr.join(',');

        if(checkedValues === '' || checkedValues === null){
            alert('삭제할 계정을 선택해주세요.');
            return;
        }else if(!confirm('선택된 항목들을 삭제하시겠습니까?')){
            return;
        }

        formData.append('checkedValues', checkedValues);
        arr.forEach((e,idx) => {
            formData.append(e, inputArr[idx].value);
        });

        $.ajax({
            type : "POST",
            url : "/admin/deleteAdminMng",
            data : formData,
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

    // First Load The Page Default Page Setting
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
        $('#data-table').on('click', 'tr', function(event) {
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


</script>
</html>