<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
<title>이사회</title>
</head>
<style>
/* 선택된 카테고리 스타일 */
.selected {
	font-weight: bold; /* 글자 두껍게 */
	color: blue; /* 파란색 */
	font-size: 1.2em; /* 글자 크기 조정 */
}

/* 호버 효과 */
#category-list li:hover {
	cursor: pointer; /* 마우스 포인터 변경 */
	font-weight: bold; /* 글자 두껍게 */
	color: blue; /* 파란색 */
	font-size: 1.1em; /* 글자 크기 조정 */
}
</style>
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
				<div class="panel-body">
					<div class="page-header">
						<div class="row">
							<div class="col-md-5 pl10">
								<h2>블로그타입1 게시판</h2>
							</div>
							<div class="col-md-7 text-right">
								<ol class="breadcrumb hidden-xs">
									<li><a href="./"> <i class="glyphicon glyphicon-home"></i>
											홈
									</a></li>
									<li>자료실</li>
									<li class="active">블로그 타입1 게시판</li>
								</ol>
							</div>
						</div>
					</div>

					<div id="customer_container">
						<!-- 게시판 목록 -->
						<!-- 카테고리 타입1 -->
						<div class="category-wrap">
									<ul id="category-list">
										<li value="" onclick="handleCategoryClick(this)">
											<strong>전체</strong>
										</li>
										<c:forEach var="category" items="${cate}" varStatus="status">
											<li value="${category.category_seq}" onclick="handleCategoryClick(this)">
												<strong>${category.title}</strong>
											</li>
										</c:forEach>
									</ul>
									<input type="hidden" name="category_seq" id="category_seq">
								</div>
						<!-- //카테고리 타입1 -->

						<!-- 총게시물 수 & 목록검색 -->
						<div class="row mt15 mb10">
							<div class="col-sm-6">
								<!-- 총 게시물 수 -->
								<div class="pagetotal">
									Total: <strong id="totalRecords" class="text-primary">${totalRecords}</strong>
									count
								</div>
								<!-- //총 게시물 수 -->
							</div>
							<div class="col-sm-6 text-right">
								<!-- 목록 검색 -->
								<form class="form-inline search-form" name="searchForm"
									action="#">
									<fieldset>
										<div class="form-group">
											<label for="searchCate" class="sr-only">검색 옵션</label> <select
												id="searchCate" name="searchCate" class="form-control pr20">
												<option value="title">제목</option>
												<option value="content">내용</option>
											</select>
										</div>
										<div class="input-group">
											<label for="keywordInput" class="sr-only"></label> <input
												type="text" id="keywordInput" class="form-control"
												name="keyword" value="${keyword}" placeholder="키워드 입력">
											<span class="input-group-btn">
												<button type="button" class="btn btn-default"
													onclick="javascript:searchKey();">검색</button>
											</span>
										</div>
									</fieldset>
								</form>
								<!-- //목록 검색 -->
							</div>
						</div>
						<!-- //총게시물 수 & 목록검색 -->

						<!-- 게시물 -->
						<div class="row">
							<div class="table-responsive">
								<table id="data-table" class="table text-center table-hover">
									<tbody>
									</tbody>
								</table>
							</div>
						</div>
						<!-- //게시물 -->

						<!-- 페이징 -->
						<div class="row" style="text-align: center;">
							<!--페이징-->
							<nav class="text-center">
								<!-- 페이징 정보 위치 -->
								<ul id="pagination" class="pagination pagination-sm num-webfont">

								</ul>
							</nav>
							<!--페이징-->
						</div>
						<div class="row mt15">
							<div class="text-right">
								<a id="writeBtn" href="/site/write/${config.config_seq}"
									class="btn btn-primary">글쓰기</a>
							</div>
						</div>
						<!-- //검색 및 버튼 -->
						<!-- //게시판 목록 -->
					</div>
				</div>
			</div>
			<!-- //콘텐츠 -->
		</div>
	</div>
	<!-- //콘테이너 -->
	<%@ include file="../layout/footer1.jsp"%>
</body>
<script>
// Tracks The Current Page
let currentPage = 1;

// Search Function
function searchKey(page = 1){
	var categorySeq = document.getElementById('category_seq');
	
    let inputArr = $('.panel-body').find('input, select');
    let arr = ['searchCate', 'keyword'];
    let formData = new FormData();
    formData.append('category_seq', categorySeq.value);
    formData.append('page', page);
    formData.append('config_seq', ${config.config_seq});
    arr.forEach((e,idx) => {
        formData.append(e, inputArr[idx+1].value);
    });
    
    $.ajax({
        type : "POST",
        url : "/site/getBoardList",
        data : formData,
        processData:false,
        contentType:false,
        success : function( data ) {
           
            // Current Page Update
            currentPage = page;

            // adminList is empty
            if (data.boardList.length === 0) {
                $('#pagination').hide(); // Hide pagination
                $('#data-table tbody').html('<tr><td colspan="7" class="text-center pb100 pt100 font-size-16">검색된 결과가 없습니다.</td></tr>'); // Show no results message
                $('#totalRecords').text(0);
                return;
            }

            // Table Update
            $('#totalRecords').text(data.totalRecords);
            let tableBody = $('#data-table tbody');
            tableBody.empty();
			
            data.boardList.forEach(function(board, index) {
                let row = '<div class="odd pointer">';
                row += '</div>'; // closing for 'odd pointer'
                row += '<div class="col-sm-4">';
                row += '<a href="/site/write/update/' + board.board_seq + '/' + ${config.config_seq}+'" class="blog-img">';
				if(board.thumb === "Y"){
					row += '<img src="/img/user/sample03.jpg" class="img-responsive img-rounded" alt="" /></a>';
				} else {
					row += '<img src="/img/common/no_img.png" class="img-responsive img-rounded" alt="" /></a>';
				}
                row += '</a>';
                row += '<div class="blog-desc" style="text-align: left">';
                row += '<a href="javascript:void(0);" class="subject h4 mb10">';
                row += '<strong>' + board.title + '</strong>';
                row += '</a>';
                row += '<span class="post-date num-webfont">';
                row += '<i class="fa fa-calendar"></i>' + board.write_time + '</span>';
                row += '<p class="text-muted mb10">' + board.content + '</p>';
                row += '<a href="javascript:void(0);" class="btn btn-xs btn-default">더보기</a>';
                row += '</div>';
                row += '</div>'; // closing for 'col-sm-4'
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

// Category Click
function handleCategoryClick(element) {
    // 클릭한 카테고리에 대한 처리 예시
    var categoryId = element.value; // 카테고리 ID 가져오기
    console.log("Clicked category ID:", categoryId);

    // 다른 카테고리 스타일 초기화 (예시)
    var categoryList = document.getElementById('category-list');
    var listItems = categoryList.getElementsByTagName('li');
    for (var i = 0; i < listItems.length; i++) {
        listItems[i].classList.remove('selected'); // 선택된 스타일 제거
    }
	
    var cate = document.getElementById('category_seq');
    cate.value = categoryId;
    
    // 선택한 카테고리에 스타일 추가 (예시)
    element.classList.add('selected'); // 선택된 스타일 추가
    
    searchKey(1);
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
});
</script>
</html>