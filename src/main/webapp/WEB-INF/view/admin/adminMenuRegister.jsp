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
<title>adminMenuRegister</title>
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
							<div class="col-xs-6">
								<h3 class="text-info mt5">관리자메뉴관리</h3>
							</div>
							<div class="col-xs-12 text-right">
								<i class="fa fa-star text-danger nano-small" aria-hidden="true"></i> 필수항목
							</div>
						</div>
						<!-- //페이지 명 -->
						<!-- 내용 -->
						<div>
							<form name="form" method="post" action="menu_update_proc" class="form-horizontal">
								<fieldset>
									<div class="well wh-bg mb10">
										<div class="form-group" id="form-group-title">
											<label class="col-sm-2 control-label xs-mt10"><i class="fa fa-star text-danger nano-small" aria-hidden="true"></i><strong> 메뉴명</strong></label>
											<div class="col-sm-4">
												<input type="text" name="title" class="form-control" value="" style="max-width: 500px">
											</div>

											<label class="col-sm-2 control-label xs-mt10"> <strong>대표URL</strong></label>
											<div class="col-sm-4">
												<input type="text" name="url" class="form-control" value="" style="max-width: 500px">
											</div>
										</div>
										<div class="form-group" id="form-group-depth">
											<label class="col-sm-2 control-label xs-mt10"> <strong>메뉴단계</strong></label>
											<div class="col-sm-4 ">
												<select id="menu_type" name="depth" style="max-width: 500px" class="form-control pointer" onchange="disablePMenu()">
													<option value="1" selected="">대메뉴</option>
													<option value="2">소메뉴</option>
												</select>
											</div>

											<label class="col-sm-2 control-label xs-mt10"> <strong>부모메뉴</strong></label>
											<div class="col-sm-4">
												<select id="p_menu" name="p_menu_seq" style="max-width: 500px" class="form-control pointer">
													<option value="0">루트</option>
													<c:forEach var="menu" items="${parentMenus }">
														<option value="${menu.menu_seq }">${menu.title }</option>
													</c:forEach>
												</select>
											</div>
										</div>
										<div class="form-group" id="form-group-auth_level">
											<label class="col-sm-2 control-label xs-mt10"> <strong>접근레벨</strong></label>
											<div class="col-sm-4">
												<select name="auth_level" style="max-width: 500px" class="form-control pointer">
													<option value="0" selected="">시스템관리자</option>
													<option value="2">일반관리자</option>
												</select>
											</div>

											<label class="col-sm-2 control-label xs-mt10"> <strong>정렬번호</strong></label>
											<div class="col-sm-4">
												<input type="number" name="order_num" class="form-control" value="" style="max-width: 500px">
											</div>
										</div>
										<div class="form-group" id="form-group-dir">
											<label class="col-sm-2 control-label xs-mt10"> <strong>디렉토리</strong></label>
											<div class="col-sm-4">
												<input type="text" name="dir" class="form-control" value="" style="max-width: 500px">
											</div>

											<label class="col-sm-2 control-label xs-mt10"> <strong>파일명</strong></label>
											<div class="col-sm-4">
												<input type="text" name="dir" class="form-control" value="" style="max-width: 500px">
											</div>
										</div>
										<div class="form-group" id="form-group-icon_class">
											<label class="col-sm-2 control-label xs-mt10"> <strong>아이콘 클래스</strong></label>
											<div class="col-sm-4">
												<input type="text" name="icon_class" class="form-control" value="" style="max-width: 500px">
											</div>

											<label class="col-sm-2 control-label xs-mt10"> <strong>홈페이지 표출여부</strong></label>
											<div class="col-sm-4">
												<select name="is_open" style="max-width: 500px" class="form-control pointer">
													<option value="N" selected="">아니오</option>
													<option value="Y">예</option>
												</select>
											</div>
										</div>
										<div class="form-group" id="form-group-target">
											<label class="col-sm-2 control-label xs-mt10"> <strong>새창여부</strong></label>
											<div class="col-sm-4">
												<select name="target" style="max-width: 500px" class="form-control pointer">
													<option value="N" selected="">사용안함</option>
													<option value="Y">새창</option>
												</select>
											</div>
										</div>
									</div>
								</fieldset>
							</form>
						</div>
						<!-- //내용 -->
						<div class="row pull-right">
							<button class="btn btn-mini btn-primary" onclick="save()">
								<i class="fa fa-save"></i> Save
							</button>
							<a href="/admin/adminMenuMng" class="btn btn-mini btn-default"><i class="fa fa-list"></i> Back </a>
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
disablePMenu();
function save() {
	  let formData = new FormData();
	  let arr = ['title', 'url', 'depth', 'p_menu_seq','auth_level','order_num', 'dir', 'file_name', 'icon_class', 'visible', 'new_window'];
	  let inputArr = $('form').find('input, select');
	  inputArr.each((idx,e)=>{
		  //console.log($(e).val());
	  })
	  
	  // Loop through the array and append data to FormData
	  arr.forEach((element, index) => {
	    const inputValue = inputArr.eq(index).val(); // Get value from corresponding input element
	    formData.append(element, inputValue);
	  });

	  $.ajax({
	    url: "/admin/adminMenuRegProc",
	    method: "POST",
	    data: formData,
	    contentType: false,
	    processData: false,
	    success: function(data) {
	      console.log(data);
	      //alert('등록 완료');
	      //window.location.href = "/admin/adminMenuMng";
	    },
	    error: function(error) {
	      alert(error);
	    },
	  });
	}
	
function disablePMenu(){
	if($('#menu_type').val() == 1){
		$('#p_menu').val('0').prop('disabled',true);
	}else{
		$('#p_menu').prop('disabled',false);
	}
}
</script>
</html>