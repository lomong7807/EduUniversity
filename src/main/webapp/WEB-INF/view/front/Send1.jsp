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
    <style>
        .table .sms_scode {
            width:100%;
            border-top: none !important;
        }
        .table .sms_scode td {
            padding:0 !important;
            border: 1px solid #ddd !important;
        }
        .table .sms_scode td a {
            display:block;
            padding:4px 0 5px;
        }
        .table .sms_scode td a:hover {
            color:#000;
            background-color:#eee;
        }
    
        .table-fixed {
            table-layout:fixed;
        }
        .fixed-table-container {
        
        }
        .fixed-table-body {
            height:670px;
        overflow-x: auto;
        }
        
        .fixed-table-address-body {
            height:600px;
        overflow-x: auto;
        }
    </style>
    <body class="admin">
        <!-- Admin Wrapper -->
        <div id="ubhome-wrapper">
			<!-- Sidebar -->			
            <div id="ubhome-sidebar-wrapper" >
                <ul class="ubhome-sidebar">
                    <li class="ubhome-sidebar-main">
                        <a href="././dashboard.php" class="logo">
                            <img src="././img/mandarin-white.svg" alt="mandarin" />
                        </a>
                        <i class="menu-icon fa fa-exchange ubhome-toggle" id="ubhome-toggle"></i>
                        <i class="menu-icon fa fa-exchange ubhome-toggle-mobile" id="ubhome-toggle-mobile"></i>
                    </li>

                    <li class="ubhome-sidebar-user">
                        <div class="media">
                            <div class="media-left media-middle">
                                <img class="media-object" src="././data/admin-sample.jpg" alt="..." />
                            </div>
                            <div class="media-body media-middle">
                                <h6>íìí©ëë¤.</h6>
                                <h5>ê´ë¦¬ìë <a href="javascript:void(0);"><i class="ti-power-off"></i></a></h5>
                            </div>
                        </div>
                    </li>

                    <!-- íê²½ì¤ì  -->
                    <li class="ubhome-sidebar-list">
                        <a href="javascript:void(0);" class="ubhome-sidebar-title"><i class="menu-icon fa fa-cogs"></i> íê²½ì¤ì </a>
                        <ul class="ubhome-sidebar-sub">
                            <li><a href="././code_manager_list.php">ì½ëê´ë¦¬</a></li>
                            <li><a href="././base_config_edit.php">ê¸°ì´íê²½ì¤ì </a></li>
                            <li><a href="././policy_edit.php">íìì ì±</a></li>
                            <li><a href="././admin_list.php">ê´ë¦¬ì ê´ë¦¬</a></li>
                            <li><a href="././holiday_list.php">í´ì¼ê´ë¦¬</a></li>
                            <li><a href="././payment_edit.php">ê²°ì ê´ë¦¬</a></li>
                            <li><a href="././category_list.php">ê°ì¢ë¶ë¥ê´ë¦¬</a></li>
                            <li><a href="././level_grade_list.php">ë ë²¨ë¶ë¥ê´ë¦¬</a></li>
                            <li><a href="././popup_list.php">íìê´ë¦¬</a></li>
                            <li><a href="././menu_list.php">ê´ë¦¬ìë©ë´ê´ë¦¬</a></li>
                            <li><a href="javascript:void(0);">ì¬ì´í¸ë©ë´ê´ë¦¬</a></li>
                            <li><a href="javascript:void(0);">ì¬ì´í¸íì´ì§ ê´ë¦¬</a></li>
                            <li><a href="javascript:void(0);">ì¤í¨ê´ë¦¬</a></li>
                            <li><a href="././discount_config_edit.php">í ì¸ì¨ ì¤ì </a></li>
                            <li><a href="././board_list.php">ê²ìí ê´ë¦¬</a></li>
                        </ul>
                    </li>
                    <!-- //íê²½ì¤ì  -->

                    <!-- íìê´ë¦¬ -->
                    <li class="ubhome-sidebar-list">
                        <a href="javascript:void(0);" class="ubhome-sidebar-title"><i class="menu-icon fa fa-user-circle-o"></i> íìê´ë¦¬</a>
                        <ul class="ubhome-sidebar-sub">
                            <li><a href="././member/company_list.php">ê¸°ìì ë³´ê´ë¦¬</a></li>
                            <li><a href="././member/member_csv_upload.php">ê¸°ìíì ì¼ê´ë±ë¡</a></li>
                            <li><a href="././member/member_list.php">íìì¢í©ê´ë¦¬</a></li>
                            <li><a href="././member/point_list.php">í¬ì¸í¸ ê´ë¦¬</a></li>
                            <li><a href="././member/coupon_list.php">ì¿ í°ê´ë¦¬</a></li>
                            <li><a href="././member/coupon_detail_list.php">ì¿ í°ì¬ì©ë´ì­</a></li>
                        </ul>
                    </li>
                    <!-- //íìê´ë¦¬ -->

                    <!-- ê°ì¬ê´ë¦¬ -->
                    <li class="ubhome-sidebar-list">
                        <a href="javascript:void(0);" class="ubhome-sidebar-title"><i class="menu-icon fa fa-graduation-cap"></i> ê°ì¬ê´ë¦¬</a>
                        <ul class="ubhome-sidebar-sub">
                            <li><a href="././teacher/teacher_list.php">ê°ì¬ê´ë¦¬</a></li>
                            <li><a href="././teacher/teacher_time_edit.php">ê°ì¬ìê°ê´ë¦¬</a></li>
                            <li><a href="././teacher/teachergroup_list.php">ê°ì¬ê·¸ë£¹ì¤ì </a></li>
                            <li><a href="././teacher/teachersurvey_list.php">ê°ì¬íê°</a></li>
                        </ul>
                    </li>
                    <!-- //ê°ì¬ê´ë¦¬ -->

                    <!-- ê°ì¢ê´ë¦¬ -->
                    <li class="ubhome-sidebar-list">
                        <a href="javascript:void(0);" class="ubhome-sidebar-title"><i class="menu-icon fa fa-university"></i> ê°ì¢ê´ë¦¬</a>
                        <ul class="ubhome-sidebar-sub">
                            <li><a href="././class/class_list.php">ê°ì¢ê´ë¦¬</a></li>
                            <li><a href="././class/book_list.php">êµì¬ê´ë¦¬</a></li>
                            <li><a href="javascript:void(0);">ì¤êµ­ì´ì ë¬¸ê´ë¦¬</a></li>
                        </ul>
                    </li>
                    <!-- //ê°ì¢ê´ë¦¬ -->

                    <!-- ì£¼ë¬¸ê´ë¦¬ -->
                    <li class="ubhome-sidebar-list">
                        <a href="javascript:void(0);" class="ubhome-sidebar-title"><i class="menu-icon fa fa-laptop"></i> ì£¼ë¬¸ê´ë¦¬</a>
                        <ul class="ubhome-sidebar-sub">
                            <li><a href="././order/class_order_list.php">ì£¼ë¬¸ê´ë¦¬</a></li>
                            <li><a href="javascript:void(0);">ë ë²¨íì¤í¸ê´ë¦¬</a></li>
                            <li><a href="javascript:void(0);">ì¬ì£¼ë¬¸ê´ë¦¬</a></li>
                        </ul>
                    </li>
                    <!-- //ì£¼ë¬¸ê´ë¦¬ -->

                    <!-- ììê´ë¦¬ -->
                    <li class="ubhome-sidebar-list">
                        <a href="javascript:void(0);" class="ubhome-sidebar-title"><i class="menu-icon fa fa-book"></i> ììê´ë¦¬</a>
                        <ul class="ubhome-sidebar-sub">
                            <li><a href="././schedule/full_calendar.php">ìììºë¦°ëê´ë¦¬</a></li>
                            <li><a href="javascript:void(0);">ììê´ë¦¬</a></li>
                            <li><a href="javascript:void(0);">ì¥ê¸°ì°ê¸°ê´ë¦¬</a></li>
                            <li><a href="javascript:void(0);">ê²°ìê´ë¦¬</a></li>
                            <li><a href="javascript:void(0);">ììë³ê²½ë¡ê·¸</a></li>
                            <li><a href="javascript:void(0);">ììêµì </a></li>
                            <li><a href="javascript:void(0);">ìíê°ì¤ì </a></li>
                            <li><a href="javascript:void(0);">ìíê°ê´ë¦¬</a></li>
                            <li><a href="javascript:void(0);">ê¸°ê°ë³ ì¶ì(ê¸°ì)</a></li>
                        </ul>
                    </li>
                    <!-- //ììê´ë¦¬ -->

                    <!-- ê³ ê°ì¼í° -->
                    <li class="ubhome-sidebar-list">
                        <a href="javascript:void(0);" class="ubhome-sidebar-title"><i class="menu-icon fa fa-comments-o"></i> ê³ ê°ì¼í°</a>
                        <ul class="ubhome-sidebar-sub">
                            <li><a href="././board/index.php?board_id=notice&action=list&page=1">ê³µì§ì¬í­</a></li>
                            <li><a href="javascript:void(0);">1:1 ê³ ê°ì¼í°</a></li>
                            <li><a href="javascript:void(0);">ê°ì¬ 1:1 ê²ìí</a></li>
                            <li><a href="././customer/company_proposal_list.php">ê¸°ìì ìì ì²­</a></li>
                            <li><a href="javascript:void(0);">ì§ìê²ìí</a></li>
                            <li><a href="javascript:void(0);">íìµìë£ì¤</a></li>
                            <li><a href="javascript:void(0);">ë§¤ì¼íííí</a></li>
                            <li><a href="javascript:void(0);">FAQ</a></li>
                        </ul>
                    </li>
                    <!-- //ê³ ê°ì¼í° -->

                    <!-- íµê³ê´ë¦¬ -->
                    <li class="ubhome-sidebar-list">
                        <a href="javascript:void(0);" class="ubhome-sidebar-title"><i class="menu-icon fa fa-pie-chart"></i> íµê³ê´ë¦¬</a>
                        <ul class="ubhome-sidebar-sub">
                            <li><a href="javascript:void(0);">ì ìíµê³</a></li>
                            <li><a href="javascript:void(0);">íìê°ìíµê³</a></li>
                            <li><a href="javascript:void(0);">ë ë²¨íì¤í¸íµê³</a></li>
                            <li><a href="javascript:void(0);">ììì ì²­íµê³</a></li>
                            <li><a href="javascript:void(0);">ì¼ë³ë§¤ì¶íµê³</a></li>
                            <li><a href="javascript:void(0);">ìë³ë§¤ì¶íµê³</a></li>
                        </ul>
                    </li>
                    <!-- //íµê³ê´ë¦¬ -->

                    <!-- ì¸ì´ì í -->
                    <li class="ubhome-sidebar-lang">
                        <a href="javascript:void(0);" class="btn btn-block btn-default" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">íêµ­ì´ <span class="num-webfont">(KOR)</span> <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li class="active"><a href="#">íêµ­ì´ <span class="num-webfont">(KOR)</span></a></li>
                            <li><a href="#">ìì´ <span class="num-webfont">(ENG)</span></a></li>
                            <li><a href="#">ì¤êµ­ì´ <span class="num-webfont">(CHN)</span></a></li>
                            <li><a href="#">ì¼ë³¸ì´ <span class="num-webfont">(JPN)</span></a></li>
                        </ul>
                    </li>
                    <!-- //ì¸ì´ì í -->
                </ul>

                <!-- LMS íê²½ì¤ì  -->
                <div class="row ubhome-sidebar-footer">
                    <div class="col-xs-12">
                        <a href="javascript:void(0);">
                            <i class="fa fa-cog"></i> <span>LMS íê²½ì¤ì </span>
                        </a>
                    </div>
                </div>
                <!-- //LMS íê²½ì¤ì  -->
            </div>
	        <div class="mask-win"></div>
            <!-- //Sidebar -->
			<!-- Page Content -->
			<div id="content-wrapper" class="">
				<!-- Quick Bar -->
				<div class="contents-header">
					<button type="button" id="meta-toggle" class="top-quick-left btn hidden-sm hidden-md hidden-lg">
						<i class="fa fa-bars"></i>
					</button>
					<a href="././dashboard.php" class="logo hidden-sm hidden-md hidden-lg">
						<img src="././img/mandarin-white.svg" alt="mandarin" class="mobile-logo" />
					</a>
					<button type="button" id="quick-toggle" class="top-quick-right btn hidden-sm hidden-md hidden-lg">
						<i class="fa fa-sort-amount-desc"></i>
					</button>
					<div class="quick-navi-wrap">
						<div class="quick-navi">
							<div class="row">
								<div class="col-xs-6 col-sm-4 col-lg-2 md-mb10 m-mb10 xs-mb10 add-col">
									<a href="#"><img src="././img/quick-01.svg" class="img" alt="quick-01" />ì¤ëì ììì¤ì¼ì¥´</a>
								</div>
								<div class="col-xs-6 col-sm-4 col-lg-2 md-mb10 m-mb10 xs-mb10 add-col last-col-xs">
									<a href="#"><img src="././img/quick-02.svg" class="img" alt="quick-02" />ìê°ì ì²­íí© ììë±ë¡</a>
								</div>
								<div class="col-xs-6 col-sm-4 col-lg-2 md-mb10 m-mb10 xs-mb10 last-col-sm add-col add-col-xs">
									<a href="#"><img src="././img/quick-03.svg" class="img" alt="quick-03" />ë ë²¨íì¤í¸ ì ì²­/ê²°ê³¼</a>
								</div>
								<div class="col-xs-6 col-sm-4 col-lg-2 xs-mb10 odd-col last-col-xs">
									<a href="#"><img src="././img/quick-04.svg" class="img" alt="quick-04" />íìë³ ììì¤ì¼ì¥´</a>
								</div>
								<div class="col-xs-6 col-sm-4 col-lg-2 odd-col">
									<a href="#"><img src="././img/quick-05.svg" class="img" alt="quick-05" />ê°ì¬ë³ ìì ì¤ì¼ì¥´</a>
								</div>
								<div class="col-xs-6 col-sm-4 col-lg-2 last-col odd-col">
									<a href="#"><img src="././img/quick-06.svg" class="img" alt="quick-06" />ìì/ê°ì¬ë³ ì¶ìíµê³</a>
								</div>
							</div>
						</div>
					</div>
				</div>
                <!-- //Quick Bar -->

				<!-- Main Content -->
				<div class="main-content">
					<!-- ì½íì´ë -->
					<div id="container">
                        <!-- íì´ì§ ëª -->
                        <div class="row form-inline mb10">
                            <div class="col-sm-6">
                                <h3 class="text-info mt5">SMS ë°ì¡ê´ë¦¬</h3>
                            </div>
                            <div class="col-sm-6 text-right">

                            </div>
                        </div>
                        <!-- //íì´ì§ ëª -->
            
                        <div class="row">
                            <div>
                                <div class="customer_container dashboard">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#sms_tab1">SMS ë³´ë´ê¸°</a></li>
                                        <li role="presentation"><a href="smslog_list.html" >ë°ì¡ë´ì­</a></li>
                                    </ul>
                                    <div class="tab-content pt20">
                                        <div role="tabpanel" class="tab-pane active" id="sms_tab1">
                                            <div class="row">
                                                <div class="col-lg-4">
                                                <!-- SMS ëìê²ì -->
                                                    
                                                    <!-- ê²ììµì -->
                                                    <form class="panel panel-default search_wrap mb15" name="searchform" action="sms_edit.html">
                                                        <div class="panel-body p10">
                
                                                            <div class="row mb5">
                
                                                                <div class="col-md-3 col-lg-3">
                                                                    <select id="period_type" name="period_type" class="form-control">
                                                                        <!--<option value=""  selected >ê¸°ê°êµ¬ë¶</option>-->
                                                                        <option value="J" >ê°ìì¼ì</option>
                                                                    </select>
                                                                </div>
                                                                
                                                                <div class="col-md-4 col-lg-4">
                                                                    <div class='input-group date'      id='sday'  >
                                                                        <input type='text' name='sday' class='form-control' value=''  data-inputmask="'mask': '9999-99-99'"     />
                                                                        <span class='input-group-addon'>
                                                                        <span class='glyphicon glyphicon-calendar'></span>
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-1">
                                                                ~
                                                                </div>
                                                                <div class="col-md-4 col-lg-4">
                                                                    <div class='input-group date'      id='eday'  >
                                                                        <input type='text' name='eday' class='form-control' value=''  data-inputmask="'mask': '9999-99-99'"     />
                                                                        <span class='input-group-addon'>
                                                                        <span class='glyphicon glyphicon-calendar'></span>
                                                                        </span>
                                                                    </div>
                                                                </div>
                
                                                            </div>
                
                
                                                            <div class="row">
                                                                <div class="col-md-5 col-lg-12">
                                                                    <div class="row mb5">
                                                                        <div class="col-xs-4">
                                                                            <select id="member_type" name="member_type" class="form-control">
                                                                                <option value=""  selected >ì ì²­êµ¬ë¶</option>
                                                                                <option value="C" >ì»¨íì¸ </option>
                                                                                <option value="O" >ì¤íë¼ì¸êµì¡</option>
                                                                                <option value="M" >ì¸ê°</option>
                
                                                                            </select>
                                                                        </div>
                                                                        <div class="col-xs-5">
                                                                        
                                                                            <input type="text" class="form-control" id="search_keyword" name="search_keyword" value=""  placeholder="í¤ìë" />
                                                                        </div>
                                                                        <div class="col-xs-3">
                                                                                <button type="submit" class="btn btn-block btn-black">ê²ì</button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                        
                                                            </div>
                                                        </div>
                                                    </form>
                                                    <!-- //ê²ììµì -->
                                                    
                                                    <div class="mb5 write_loop">
                                                        <div class="checkbox-inline">
                                                            <label for="sms_c_all">
                                                                <input type="checkbox" name="sms_c_all" id="sms_c_all" value="" onclick="checkAll(this.checked);" />ì ì²´
                                                            </label>
                                                        </div>
                                                        <div class="row text-right mr5">Total : <strong class="num_eng text-primary ">588</strong>
                                                        </div>                                                    
                                                    </div>
                                                    
                                                    <form class="table_write" name="sms_form" action="sms_proc.html"  method="post" enctype="multipart/form-data" >
                                                    <!-- ì ì²´íìëª©ë¡ -->
                                                        <div class="table_section">
                                                            <div class="table_container table_container_h fixed-table-address-body">
                                                                <table class="table table-bordered text-center table-hover table-fixed display"  id="all_table" width="100%" cellspacing="0">
                                                                    <thead>
                                                                        <tr>
                                                                            <th width="10%" scope="col">
                                                                                ì í
                                                                            </th>
                                                                            <th scope="col"><strong>ì±ëª</strong></th>
                                                                            <th scope="21%"><strong>ì´ë©ì¼</strong></th>
                                                                            <th width="31%" scope="col"><strong>í´ëì í</strong></th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <!-- Loop -->
                                                                        <tr >
                                                                            <td>
                                                                                <input type="checkbox" id="hptraver9044gmailcom" name="hp[]" value="010-8576-8166" data-user_name="ë°ì¤ì°" data-member_type=""  />
                                                                                <input type="hidden" name="user_name[]" value="010-8576-8166|ë°ì¤ì°" />
                                                                            </td>
                                                                            <td onclick="javascript:setClick('hptraver9044gmailcom');" style="cursor:pointer;">ë°ì¤ì°</td>
                                                                            <td onclick="javascript:setClick('hptraver9044gmailcom');" style="cursor:pointer;">traver9044@gmail.com</td>
                                                                            <td onclick="javascript:setClick('hptraver9044gmailcom');" style="cursor:pointer;">010-8576-8166</td>
                                                                        </tr>
                                                                        <!-- //Loop -->
                                                                        <!-- Loop -->
                                                                        <tr >
                                                                            <td>
                                                                                <input type="checkbox" id="hpdanika6navercom" name="hp[]" value="010-4487-0750" data-user_name="ë°ì£¼ì" data-member_type=""  />
                                                                                <input type="hidden" name="user_name[]" value="010-4487-0750|ë°ì£¼ì" />
                                                                            </td>
                                                                            <td onclick="javascript:setClick('hpdanika6navercom');" style="cursor:pointer;">ë°ì£¼ì</td>
                                                                            <td onclick="javascript:setClick('hpdanika6navercom');" style="cursor:pointer;">danika6@naver.com</td>
                                                                            <td onclick="javascript:setClick('hpdanika6navercom');" style="cursor:pointer;">010-4487-0750</td>
                                                                        </tr>
                                                                        <!-- //Loop -->
                                                                        <!-- Loop -->
                                                                        <tr >
                                                                            <td>
                                                                                <input type="checkbox" id="hpchildhongnavercom" name="hp[]" value="010-6767-6408" data-user_name="íì§ì" data-member_type=""  />
                                                                                <input type="hidden" name="user_name[]" value="010-6767-6408|íì§ì" />
                                                                            </td>
                                                                            <td onclick="javascript:setClick('hpchildhongnavercom');" style="cursor:pointer;">íì§ì</td>
                                                                            <td onclick="javascript:setClick('hpchildhongnavercom');" style="cursor:pointer;">childhong@naver.com</td>
                                                                            <td onclick="javascript:setClick('hpchildhongnavercom');" style="cursor:pointer;">010-6767-6408</td>
                                                                        </tr>
                                                                        <!-- //Loop -->
                                                                        <!-- Loop -->
                                                                        <tr >
                                                                            <td>
                                                                                <input type="checkbox" id="hpmindpainterm2mglobalcokr" name="hp[]" value="010-6250-1126" data-user_name="ì ì¤í¬" data-member_type=""  />
                                                                                <input type="hidden" name="user_name[]" value="010-6250-1126|ì ì¤í¬" />
                                                                            </td>
                                                                            <td onclick="javascript:setClick('hpmindpainterm2mglobalcokr');" style="cursor:pointer;">ì ì¤í¬</td>
                                                                            <td onclick="javascript:setClick('hpmindpainterm2mglobalcokr');" style="cursor:pointer;">mindpainter@m2mglobal.co.kr</td>
                                                                            <td onclick="javascript:setClick('hpmindpainterm2mglobalcokr');" style="cursor:pointer;">010-6250-1126</td>
                                                                        </tr>
                                                                        <!-- //Loop -->
                                                                        <!-- Loop -->
                                                                        <tr >
                                                                            <td>
                                                                                <input type="checkbox" id="hpduq0216natecom" name="hp[]" value="010-9480-6669" data-user_name="ì´ì ì½" data-member_type=""  />
                                                                                <input type="hidden" name="user_name[]" value="010-9480-6669|ì´ì ì½" />
                                                                            </td>
                                                                            <td onclick="javascript:setClick('hpduq0216natecom');" style="cursor:pointer;">ì´ì ì½</td>
                                                                            <td onclick="javascript:setClick('hpduq0216natecom');" style="cursor:pointer;">duq0216@nate.com</td>
                                                                            <td onclick="javascript:setClick('hpduq0216natecom');" style="cursor:pointer;">010-9480-6669</td>
                                                                        </tr>
                                                                        <!-- //Loop -->
                                                                        <!-- Loop -->
                                                                        <tr >
                                                                            <td>
                                                                                <input type="checkbox" id="hpname1navercom" name="hp[]" value="010-9100-8999" data-user_name="ì¤í¥í" data-member_type=""  />
                                                                                <input type="hidden" name="user_name[]" value="010-9100-8999|ì¤í¥í" />
                                                                            </td>
                                                                            <td onclick="javascript:setClick('hpname1navercom');" style="cursor:pointer;">ì¤í¥í</td>
                                                                            <td onclick="javascript:setClick('hpname1navercom');" style="cursor:pointer;">name1@naver.com</td>
                                                                            <td onclick="javascript:setClick('hpname1navercom');" style="cursor:pointer;">010-9100-8999</td>
                                                                        </tr>
                                                                        <!-- //Loop -->
                                                                        <!-- Loop -->
                                                                        <tr >
                                                                            <td>
                                                                                <input type="checkbox" id="hphypsprep" name="hp[]" value="010-5306-5391" data-user_name="test" data-member_type=""  />
                                                                                <input type="hidden" name="user_name[]" value="010-5306-5391|test" />
                                                                            </td>
                                                                            <td onclick="javascript:setClick('hphypsprep');" style="cursor:pointer;">test</td>
                                                                            <td onclick="javascript:setClick('hphypsprep');" style="cursor:pointer;"></td>
                                                                            <td onclick="javascript:setClick('hphypsprep');" style="cursor:pointer;">010-5306-5391</td>
                                                                        </tr>
                                                                        <!-- //Loop -->
                                                                                                                        <!-- Loop -->
                                                                        <tr >
                                                                            <td>
                                                                                <input type="checkbox" id="hpycw7701navercom" name="hp[]" value="010-5474-2935" data-user_name="ì ì°½ì°" data-member_type=""  />
                                                                                <input type="hidden" name="user_name[]" value="010-5474-2935|ì ì°½ì°" />
                                                                            </td>
                                                                            <td onclick="javascript:setClick('hpycw7701navercom');" style="cursor:pointer;">ì ì°½ì°</td>
                                                                            <td onclick="javascript:setClick('hpycw7701navercom');" style="cursor:pointer;">ycw7702@naver.com</td>
                                                                            <td onclick="javascript:setClick('hpycw7701navercom');" style="cursor:pointer;">010-5474-2935</td>
                                                                        </tr>
                                                                        <!-- //Loop -->
                                                                                                                        <!-- Loop -->
                                                                        <tr >
                                                                            <td>
                                                                                <input type="checkbox" id="hpsetonlyonegmailcom" name="hp[]" value="010-3853-0073" data-user_name="ë°ì¸ì" data-member_type=""  />
                                                                                <input type="hidden" name="user_name[]" value="010-3853-0073|ë°ì¸ì" />
                                                                            </td>
                                                                            <td onclick="javascript:setClick('hpsetonlyonegmailcom');" style="cursor:pointer;">ë°ì¸ì</td>
                                                                            <td onclick="javascript:setClick('hpsetonlyonegmailcom');" style="cursor:pointer;">setonlyone@gmail.com</td>
                                                                            <td onclick="javascript:setClick('hpsetonlyonegmailcom');" style="cursor:pointer;">010-3853-0073</td>
                                                                        </tr>
                                                                        <!-- //Loop -->
                                                                                                                        <!-- Loop -->
                                                                        <tr >
                                                                            <td>
                                                                                <input type="checkbox" id="hpbora114711daumnet" name="hp[]" value="010-2752-1994" data-user_name="ì íë¯¼" data-member_type=""  />
                                                                                <input type="hidden" name="user_name[]" value="010-2752-1994|ì íë¯¼" />
                                                                            </td>
                                                                            <td onclick="javascript:setClick('hpbora114711daumnet');" style="cursor:pointer;">ì íë¯¼</td>
                                                                            <td onclick="javascript:setClick('hpbora114711daumnet');" style="cursor:pointer;">bora114711@daum.net</td>
                                                                            <td onclick="javascript:setClick('hpbora114711daumnet');" style="cursor:pointer;">010-2752-1994</td>
                                                                        </tr>
                                                                        <!-- //Loop -->
                                                                                                                        <!-- Loop -->
                                                                        <tr >
                                                                            <td>
                                                                                <input type="checkbox" id="hpbrandfly100gmailcom" name="hp[]" value="010-8952-9613" data-user_name="ë°±ì§ì¶©" data-member_type=""  />
                                                                                <input type="hidden" name="user_name[]" value="010-8952-9613|ë°±ì§ì¶©" />
                                                                            </td>
                                                                            <td onclick="javascript:setClick('hpbrandfly100gmailcom');" style="cursor:pointer;">ë°±ì§ì¶©</td>
                                                                            <td onclick="javascript:setClick('hpbrandfly100gmailcom');" style="cursor:pointer;">brandfly100@gmail.com</td>
                                                                            <td onclick="javascript:setClick('hpbrandfly100gmailcom');" style="cursor:pointer;">010-8952-9613</td>
                                                                        </tr>
                                                                        <!-- //Loop -->
                                                                                                                        <!-- Loop -->
                                                                        <tr >
                                                                            <td>
                                                                                <input type="checkbox" id="hpkth17dguackr" name="hp[]" value="010-4004-3973" data-user_name="ê¹íí" data-member_type=""  />
                                                                                <input type="hidden" name="user_name[]" value="010-4004-3973|ê¹íí" />
                                                                            </td>
                                                                            <td onclick="javascript:setClick('hpkth17dguackr');" style="cursor:pointer;">ê¹íí</td>
                                                                            <td onclick="javascript:setClick('hpkth17dguackr');" style="cursor:pointer;">kth17@dgu.ac.kr</td>
                                                                            <td onclick="javascript:setClick('hpkth17dguackr');" style="cursor:pointer;">010-4004-3973</td>
                                                                        </tr>
                                                                        <!-- //Loop -->
                                                                                                                        <!-- Loop -->
                                                                        <tr >
                                                                            <td>
                                                                                <input type="checkbox" id="hpcompany3" name="hp[]" value="010-1111-1111" data-user_name="ë°ì°êµ¬" data-member_type=""  />
                                                                                <input type="hidden" name="user_name[]" value="010-1111-1111|ë°ì°êµ¬" />
                                                                            </td>
                                                                            <td onclick="javascript:setClick('hpcompany3');" style="cursor:pointer;">ë°ì°êµ¬</td>
                                                                            <td onclick="javascript:setClick('hpcompany3');" style="cursor:pointer;">test3@naver.com</td>
                                                                            <td onclick="javascript:setClick('hpcompany3');" style="cursor:pointer;">010-1111-1111</td>
                                                                        </tr>
                                                                        <!-- //Loop -->
                                                                                                                        <!-- Loop -->
                                                                        <tr >
                                                                            <td>
                                                                                <input type="checkbox" id="hpcompany2" name="hp[]" value="010-1111-1111" data-user_name="ì´ê°ë°" data-member_type=""  />
                                                                                <input type="hidden" name="user_name[]" value="010-1111-1111|ì´ê°ë°" />
                                                                            </td>
                                                                            <td onclick="javascript:setClick('hpcompany2');" style="cursor:pointer;">ì´ê°ë°</td>
                                                                            <td onclick="javascript:setClick('hpcompany2');" style="cursor:pointer;">test2@naver.com</td>
                                                                            <td onclick="javascript:setClick('hpcompany2');" style="cursor:pointer;">010-1111-1111</td>
                                                                        </tr>
                                                                        <!-- //Loop -->
                                                                                                                        <!-- Loop -->
                                                                        <tr >
                                                                            <td>
                                                                                <input type="checkbox" id="hpcompany1" name="hp[]" value="010-1111-1111" data-user_name="ê¹ìì°" data-member_type=""  />
                                                                                <input type="hidden" name="user_name[]" value="010-1111-1111|ê¹ìì°" />
                                                                            </td>
                                                                            <td onclick="javascript:setClick('hpcompany1');" style="cursor:pointer;">ê¹ìì°</td>
                                                                            <td onclick="javascript:setClick('hpcompany1');" style="cursor:pointer;">test1@naver.com</td>
                                                                            <td onclick="javascript:setClick('hpcompany1');" style="cursor:pointer;">010-1111-1111</td>
                                                                        </tr>
                                                                        <!-- //Loop -->
                                                                                                                        <!-- Loop -->
                                                                        <tr >
                                                                            <td>
                                                                                <input type="checkbox" id="hptest3" name="hp[]" value="01033333333" data-user_name="ì´íì§" data-member_type=""  />
                                                                                <input type="hidden" name="user_name[]" value="01033333333|ì´íì§" />
                                                                            </td>
                                                                            <td onclick="javascript:setClick('hptest3');" style="cursor:pointer;">ì´íì§</td>
                                                                            <td onclick="javascript:setClick('hptest3');" style="cursor:pointer;">test3@naver.com</td>
                                                                            <td onclick="javascript:setClick('hptest3');" style="cursor:pointer;">01033333333</td>
                                                                        </tr>
                                                                        <!-- //Loop -->
                                                                                                                        <!-- Loop -->
                                                                        <tr >
                                                                            <td>
                                                                                <input type="checkbox" id="hptest2" name="hp[]" value="01022222222" data-user_name="ì´ë¯¼ì" data-member_type=""  />
                                                                                <input type="hidden" name="user_name[]" value="01022222222|ì´ë¯¼ì" />
                                                                            </td>
                                                                            <td onclick="javascript:setClick('hptest2');" style="cursor:pointer;">ì´ë¯¼ì</td>
                                                                            <td onclick="javascript:setClick('hptest2');" style="cursor:pointer;">test2@naver.com</td>
                                                                            <td onclick="javascript:setClick('hptest2');" style="cursor:pointer;">01022222222</td>
                                                                        </tr>
                                                                        <!-- //Loop -->
                                                                                                                        <!-- Loop -->
                                                                        <tr >
                                                                            <td>
                                                                                <input type="checkbox" id="hptest1" name="hp[]" value="010-1111-1111" data-user_name="ê¹ì°ì§" data-member_type=""  />
                                                                                <input type="hidden" name="user_name[]" value="010-1111-1111|ê¹ì°ì§" />
                                                                            </td>
                                                                            <td onclick="javascript:setClick('hptest1');" style="cursor:pointer;">ê¹ì°ì§</td>
                                                                            <td onclick="javascript:setClick('hptest1');" style="cursor:pointer;">test1@naver.com</td>
                                                                            <td onclick="javascript:setClick('hptest1');" style="cursor:pointer;">010-1111-1111</td>
                                                                        </tr>
                                                                        <!-- //Loop -->
                                                                                                                        <!-- Loop -->
                                                                        <tr >
                                                                            <td>
                                                                                <input type="checkbox" id="hpê¹ì°ì§" name="hp[]" value="010-1111-1111" data-user_name="admin" data-member_type=""  />
                                                                                <input type="hidden" name="user_name[]" value="010-1111-1111|admin" />
                                                                            </td>
                                                                            <td onclick="javascript:setClick('hpê¹ì°ì§');" style="cursor:pointer;">admin</td>
                                                                            <td onclick="javascript:setClick('hpê¹ì°ì§');" style="cursor:pointer;">test1@naver.com</td>
                                                                            <td onclick="javascript:setClick('hpê¹ì°ì§');" style="cursor:pointer;">010-1111-1111</td>
                                                                        </tr>
                                                                        <!-- //Loop -->
                                                                                                                        <!-- Loop -->
                                                                        <tr >
                                                                            <td>
                                                                                <input type="checkbox" id="hpusers1navercom" name="hp[]" value="010-1234-5678" data-user_name="íê¸¸ë" data-member_type=""  />
                                                                                <input type="hidden" name="user_name[]" value="010-1234-5678|íê¸¸ë" />
                                                                            </td>
                                                                            <td onclick="javascript:setClick('hpusers1navercom');" style="cursor:pointer;">íê¸¸ë</td>
                                                                            <td onclick="javascript:setClick('hpusers1navercom');" style="cursor:pointer;">test1@naver.com</td>
                                                                            <td onclick="javascript:setClick('hpusers1navercom');" style="cursor:pointer;">010-1234-5678</td>
                                                                        </tr>
                                                                        <!-- //Loop -->
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                        <!-- //ì ì²´íìëª©ë¡ -->
                                                        <!-- //SMS ëìê²ì -->
                                                        
									                </form>
                                                </div>
                                                <div class="col-lg-3">
                                                    <!-- SMS ë´ì© -->
                                                    <input type="hidden" name="mode" value="send" />
                                                    <input type="hidden" name="sms_template_seq" value="" />
                                                    
                                                    <table class="table table-bordered text-center table-fixed mb10">
                                                        <colgroup>
                                                            <col style="width:35%;">
                                                            <col>
                                                        </colgroup>
                                                        <tbody>
                                                            <tr>
                                                                <td><label for="" class="control-label control-label-ct">ì ëª©</label></td>
                                                                <td>
                                                                <input type="text" class="form-control " id="title" name="title" value="">												
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2">
                                                                    <textarea class="form-control form-control-sms" rows="6" maxlength="90" id="memo" name="memo" required>[:NAME:]</textarea>
                                                                    <div class="byte mt5 mb5 text-left text-info"><span id="counter"></span></div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="active"><label for="send_number" class="control-label control-label-ct">ë°ì  ì´ë©ì¼</label></td>
                                                                <td><input type="text" class="form-control" id="send_number" name="send_number" value="010-5474-2935" required /></td>
                                                            </tr>


                                                            <tr>
                                                                <td class="active"><label for="sms_w_r_num" class="control-label control-label-ct">ë°ì¼ì¤ ë¶</label></td>
                                                                <td><input type="text" class="form-control" id="receive" name="receive" value=""  /></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>

                                                    <div class="row mt15 mb15">
                                                        <div class="col-xs-6">
                                                            <a href="javascript:send();" class="btn btn-lg btn-block btn-warning" role="button">ë©ì¼ ë³´ë´ê¸°</a>
                                                        </div>
                                                        <div class="col-xs-6">
                                                            <a href="javascript:save();" class="btn btn-lg btn-block btn-black" role="button">ííë¦¿ ì ì¥</a>
                                                        </div>
                                                    </div>
                                                    <!-- SMS ë´ì© -->
                                                </div>
									            <div class="col-lg-5">
										            <!-- SMS ííë¦¿ -->
													<div class="table_section">
                                                        <h5 class="text-info mb10"><strong>SMS ííë¦¿</strong></h5>
                                                        <p>ìì£¼ ì´ì©íë ë©ìì§ë¥¼ ì ì¥í  ì ììµëë¤. ìì  ë° ì­ì ê° ê°ë¥í©ëë¤.</p>

                                                        <div class="table_container table_container_h mt25">

                                                            <div class="fixed-table-container">
                                                                <div class="fixed-table-body">

                                                                    <table id="sms_list" class="table text-center table-hover table-fixed  table-not-bordered ">
                                                                        <colgroup>
                                                                            <col style="width:11%;">
                                                                            <col>
                                                                            <col style="width:24%;">
                                                                        </colgroup>
                                                                        <thead>
                                                                            <tr>
                                                                                <th scope="col"><strong>ì í</strong></th>
                                                                                <th scope="col"><strong>ì ëª©</strong></th>
                                                                                <th scope="col"><strong>ë©ìì§</strong></th>
                                                                                <th scope="col"><strong>ê´ë¦¬</strong></th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <!-- Loop -->
                                                                            <tr>
                                                                                <td>1</td>
                                                                                <td><a href="javascript:setMemo('ããããã»ã·ããã·ããã»ã¹ãã±ããã·ãããã»ã¹ãã±ãã´ãã±ããããã¿ãã´ãã»ãã·ã»ã´ãã¾ããããããã','ãããã');">ãããã</a></td>
                                                                                <td class="text-center text-memo" style="white-space: nowrap;overflow: hidden;text-overflow: ellipsis"><a href="javascript:setMemo('ããããã»ã·ããã·ããã»ã¹ãã±ããã·ãããã»ã¹ãã±ãã´ãã±ããããã¿ãã´ãã»ãã·ã»ã´ãã¾ããããããã','ãããã');">ããããã»ã·ããã·ããã»ã¹ãã±ããã·ãããã»ã¹ãã±ãã´ãã±ããããã¿ãã´ãã»ãã·ã»ã´ãã¾ããããããã</a></td>
                                                                                <td class="pt0 pb0">
                                                                                    <button type="button" class="btn btn-xs btn-default btn-modify" onclick="javascript:editMemo('20','ããããã»ã·ããã·ããã»ã¹ãã±ããã·ãããã»ã¹ãã±ãã´ãã±ããããã¿ãã´ãã»ãã·ã»ã´ãã¾ããããããã','ãããã');">ìì </button>
                                                                                    <button type="button" class="btn btn-xs btn-danger" onclick="javascript:deleteMemo('20');">ì­ì </button>
                                                                                </td>
                                                                            </tr>
                                                                            <!-- //Loop -->
                                                                                                                            <!-- Loop -->
                                                                            <tr>
                                                                                <td>2</td>
                                                                                <td><a href="javascript:setMemo('ãããã','í¬ë¡');">í¬ë¡</a></td>
                                                                                <td class="text-center text-memo" style="white-space: nowrap;overflow: hidden;text-overflow: ellipsis"><a href="javascript:setMemo('ãããã','í¬ë¡');">ãããã</a></td>
                                                                                <td class="pt0 pb0">
                                                                                    <button type="button" class="btn btn-xs btn-default btn-modify" onclick="javascript:editMemo('19','ãããã','í¬ë¡');">ìì </button>
                                                                                    <button type="button" class="btn btn-xs btn-danger" onclick="javascript:deleteMemo('19');">ì­ì </button>
                                                                                </td>
                                                                            </tr>
                                                                            <!-- //Loop -->
                                                                                                                            <!-- Loop -->
                                                                            <tr>
                                                                                <td>3</td>
                                                                                <td><a href="javascript:setMemo('ìë½ë½','ãã');">ãã</a></td>
                                                                                <td class="text-center text-memo" style="white-space: nowrap;overflow: hidden;text-overflow: ellipsis"><a href="javascript:setMemo('ìë½ë½','ãã');">ìë½ë½</a></td>
                                                                                <td class="pt0 pb0">
                                                                                    <button type="button" class="btn btn-xs btn-default btn-modify" onclick="javascript:editMemo('17','ìë½ë½','ãã');">ìì </button>
                                                                                    <button type="button" class="btn btn-xs btn-danger" onclick="javascript:deleteMemo('17');">ì­ì </button>
                                                                                </td>
                                                                            </tr>
                                                                            <!-- //Loop -->
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
							                        </div>										
									            </div>
                                                <!-- //SMS ííë¦¿ -->
  
								            </div>
							            </div>
							            <div role="tabpanel" class="tab-pane" id="sms_tab2">
								            <!-- SMS ë°ì¡ë´ì­ -->
											<form class="panel panel-default search_wrap mb15" name="searchform" action="#">
                                                <div class="panel-body p10">
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <div class="row">
                                                                <div class="col-xs-2">
                                                                    <input type="tel" class="form-control datetimepicker" id="search_date_start" name="" value="" required />
                                                                </div>
                                                                <div class="col-xs-2">
                                                                    <input type="tel" class="form-control datetimepicker" id="search_date_end" name="" value="" required />
                                                                </div>
                                                                <div class="col-xs-2">
                                                                    <select class="form-control" id="search_option">
                                                                        <option>ì í</option>
                                                                        <option>ìì ì¸</option>
                                                                        <option>ìì ë²í¸</option>
                                                                        <option>íìëª</option>
                                                                    </select>
                                                                </div>
                                                                <div class="col-xs-3">
                                                                    <input type="text" class="form-control" id="search_keyword" name="" value="" required placeholder="í¤ìë" />
                                                                </div>
                                                                <div class="col-xs-1">
                                                                    <button type="submit" class="btn btn-block btn-black">ê²ì</button>
                                                                </div>
                                                                <div class="col-xs-2 text-right"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
							                </form>

                                            <table class="table text-center table-bordered table-striped table-fixed">
                                                <thead>
                                                    <tr>
                                                        <th width="10%" scope="col"><strong>ë°ì ì¸</strong></th>
                                                        <th width="8%" scope="col"><strong>ìì ì¸</strong></th>
                                                        <th width="11%" scope="col"><strong>ìì ë²í¸</strong></th>
                                                        <th width="10%" scope="col"><strong>ë°ì ë²í¸</strong></th>
                                                        <th width="8%" scope="col"><strong>íìëª</strong></th>
                                                        <th width="7%" scope="col"><strong>êµ¬ë¶</strong></th>
                                                        <th scope="col"><strong>ë³´ë¸ë´ì©</strong></th>
                                                        <th width="8%" scope="col"><strong>ê²°ê³¼</strong></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <!-- Loop -->
                                                    <tr>
                                                        <td>2018-04-08</td>
                                                        <td>ê¹ì¸ì£¼</td>
                                                        <td>01022416857</td>
                                                        <td>0214753657</td>
                                                        <td>ê°ì±í</td>
                                                        <td>LMS</td>
                                                        <td class="text-left text-memo">ì´ë²ì£¼ê¹ì§ ë¯¸ë©ë ë¶ë¶ì ìë©íìê¸° ë°ëëë¤.</td>
                                                        <td>ì ì¡ì±ê³µ</td>
                                                    </tr>
                                                    <!-- //Loop -->

                                                    <!-- Loop -->
                                                    <tr>
                                                        <td>2018-04-08</td>
                                                        <td>ê¹ì¸ì£¼</td>
                                                        <td>01022416857</td>
                                                        <td>0214753657</td>
                                                        <td>ê°ì±í</td>
                                                        <td>SMS</td>
                                                        <td class="text-left text-memo">ì´ë²ì£¼ê¹ì§ ë¯¸ë©ë ë¶ë¶ì ìë©íìê¸° ë°ëëë¤.</td>
                                                        <td>ì ì¡ì±ê³µ</td>
                                                    </tr>
                                                    <!-- //Loop -->
                                                </tbody>
                                            </table>

											<nav class="text-center">
                                                <ul class="pagination pagination-sm">
                                                    <li>
                                                        <a href="#" aria-label="Previous" title="ì²ì">
                                                            <span aria-hidden="true">&lt;&lt;</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" aria-label="Previous" title="ì´ì ">
                                                            <span aria-hidden="true">&lt;</span>
                                                        </a>
                                                    </li>
                                                    <li class="active"><a href="#">1</a></li>
                                                    <li><a href="#">2</a></li>
                                                    <li><a href="#">3</a></li>
                                                    <li><a href="#">4</a></li>
                                                    <li><a href="#">5</a></li>
                                                    <li>
                                                        <a href="#" aria-label="Next" title="ë¤ì">
                                                            <span aria-hidden="true">&gt;</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" aria-label="Next" title="ë§ì§ë§">
                                                            <span aria-hidden="true">&gt;&gt;</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </nav>
                                            <!-- //SMS ë°ì¡ë´ì­ -->
                                        </div>
                                    </div>
                                </div>
                                <!-- //ì½íì¸  customer_container-->
                            </div>

                            <div class="row pull-right">
                            </div>
                        </div>
                        <!-- //row-->
                        <script>	


                            $(function () {
                                $('#reserve_time').datetimepicker({
                                    icons: {
                                        time: "fa fa-clock-o",
                                        date: "fa fa-calendar",
                                        up: "fa fa-arrow-up",
                                        down: "fa fa-arrow-down"
                                    }
                                });

                                $('#sday').datetimepicker({
                                    format: 'YYYY-MM-DD'
                                });

                                $('#eday').datetimepicker({
                                    format: 'YYYY-MM-DD'
                                });




                            });

                        function setClick(id) {
                            var chk = $('#'+id).is(":checked"); 
                            /*
                            if(chk==false ) $('#'+id).prop("checked", true);
                            else $('#'+id).prop("checked", false);	
                            console.log(chk); 
                            */
                            console.log(chk); 
                            $('#'+id).trigger('click');
                        }

                        $('input:checkbox[name="hp[]"]').change(function() {
                            checkedUser();
                        });

                        function checkedUser() {
                            var str = "";
                            $('input:checkbox[name="hp[]"]').each(function() {

                                    if(this.checked == true){ //ê° ë¹êµ
                                        str = str + $(this).data("user_name") +',';
                                    }		
                                
                            });
                            $('#receive').val(str);
                            
                        }

                        function checkMemberType(checked,value) {

                            $('input:checkbox[name="hp[]"]').each(function() {
                                if(checked==true) {
                                    if($(this).data("member_type") == value){ //ê° ë¹êµ
                                            this.checked = true; //checked ì²ë¦¬
                                    }		
                                } else {
                                    this.checked = false; 
                                }
                            });
                            checkedUser();	
                        }





                        function checkAll(checked) {
                            $('input:checkbox[name="hp[]"]').each(function() {
                                if(checked==true) {
                                    if(this.value != ""){ //ê° ë¹êµ
                                            this.checked = true; //checked ì²ë¦¬
                                    }		
                                } else {
                                    this.checked = false; 
                                }
                            });
                            checkedUser();	
                        }

                        function setEmoticon(emoticon) {

                            var str = $('#memo').val() ; 
                            insertAtCursor('memo',emoticon); 
                                
                        //	$('#memo').val( str + emoticon) ; 
                        }


                        function insertAtCursor(areaId,text) {
                            var txtarea = document.getElementById(areaId);
                            var scrollPos = txtarea.scrollTop;
                            var strPos = 0;
                            var br = ((txtarea.selectionStart || txtarea.selectionStart =='0') ?
                                "ff" : (document.selection ? "ie" : false ) );
                            if (br == "ie") {
                                txtarea.focus();
                                var range = document.selection.createRange();
                                range.moveStart ('character', -txtarea.value.length);
                                strPos = range.text.length;
                            }
                            else if (br == "ff") strPos = txtarea.selectionStart;
                        
                            var front = (txtarea.value).substring(0,strPos);
                            var back = (txtarea.value).substring(strPos,txtarea.value.length);
                            txtarea.value=front+text+back;
                            strPos = strPos + text.length;
                            if (br == "ie") {
                                txtarea.focus();
                                var range = document.selection.createRange();
                                range.moveStart ('character', -txtarea.value.length);
                                range.moveStart ('character', strPos);
                                range.moveEnd ('character', 0);
                                range.select();
                            }
                            else if (br == "ff") {
                                txtarea.selectionStart = strPos;
                                txtarea.selectionEnd = strPos;
                                txtarea.focus();
                            }
                            txtarea.scrollTop = scrollPos;
                        }





                        function setMemo(memo) {
                            $('#memo').val( memo) ; 
                        }

                        function editMemo(seq, memo) {

                            $('#memo').val( memo) ; 
                            var f = document.sms_form;
                            f.sms_template_seq.value = seq; 
                            f.mode.value = "update"; 
                        }

                        function deleteMemo(seq) {
                            if(confirm('ì ë§ ì­ì íìê² ìµëê¹?')==false) return; 
                            var f = document.sms_form;
                            f.sms_template_seq.value = seq; 	
                            f.mode.value = "delete"; 
                            f.submit();

                        }

                        // ê²ìíê¸° 
                        function searchKey() {
                            var f2 = document.f2;
                            f2.submit();	 
                        }


                        function send() {
                            var f = document.sms_form;
                            if(f.memo.value=="") {
                                alert('ë³´ë´ì¤ ë´ì©ì´ ììµëë¤.');
                                f.memo.focus(); 
                                return false; 
                            }

                                f.mode.value="send";


                            f.submit(); 
                        }


                        function save() {
                            var f = document.sms_form;
                            if(f.memo.value=="") {
                                alert('ì ì¥íì¤ ë´ì©ì´ ììµëë¤.');
                                f.memo.focus(); 
                                return false; 
                            }
                            if(f.sms_template_seq.value=="")
                                f.mode.value="save"; 
                            else  
                                f.mode.value="update";


                            f.submit(); 
                        }
                        </script>
					</div>
					<!-- //ì½íì´ë -->
				</div>
				<!-- //Main Content -->
			</div>
			<!-- //Page Content -->
		</div>
		<!-- //Admin Wrapper -->


		
		<script src="../../js/animate-plus.min.js"></script>
		<script src="../../js/jquery-ui.min.js" title=""></script>
		<script src="../../js/jquery-migrate-git.min.js" title=""></script>
		<script src="../../js/jquery.easing.js" title=""></script>
		<script src="../../js/bootstrap.min.js" title=""></script>
		<script src="../../js/bootstrap-switch.min.js" title=""></script>
		<script src="../../js/bootstrap-datetimepicker.min.js" title=""></script>
		<script src="../js/customer.script.js" title="ì¬ì©ì ì ì¸"></script>
		

		
	</body>
</html>
