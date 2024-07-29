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
<title>ComnCdMng</title>
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
								<h3 class="text-info mt5">코드관리</h3>
							</div>
						</div>
						<!-- //페이지 명 -->
						<!-- 목록 -->
						<form Method="Post" id="teacher_list" name="teacher_list">
							<fieldset>
								<!-- 목록 검색 -->
								<div class="panel panel-default text-center "
									style="border-radius: 10px; box-shadow: 3px 3px 10px -7px;">
									<div class="panel-body ">
										<div class="row">
											<div class="col-md-12 ">
												<div class="row ">
													<div
														class="col-sm-3 text-left mt5 hidden-xs hidden-sm hidden-md">
														<strong>Basic Data</strong>
													</div>
													<div class="col-sm-9">
														<div class="row">
															<div class="col-sm-5">
																<select name="key" class="form-control">
																	<option value="code_type">코드종류</option>
																	<option value="title">코드내용</option>
																</select>
															</div>

															<div class="col-sm-5">
																<input type="text" class="form-control" name="keyword"
																	value="" placeholder="Keyword">
															</div>
															<div class="col-sm-2">
																<button type="button" class="btn btn-block btn-default"
																	onclick="searchBtnClicked(1);">
																	<i class="fa fa-search"></i> Search
																</button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- //목록 검색 -->

								<!-- 총 게시물 수 -->
								<div class="pagetotal">
									Total: <strong id="totalRecords" class="text-primary">3</strong>
									count
								</div>
								<!-- //총 게시물 수 -->
								<!-- 게시물 -->
								<table class="table text-center table-hover">
									<thead class="hidden-xs">
										<tr class="headings">
											<th class="hidden-xs"><input type="checkbox"
												id="check-all" class="flat"></th>
											<th class="column-title hidden-xs">No.</th>
											<th class="column-title hidden-xs">코드종류</th>
											<th class="column-title hidden-xs">코드값</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
								<!-- //게시물 -->
								<!-- 버튼 -->
								<div class="row">
									<div class="col-sm-6 col-sm-offset-3">
										<!-- 페이징 -->
										<nav class="text-center">
											<ul  id="pagination" class="pagination pagination-sm num-webfont">
											</ul>
										</nav>
										<!-- //페이징 -->
									</div>
									<div class="col-sm-3 text-right xs-mt10">
										<a href="/admin/registerCode" class="btn btn-primary">등록하기</a>
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
</body>
<script>
// front 에서 받고 작업필요.
$('#keywordInput').on('keyup', function(event) {
    if (event.key === 'Enter') {
        searchKey(1);
    }
});
searchKey(1);


function searchBtnClicked(){
	console.log('a')
	searchKey(1);
}

// Search Function
function searchKey(page = 1){
	let inputArr = $('.panel-body').find('input, select');
	console.log(inputArr);
	let arr = ['searchCate', 'keyword'];
	let formData = new FormData();
	arr.forEach((e,idx) => {
		formData.append(e, inputArr[idx].value);
		//formData.append(idx);
	})
	console.log(formData.get('searchCate'));
	console.log(formData.get('keyword'));
    $.ajax({
        type : "POST",
        url : "/admin/comnCdSearch",
        data : formData,
        processData:false,
        contentType:false,
        success : function( data ) {
		console.log(data);
            // Current Page Update
            currentPage = page;

            // adminList is empty
            if (data.comnCdList.length === 0) {
                $('#pagination').hide(); // Hide pagination
                $('tbody').html('<tr><td colspan="7" class="text-center">검색된 결과가 없습니다.</td></tr>'); // Show no results message
                $('#totalRecords').text(0);
                return;
            }
			
            // Table Update
            $('#totalRecords').text(data.totalRecords);
            let tableBody = $('tbody');
            tableBody.empty();
            console.log(data);
			data.comnCdList.forEach(function(cd, index) {
                let row = '<tr class="odd pointer" onclick="cdUpdate('+ cd.code_seq +')">';
                row += '<td><input type="checkbox" name="code_seq[' + cd.code_seq + ']" value="' + cd.cd_seq + '" class="flat"></td>';
                row += '<td class="hidden-xs">' + ((data.totalRecords - (data.currentPage - 1) * data.pageSize) - index) + '</td>';
                row += '<td class="hidden-xs">' +  cd.cd_value + '</td>';
                row += '<td class="hidden-xs">' +  cd.common_cd + '</td>';
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

function cdUpdate(e){
	window.location.href = '/admin/comnCdDetail/' + e;
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


//Delete Function
function deleteMenus() {

    // 체크된 체크박스들을 선택
    let checkedCheckboxes = $("input[name^='menu_seq']:checked");
	console.log(checkedCheckboxes);
	return;
    // 선택된 체크박스들의 값을 배열로 저장
    let checkedValuesArr = [];
    checkedCheckboxes.each(function() {
        checkedValuesArr.push($(this).val());
    });

    let delMenus = checkedValuesArr.join(',');

    if(delMenus === '' || delMenus === null){
        alert('선택된 게시판이 없습니다.');
        return;
    }
    console.log(delMenus);
    let data = {'delMenus' : delMenus};
    console.log(data);
    $.ajax({
        type : "POST",
        url : "/admin/siteMenuDelProc",
        data : JSON.stringify(data),
        contentType:"application/json",
        success : function( data ) {
			if(data == 0){
				alert('삭제 성공');
				window.location.href = '/admin/siteMenuMng';				
			}else{
				alert('error');
				return;
			}
        },
        error : function( data ) {
            console.log( "error : " + data );
        }
    });
}
</script>
</html>