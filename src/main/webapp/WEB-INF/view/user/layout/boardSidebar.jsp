<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Sidebar 시작 -->
<div id="sidebar" class="col-md-3">
	<div class="sidebar_wrap">
		<h2 class="page-label labels">
			<strong id="type_name"></strong> <span class="pull-right clickable hidden-md hidden-lg"><i class="fa fa-chevron-up"></i></span>
		</h2>
		<ul id="sidebar_navi" class="list-group">
		</ul>
	</div>
</div>
<script>
$(document).ready(function() {
     $.get('/site/getSideBar/' + $('#selectedMenuSeq').val(), function(data) {
        console.log(data);
           // pMenu title
           $('#type_name').text(data.cMenuList[0].title);
           // cMenus
           let ul = $('.list-group');
           data.cMenuList.forEach( e => {
              let li = $('<li class="list-group-item">');
              let a = $('<a href = "/site/menu/' + e.menu_seq + '"></a>');
              let span = $('<span>');
              let str = $('<strong>' + e.title + '</strong>');
              if(e.menu_seq == $('#selectedMenuSeq').val()){
            	  str.css('color', '#337ab7');
	       	   }
              span.append(str);
              a.append(span);
              li.append(a);
              ul.append(li);
           })
     });
})
   </script>
<!-- SideBar 종료 -->
