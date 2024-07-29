<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
								<h3 class="text-info mt5">사이트메뉴관리</h3>
							</div>
						</div>
						<!-- //페이지 명 -->
						<!-- 목록 -->
						<div>
							<input type="hidden" id="schIcon" name="schIcon" value="schIcon" /> <input type="hidden" id="sel" name="sel" />
							<fieldset>
								<!-- 목록 검색 -->
								<div class="panel panel-default text-center" style="border-radius: 10px; box-shadow: 3px 3px 10px -7px;">
									<div class="panel-body">
										<div class="row ">
											<div class="col-sm-3 text-left mt5 hidden-xs hidden-sm hidden-md">
												<strong>Company</strong>
											</div>
											<div class="col-sm-9">
												<div class="row">
													<div class="col-sm-5">
														<select id="schDisplayYN" name="schDisplayYN" class="form-control pointer">
															<option>본사 / admin</option>
															<option value="Y">본사1 / admin1</option>
															<option value="N">본사2 / admin2</option>
														</select>
													</div>
												</div>
											</div>
										</div>

										<div class="row mt10 mb10">
											<div class="col-sm-3 text-left mt5 hidden-xs hidden-sm hidden-md">
												<strong>Basic Data</strong>
											</div>
											<div class="col-sm-9">
												<div class="row">
													<div class="col-sm-5">
														<select id="schStatus" name="schStatus" class="form-control pointer">
															<option value="">메뉴명</option>
														</select>
													</div>
													<div class="col-sm-5">
														<input type="text" class="form-control" name="keyword" value="" placeholder="Keyword">
													</div>
													<div class="col-sm-2">
														<button type="button" class="btn btn-block btn-default" onclick="javascript:searchKey();">
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
									Total: <strong id="totalRecords" class="text-primary">3</strong> count
								</div>
								<!-- //총 게시물 수 -->
								<!-- 게시물 -->
								<div name="form" method="post" action="menu_proc.php">
									<input type="hidden" name="mode" value="delete">
									<div>
										<table class="table text-center hidden-xs">
											<thead class="">
												<tr class="headings">
													<th><input type="checkbox" id="check-all" class="flat"></th>
													<th class="column-title">No.</th>
													<th class="column-title">메뉴명</th>
													<th class="column-title">메뉴단계</th>
													<th class="column-title">정렬번호</th>
													<th class="column-title">접근레벨</th>
												</tr>
											</thead>
											<tbody>

											</tbody>
										</table>
										<!-- 작은화면 -->
										<div class="hidden-lg hidden-md hidden-sm">
											<div class="row m10" style="border-bottom: 1px solid #ddd; padding: 10px; border-top: 1px solid #ddd">
												<div class="col-xs-2 mt50">
													<input type="checkbox" name="menu_seq[1]" value="2" class="flat">
												</div>
												<ul class="col-xs-9 list-icon pointer">
													<li>메뉴명 : 회원관리</li>
													<li>대메뉴</li>
													<li>1</li>
													<li>시스템관리자</li>
													<li><a href="menu_edit.html?page=&amp;menu_seq=2"></a><a href="menu_list2.html?p_menu_seq=2" class="btn btn-mini btn-info"><i class="fa fa-folder-open"></i> 하위메뉴 (9)</a></li>
												</ul>
											</div>
											<div class="row m10" style="border-bottom: 1px solid #ddd; padding: 10px; border-top: 1px solid #ddd">
												<div class="col-xs-2 mt50">
													<input type="checkbox" name="menu_seq[2]" value="3" class="flat">
												</div>
												<ul class="col-xs-9 list-icon pointer">
													<li>메뉴명 : 강사관리</li>
													<li>대메뉴</li>
													<li>2</li>
													<li>시스템관리자</a></li>
													<li><a href="menu_edit.html?page=&amp;menu_seq=3"></a><a href="menu_list2.html?p_menu_seq=3" class="btn btn-mini btn-info"><i class="fa fa-folder-open"></i> 하위메뉴 (6)</a></li>
												</ul>
											</div>
										</div>
									</div>

									<!-- 작은화면 -->
								</div>
								<div class="row" style="text-align: center;">
									<!--페이징-->
									<nav class="text-center">
										<ul  id="pagination" class="pagination pagination-sm num-webfont">
										</ul>
									</nav>
									<!--페이징-->
								</div>

								<div class="row pull-right">
									<button id="rootMenus" href="#" class="btn btn-mini btn-warning" onclick="goRootMenu()">
										<i class="fa fa-folder-open"></i> 상위메뉴
									</button>
									<a href="#" class="btn btn-mini btn-default" onclick="deleteMenus();">삭제하기 </a> <a href="#" class="btn btn-mini btn-primary" onclick="javascript:location.href='/admin/siteMenuRegister';">등록하기</a>

								</div>
								<!-- //게시물 -->
							</fieldset>
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
let currentPage = 1;
let p_menu_seq = 0;
$('#keywordInput').on('keyup', function(event) {
    if (event.key === 'Enter') {
        searchKey(1,p_menu_seq);
    }
});
searchKey(1,0);


function searchBtnClicked(){
	searchKey(1,p_menu_seq);
}

function goRootMenu(){
	searchKey(1,0);
}

// Search Function
function searchKey(page = 1, pMenuSeq){
	console.log(pMenuSeq)
	console.log('original p Menu Seq : ' + p_menu_seq);
	p_menu_seq = pMenuSeq; 
	console.log('now pms : ' + p_menu_seq);
    let inputArr = $('.panel-body').find('input, select');
    let arr = ['company_seq','searchCate', 'keyword'];
    let formData = new FormData();
    formData.append('page', page);
    formData.append('p_menu_seq', p_menu_seq);
    arr.forEach((e,idx) => {
        formData.append(e, inputArr[idx].value);
    });

    $.ajax({
        type : "POST",
        url : "/admin/siteMenuSearch",
        data : formData,
        processData:false,
        contentType:false,
        success : function( data ) {
		console.log(data);
            // Current Page Update
            currentPage = page;
            if(p_menu_seq == 0){
            	if($('#lc')){
            		$('#lc').remove();
            	}
            	$('.headings').append($('<th id="lc" class="column-title">하위메뉴</th>'));
            	$('#rootMenus').hide();
            }else{
            	$('#lc').remove();
            	$('#rootMenus').show();
            }
            // adminList is empty
            if (data.siteMenuList.length === 0) {
                $('#pagination').hide(); // Hide pagination
                $('tbody').html('<tr><td colspan="7" class="text-center">검색된 결과가 없습니다.</td></tr>'); // Show no results message
                $('#totalRecords').text(0);
                return;
            }
            // adminList is empty
            if (data.siteMenuList.length === 0) {
                $('#pagination').hide(); // Hide pagination
                $('tbody').html('<tr><td colspan="7" class="text-center">검색된 결과가 없습니다.</td></tr>'); // Show no results message
                $('#totalRecords').text(0);
                $('#rootMenus').hide();
                return;
            }
			
            // Table Update
            $('#totalRecords').text(data.totalRecords);
            let tableBody = $('tbody');
            tableBody.empty();
            
			data.siteMenuList.forEach(function(menu, index) {
                let row = '<tr class="odd pointer" onclick=" menuUpdate('+ menu.menu_seq +');">';
                row += '<td><input type="checkbox" onclick="event.stopPropagation();" name="menu_seq[' + menu.menu_seq + ']" value="' + menu.menu_seq + '" class="flat"></td>';
                row += '<td class="hidden-xs">' + ((data.totalRecords - (data.currentPage - 1) * data.pageSize) - index) + '</td>';
                row += '<td class="hidden-xs">' +  menu.title + '</td>';
                row += '<td class="hidden-xs">' +  menu.depth + '</td>';
                row += '<td class="hidden-xs">' + menu.order_num + '</td>';
                row += '<td class="hidden-xs">' + menu.auth_level + '</td>';
                if(menu.p_menu_seq == 0){
                	row += '<td class="hidden-xs"><button onclick="searchKey(1,'+ menu.menu_seq + '); event.stopPropagation()" class="btn btn-mini btn-info pointer"> <i class="fa fa-folder-open"></i>하위메뉴 ('+ menu.childMenuCnt +')</button></td>';
                }
                row += '</tr>';
                tableBody.append(row);
                console.log('----')
                console.log(menu.childMenuCnt);
                console.log('----')
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

function menuUpdate(e){
	window.location.href = '/admin/siteMenuUpdate/' + e;
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
	
    // 선택된 체크박스들의 값을 배열로 저장
    let checkedValuesArr = [];
    checkedCheckboxes.each(function() {
        checkedValuesArr.push($(this).val());
    });

    let delMenus = checkedValuesArr.join(',');
    if(delMenus === '' || delMenus === null || delMenus.length == 0){
        alert('선택된 게시판이 없습니다.');
        return;
    }
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