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
<title>ComnCdRegister</title>
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

					<!-- 페이지 명 -->
					<div class="row form-inline mb10">
						<div class="col-xs-6">
							<h3 class="text-info mt5">코드관리</h3>
						</div>
						<div class="col-xs-6 text-right">
							<i class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
							필수항목
						</div>
					</div>
					<!-- //페이지 명 -->
					<!-- 내용 -->
					<div>
						<form name="form" method="post" action="code_manager_proc.php"
							class="form-horizontal">
							<fieldset>
								<input type="hidden" name="code_seq" value=""> <input
									type="hidden" name="mode" value="insert"> <input
									type="hidden" name="page" value="1">
								<div class="well wh-bg">
									<div class="form-group" id="form-group-code_type">
										<label class="col-sm-2 control-label xs-mt10"><i
											class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
											<strong>Common_Cd</strong></label>
										<div class="col-sm-4">
											<input type="text" name="code_type" class="form-control"
												value="" style="max-width: 500px">
										</div>

										<label class="col-sm-2 control-label xs-mt10"> <strong>Cd_Value</strong>코드값
										</label>
										<div class="col-sm-4">
											<input type="text" name="code_value" class="form-control"
												value="" style="max-width: 500px">
										</div>
									</div>
									<div class="form-group" id="form-group-title">
										<label class="col-sm-2 control-label xs-mt10"><strong>Upper_Code</strong></label>
										<div class="col-sm-4">
											<input type="text" name="title" class="form-control" value=""
												style="max-width: 500px">
										</div>

										<label class="col-sm-2 control-label xs-mt10"><strong>SortNo</strong></label>
										<div class="col-sm-4">
											<input type="text" name="order_no" class="form-control"
												value="" style="max-width: 200px">
										</div>
									</div>
								</div>
							</fieldset>
						</form>
					</div>

					<div class="row pull-right">
						<a href="#" class="btn btn-mini btn-primary"
							onclick="javascript:save();"><i class="fa fa-save"></i> Save
						</a> <a href="#" class="btn btn-mini btn-default"
							onclick="javascript:location.href='code_manager_list.html?page=';"><i
							class="fa fa-list"></i> Back </a>

					</div>



					<script type="text/javascript">
		// 폼값 체크
		function check() { 
			var f1 = document.form; 
			if( f1.title.value=="" ) { 
				alert('제목의 값은 필수입력입니다.');
				f1.title.focus(); 
				return false ;
			}
			if( f1.title.value.length < 1 ) { 
				alert('제목의 최소 입력 자릿수는 1자리 입니다.');
				f1.title.focus(); 
				return false ;
			}
			if( f1.title.value.length > 250 ) { 
				alert('제목의 최대 입력 자릿수는 250자리 입니다.');
				f1.title.focus(); 
				return false ;
			}
			return true ;
		} 
	</script>
					<script>
function save() {

		
	if (check()==true)
	{
		document.form.submit(); 
	}
}
</script>


					<script>

<!--

   $('#sday').datetimepicker({
        format: 'YYYY-MM-DD'
    });
    
   $('#eday').datetimepicker({
        format: 'YYYY-MM-DD'
    });
    

-->
 
</script>

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
	$('.form-horizontal').on('submit',(e)=>{
		e.preventDefault();
		let formData = new FormData();
		formData.append('common_cd',$('#common_cd').val());
		formData.append('cd_value',$('#cd_value').val());
		formData.append('upper_cd',$('#upper_cd').val());
		formData.append('sort_No',$('sort_No').val());
		$.ajax({
	          url: "/admin/registerCodeProc",
	          method: "POST",
	          data: formData,
	          contentType: false,
	          processData: false,
	          success: function(data) {
	              console.log(data);
	              alert('등록 완료');
	          },
	          error: function(error) {
	              alert(error);
	          },
	        });
		return;
	})
</script>
</html>