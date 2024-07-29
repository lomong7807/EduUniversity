<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!doctype html>
<html lang="ko" class="">
<head>
<meta charset="utf-8">
<title>BoardConfig page</title>
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
								<h3 class="text-info mt5">게시판 관리</h3>
							</div>
						</div>
						<!-- //페이지 명 -->
						<!-- 목록 -->
						<form Method="Post" id="teacher_list" name="teacher_list">
							<input type="hidden" id="schIcon" name="schIcon" value="schIcon" /> <input type="hidden" id="sel" name="sel" />
							<fieldset>
								<!-- 총 게시물 수 -->
								<div class="pagetotal">
									검색 <strong class="text-primary" id="totalRecords">1</strong> 건
								</div>
								<!-- //총 게시물 수 -->
								<!-- 게시물 -->
								<table class="table text-center table-hover">
									<thead class="hidden-xs">
										<tr>
											<!-- <th scope="col" class="all-check"><label for="LCheckALL_List" class="checkbox-inline"> <input type="checkbox" id="LCheckALL_List" name="LCheckALL_List" />
											</label></th> -->
											<th scope="col" class="hidden-xs">No</th>
											<th scope="col" class="hidden-xs">게시판 명</th>
											<th scope="col" class="hidden-xs">게시판 타입</th>
											<th scope="col" class="hidden-xs">조회권한</th>
											<th scope="col" class="hidden-xs">작성권한</th>
											<th scope="col" class="hidden-xs">생성자</th>
											<th scope="col" class="hidden-xs">미리보기</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
								<!-- //게시물 -->

								<!-- 버튼 -->
								<div class="row" style="text-align: center;">
									<!--페이징-->
									<nav class="text-center">
										<!-- 페이징 정보 위치 -->
										<ul id="pagination" class="pagination pagination-sm num-webfont">

										</ul>
									</nav>
									<!--페이징-->
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

	<div class="modal fade" id="teacherHistoryModal" tabindex="-1" role="dialog" aria-labelledby="teacherHistoryModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-body">
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

// Tracks The Current Page
let currentPage = 1;

// Search Function
function searchKey(page = 1){
    let formData = new FormData();
    formData.append('page', page);
    $.ajax({
        type : "POST",
        url : "/admin/getConfigList",
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

            data.list.forEach(function(ele, index) {

                let row = '<tr class="odd pointer" onclick="configUpdate('+ ele.config_seq + '); ">';
                    //row += '<td class="checkbox-cell"><input onclick="event.stopPropagation()" type="checkbox" name="config_seq[' + ele.config_seq + ']" value="' + ele.config_seq + '" class="flat"></td>';
                    row += '<td class="hidden-xs">' + ((data.totalRecords - (data.currentPage - 1) * data.pageSize) - index) + '</td>';
                    row += '<td class="hidden-xs">' + ele.board_name + '</td>';
                    row += '<td class="hidden-xs">' + ele.board_type_seq + '</td>';
                    row += '<td class="hidden-xs">' + ele.view_level + '</td>';
                    row += '<td class="hidden-xs">' + ele.write_level + '</td>';
                    row += '<td class="hidden-xs">' + ele.write_id + '</td>';
                    row += '<td class="hidden-xs"><a onclick="event.stopPropagation();" class="btn btn-sm btn-primary" href="#">미리보기</a></td>';

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

function configUpdate(e){
	
	window.location.href = "/admin/configUpdate/" + e;
}

// Pagination
function goPage(page) {
    if(page !== currentPage){
        searchKey(page);
    }
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
function deleteConfigs() {

    // 체크된 체크박스들을 선택
    let checkedCheckboxes = $("input[name^='config_seq']:checked");

    // 선택된 체크박스들의 값을 배열로 저장
    let checkedValuesArr = [];
    checkedCheckboxes.each(function() {
        checkedValuesArr.push($(this).val());
    });

    let checkedValues = checkedValuesArr.join(',');

    if(checkedValues === '' || checkedValues === null){
        alert('삭제할 게시판을 선택해주세요.');
        return;
    }else if(!confirm('선택된 항목들을 삭제하시겠습니까?')){
        return;
    }
    
    $.ajax({
        type : "POST",
        url : "/admin/configDelete",
        data : JSON.stringify({'delConfigs': checkedValues}),
        contentType:"application/json",
        success : function( data ) {
            if(data > 0){
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