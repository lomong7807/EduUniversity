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
								<h3 class="text-info mt5">코드관리</h3>
							</div>
						</div>
						<!-- //페이지 명 -->
						<!-- 목록 -->
						<form Method="Post" id="teacher_list" name="teacher_list">
							<input type="hidden" id="schIcon" name="schIcon" value="schIcon" /> <input type="hidden" id="sel" name="sel" />
							<fieldset>
								<div>여기기기기기ㅣ</div>
								<div id="searchPanelWrapper"></div>
								<!-- 목록 검색 -->
								<!-- //목록 검색 -->

								<!-- 총 게시물 수 -->
								<div class="pagetotal">
									Total: <strong class="text-primary">3</strong> count
								</div>
								<!-- //총 게시물 수 -->
								<!-- 게시물 -->
								<table class="table text-center table-hover">
									<thead class="hidden-xs">
										<tr class="headings">
											<th class="hidden-xs"><input type="checkbox" id="check-all" class="flat"></th>
											<th class="column-title hidden-xs">No.</th>
											<th class="column-title hidden-xs">코드종류</th>
											<th class="column-title hidden-xs">코드값</th>
											<th class="column-title hidden-xs">제목</th>
										</tr>
									</thead>
									<tbody>
										<!-- Loop -->
										<tr class="odd pointer">
											<td><input type="checkbox" name="code_seq[0]" value="154" class="flat"></td>
											<td class="hidden-xs">172</td>
											<td class="hidden-xs"><a href="code_manager_edit.html?page=1&amp;code_seq=154">ACADEMY_LEVEL</a></td>
											<td class="hidden-xs"><a href="code_manager_edit.html?page=1&amp;code_seq=154">non</a></td>
											<td class="hidden-xs"><a href="code_manager_edit.html?page=1&amp;code_seq=154">비회원</a></td>
											<!-- 작은화면 목록 -->
											<td class="text-left hidden-sm hidden-md hidden-lg">
												<div class="hidden-sm hidden-md hidden-lg">
													<ul class="list-icon mb5">
														<li><span class="text-info">코드종류 </span> : <a href="code_manager_edit.html?page=1&amp;code_seq=154">ACADEMY_LEVEL</a></li>
														<li><a href="code_manager_edit.html?page=1&amp;code_seq=154"><span class="text-info">코드값 </span> : </a><a href="code_manager_edit.html?page=1&amp;code_seq=154">non</a></li>
														<li><a href="code_manager_edit.html?page=1&amp;code_seq=154"><span class="text-info">제목 </span> : </a><a href="code_manager_edit.html?page=1&amp;code_seq=154">비회원</a></li>
														<a href="code_manager_edit.html?page=1&amp;code_seq=154"> <!--<span class="text-info mr5">thacher2<span class="hidden-md hidden-lg"> (여)</span></span>-->
														</a>
													</ul>
													<a href="code_manager_edit.html?page=1&amp;code_seq=154"> </a>
												</div> <a href="code_manager_edit.html?page=1&amp;code_seq=154"> </a>
											</td>
											<!--// 작은화면 목록 -->
										</tr>
										<!-- /Loop -->
									</tbody>
								</table>
								<!-- //게시물 -->
								<!-- 버튼 -->
								<div class="row">
									<div class="col-sm-6 col-sm-offset-3">
										<!-- 페이징 -->
										<nav class="text-center">
											<ul class="pagination pagination-sm num-webfont">
												<li><a href="#" aria-label="Previous" title="처음"> <span aria-hidden="true"><i class="fa fa-angle-double-left" aria-hidden="true"></i></span>
												</a></li>
												<li><a href="#" aria-label="Previous" title="이전"> <span aria-hidden="true"><i class="fa fa-angle-left" aria-hidden="true"></i></span>
												</a></li>
												<li class="active"><a href="#">1</a></li>
												<li><a href="#">2</a></li>
												<li><a href="#">3</a></li>
												<li><a href="#">4</a></li>
												<li><a href="#">5</a></li>
												<li><a href="#" aria-label="Next" title="다음"> <span aria-hidden="true"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
												</a></li>
												<li><a href="#" aria-label="Next" title="마지막"> <span aria-hidden="true"><i class="fa fa-angle-double-right" aria-hidden="true"></i></span>
												</a></li>
											</ul>
										</nav>
										<!-- //페이징 -->
									</div>
									<div class="col-sm-3 text-right xs-mt10">
										<a href="/admin/registerCode" class="btn btn-primary">코드 등록</a>
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
class SearchPanel {
    eleList = [];
    constructor(jqueryObj) {
        this.parentObj = jqueryObj;
        //panel을 매개변수로 온 jqueryObj 에 붙임.
        let panel = $('<div class = "panel panel-default text-center"></div>');
        this.parentObj.append(panel);
        
        // panel body 를 붙임.  
        let panelBody = $('<div class="panel-body">');
        this.panelBody = panelBody;
       	panel.append(panelBody);
       	
        this.appendNewRow('basicData');
    }
  
    // row 를 panelBody 에 붙임.
    appendNewRow(title){
        let row = $('<div class="row">');
        this.panelBody.append(row);
        let titleDiv = $('<div class="col-sm-2 text-left">');
        let titleText = $('<div class = "mt5">');
        titleText.text(title);
        titleDiv.append(titleText);
        row.append(titleDiv);
        let inputAreaWrapper = $('<div class = "col-sm-10">');
        row.append(inputAreaWrapper);
        let inputArea = $('<div class = "row-mb10">');
        inputAreaWrapper.append(inputArea);
        this.inputArea = inputArea;
    }

    appendInputSelect(list,name,ratio){
        let wrapper = $('<div class = "col-sm-'+ ratio + ' mb10">')
        let select = $('<select class="form-control hasVal" name = "'+ name +'">');
        list.forEach(e => {
            select.append($('<option value="'+ e +'">'+ e + '</option>'));
        });
        wrapper.append(select);
        this.inputArea.append(wrapper);
    }

    appendInputText(ratio){
        let wrapper = $('<div class = "col-sm-'+ ratio + ' mb10">')
        let inputEle = $('<input type = "text" class= "form-control hasVal">');
        wrapper.append(inputEle);
        this.inputArea.append(wrapper);
    }
        
    appendInputDate(ratio){
        let wrapper = $('<div class = "col-sm-'+ ratio + ' mb10">');
        let wrapper2 = $('<div class = "col-sm-'+ ratio + ' mb10">');
        wrapper.append($('<input type="text" name = "Date1" class="form-control datetimepicker hasVal" value = "">'));
        wrapper2.append($('<input type="text" name = "Date2" class="form-control datetimepicker hasVal" value = "">'));
        this.inputArea.append(wrapper);
        this.inputArea.append(wrapper2);
    }
    
    makeSearchBtn(){
    	let wrapper = $('<div class = "col-sm-'+ ratio + ' mb10">');
    	let searchBtn = $('<button type = "button" class="btn btn-block btn-default">' + '검색' + '</button>');
    	wrapper.append(searchBtn);
    	searchBtn.on('click',()=> getSearchData());
    }
            
    getSearchData(){
        let eles = $('.panel-body').find('.hasVal');
        let list = [];
        eles.each((idx,e)=>{
            list.push($(e).val());
        })
        return list;
    }
 }
let sp = new SearchPanel($('#searchPanelWrapper'));
sp.appendInputDate(2);
sp.appendInputText(2);


</script>
</html>