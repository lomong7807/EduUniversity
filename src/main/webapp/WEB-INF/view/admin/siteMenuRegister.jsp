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
<title>siteMenuMng</title>
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
						<div class="row form-inline">
							<div class="col-xs-12 mb10">
								<h3 class="text-info mt5">사이트메뉴관리</h3>
							</div>
							<div class="col-xs-12 text-right">
								<i class="fa fa-star text-danger nano-small" aria-hidden="true"></i> 필수항목
							</div>
						</div>
						<!-- //페이지 명 -->
						<!-- 내용 -->
						<div>
							<form id="form1" name="form" method="post" action="menu_proc.php" class="form-horizontal">
								<fieldset>
									<div class="well wh-bg">
										<div class="form-group pointer" id="form-group-target">
											<label class="col-sm-2 control-label xs-mt10"> <strong>소속기업</strong></label>
											<div class="col-sm-4">
												<select name="target" style="max-width: 500px" class="form-control pointer">
													<option value=1 selected="">admin/admin</option>
												</select>
											</div>

											<label class="col-sm-2 control-label xs-mt10"><i class="fa fa-star text-danger nano-small" aria-hidden="true"></i> <strong> 메뉴명</strong></label>
											<div class="col-sm-4">
												<input type="text" name="title" class="form-control" value="" style="max-width: 500px">
											</div>

										</div>
										<div class="form-group" id="form-group-title">

											<label class="col-sm-2 control-label xs-mt10"> <strong>대표URL</strong></label>
											<div class="col-sm-4">
												<input type="text" name="url" class="form-control" value="" style="max-width: 500px">
											</div>
											<label class="col-sm-2 control-label xs-mt10"> <strong>메뉴단계</strong></label>
											<div class="col-sm-4">
												<select onchange="depthChanged()" id="depth" name="depth" style="max-width: 500px" class="form-control pointer">
													<option value="1">대메뉴</option>
													<option value="2">소메뉴</option>
												</select>
											</div>

										</div>

										<div class="form-group" id="form-group-depth">

											<label class="col-sm-2 control-label xs-mt10"> <strong>부모메뉴</strong></label>
											<div class="col-sm-4">
												<select name="p_menu_seq" style="max-width: 500px" class="form-control pointer">
													<c:forEach var="item" items="${pMenus }">
														<option value="${item.menu_seq }">${item.title }</option>
													</c:forEach>
												</select>
											</div>
											<label class="col-sm-2 control-label xs-mt10"> <strong>정렬번호</strong></label>
											<div class="col-sm-4">
												<input type="number" name="banner_image_text" class="form-control" value="" style="max-width: 500px">
											</div>
										</div>
										<div class="form-group" id="form-group-auth_level">


											<label class="col-sm-2 control-label xs-mt10"> <strong>홈페이지 표출여부</strong></label>
											<div class="col-sm-4">
												<select name="is_open" style="max-width: 500px" class="form-control pointer">
													<option value="N">아니오</option>
													<option value="Y">예</option>
												</select>
											</div>
											<label class="col-sm-2 control-label xs-mt10"><strong>메뉴 타입</strong> </label>
											<div class="col-sm-4">
												<select id="menuType" name="target" style="max-width: 500px" class="form-control pointer" onchange="menuTypeChanged()">
													<option value="normal">일반</option>
													<option value="board">게시판</option>
												</select>
											</div>
										</div>
									</div>
								</fieldset>
							</form>
						</div>

						<!-- 게시판 정보 -->
						<form id="form2" class="form-horizontal" method="post" action="">
							<fieldset>
								<div class="well wh-bg">
									<div class="form-group">
										<label for="t_MemID" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> 목록글 개수
										</label>
										<div class="col-sm-4">
											<input data-pattern="number" class="form-control" value="20" />
										</div>
										<label for="t_MemName" class="col-sm-2 control-label xs-mt10"> <i class="text-danger nano-small" aria-hidden="true"></i> 목록 제목 길이
										</label>
										<div class="col-sm-4">
											<input data-pattern="number" class="form-control" value="20" />
										</div>
									</div>


									<div class="form-group">
										<label for="t_UnitCost" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> 보기권한
										</label>
										<div class="col-sm-4">
											<select id="schConvert" name="schConvert" class="form-control input-sm form-control-inline">
												<option value="1" selected=selected>권한1</option>
												<option value="2">권한2</option>
											</select>
										</div>
										<label for="t_UnitCost" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> 쓰기권한
										</label>
										<div class="col-sm-4">
											<select id="schConvert" name="schConvert" class="form-control input-sm form-control-inline">
												<option value="1" selected=selected>권한1</option>
												<option value="2">권한2</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="t_UnitCost" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> 스킨디렉토리
										</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="main_banner_text" value="" required />
										</div>
										<label for="t_UnitCost" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> 게시판 타입
										</label>
										<div class="col-sm-4">
											<select id="schConvert" name="schConvert" class="form-control input-sm form-control-inline">
												<c:forEach var="type" items="${boardType}">
													<option value="${type.board_type_seq }">${type.title }</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="t_UnitCost" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> 상단 인클루드
										</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="main_banner_text" value="" required />
										</div>
										<label for="t_UnitCost" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> 하단 인클루드
										</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="main_banner_text" value="" required />
										</div>
									</div>
									<div class="form-group">
										<label for="t_UnitCost" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> 파일업로드 사용
										</label>
										<div class="col-sm-4">
											<select id="schConvert" name="schConvert" class="form-control input-sm form-control-inline">
												<option value="Y" selected=selected>Y</option>
												<option value="N">N</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="t_UnitCost" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> 업로드 제한(MB)
										</label>
										<div class="col-sm-4">
											<input data-pattern="number" class="form-control" name="main_banner_text" value="1500" required />
										</div>
										<label for="t_UnitCost" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> 업로드 제한(개수)
										</label>
										<div class="col-sm-4">
											<input data-pattern="number" class="form-control" name="main_banner_text" value="15" required />
										</div>
									</div>
									<div class="form-group">
										<label for="t_UnitCost" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> HTML 에디터 사용
										</label>
										<div class="col-sm-4">
											<select id="schConvert" name="schConvert" class="form-control input-sm form-control-inline">
												<option value="Y" selected=selected>Y</option>
												<option value="N">N</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="t_UnitCost" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> 답변글 사용
										</label>
										<div class="col-sm-4">
											<select id="schConvert" name="schConvert" class="form-control input-sm form-control-inline">
												<option value="Y" selected=selected>Y</option>
												<option value="N">N</option>
											</select>
										</div>
										<label for="t_UnitCost" class="col-sm-2 control-label"> <i class="text-danger nano-small" aria-hidden="true"></i> 댓글 사용
										</label>
										<div class="col-sm-4">
											<select id="schConvert" name="schConvert" class="form-control input-sm form-control-inline">
												<option value="Y" selected=selected>Y</option>
												<option value="N">N</option>
											</select>
										</div>
									</div>
								</div>
							</fieldset>
						</form>
						<!-- //내용 -->
						<div class="row pull-right">
							<a href="#" class="btn btn-mini btn-primary" onclick="save();"><i class="fa fa-save"></i> Save </a> <a href="/admin/siteMenuMng" class="btn btn-mini btn-default"><i class="fa fa-list"></i>
								Back </a>

						</div>
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
//form2 숨기기
$('#form2').hide();


if($('#depth').val() == 1){
	$('#menuType').attr('disabled',true);
}

//정규식
$('input[data-pattern="number"]').each(function() {
    const $input = $(this);
    const pattern = new RegExp($input.data('pattern'));

    $input.on('input', function() {
      const value = $input.val();
      if (!pattern.test(value)) {
        $input.val(value.replace(/[^0-9]/g, '')); // 유효하지 않은 문자 제거
      }
    });
  });

//대메뉴 / 소메뉴 될 때 이벤트
function depthChanged(){
	if($('#depth').val() == 1){
		$('#menuType').attr('disabled',true);
		if($('#menuType').val() == 'board'){
			$('#menuType').val('normal');
			$('#form2').hide();
		}
	}else{
		$('#menuType').attr('disabled',false);
	}
}

// 메뉴 타입이 바뀔 때 form2 show 
function menuTypeChanged(){
	console.log($('#menuType').val());
	if($('#menuType').val() == 'board'){
		$('#form2').show();
	}else{
		$('#form2').hide();
	}
}
	
// 저장 버튼
function save() {
	//검증
	if($('#menuType').val() == 'board'){
		let allValues = $('input,select');
		for(let i = 0; i < allValues.length; i++){
			if(allValues[i].value == 0 || allValues[i].value.trim() == '' || allValues[i].value == null || allValues[i].value == undefined){
				alert('모든 값을 입력해주세요.')
				return;
			}
		}	
	}else{
		let allValues = $('#form1').find('input,select');
		for(let i = 0; i < allValues.length; i++){
			if(allValues[i].value == 0 || allValues[i].value.trim() == '' || allValues[i].value == null || allValues[i].value == undefined){
				alert('모든 값을 입력해주세요.')
				return;
			}
		}
	}
	
	  let formData = new FormData();
	  let arr = ['company_seq','title', 'url', 'depth', 'p_menu_seq','order_num', 'is_open', 'menu_type'];
	  let inputArr = $('#form1').find('input, select');
	  inputArr.each((idx,e)=>{
		  console.log($(e).val());
	  })
	  
	  // Loop through the array and append data to FormData
	  arr.forEach((element, index) => {
	    const inputValue = inputArr.eq(index).val(); // Get value from corresponding input element
	    console.log(element + ' : ' + inputValue);
	    formData.append(element, inputValue);
	  });
	
	  
	  if($('#menuType').val() == 'board'){
		  console.log('here');
		  let boardArr = $('#form2').find('input,select');
		  let boardConfig = ['list_num','title_length','view_level','write_level','skin_dir','board_type','header_include','footer_include','is_file_use','max_file_size','max_file_num','is_editor_use','is_reply_use','is_comment_use'];
		  boardConfig.forEach((e,idx)=>{
			  console.log(e)
			  formData.append(e,boardArr[idx].value);
		  })
	  }

	  $.ajax({
	    url: "/admin/siteMenuRegProc",
	    method: "POST",
	    data: formData,
	    contentType: false,
	    processData: false,
	    success: function(data) {
	      console.log(data);
	      alert('등록 완료');
	      window.location.href = "/admin/siteMenuMng";
	    },
	    error: function(error) {
	      alert(error);
	    },
	  });
	}

</script>
</html>