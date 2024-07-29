/* Author:HtmlCoder
 * Author URI:http://hom2box.com
 * Author e-mail:hbox78@gmail.com
 * Version: 1.0.2
 * Created:October 2018
 * License URI:http://hom2box.com/
 */

(function($){
    $(document).ready(function(){

        // Page Loader
                $("body").append('<div class="page-loader"><div class="page-loader-img">Loading...</div></div>');

                if (!$('html').is('.ie6, .ie7, .ie8')) {
                    /* Loader */
                    $(".page-loader-img").delay(50).fadeOut("slow");
                    $('.page-loader').delay((3*100)+100).fadeOut(2*100, function () {
                        $(this).remove();
                    });
                }
                else {
                    $(".page-loader").css('display','none');
                }


        // Scroll ToTop
                  var $window = $(window);
                  var $root = $("html, body");

                  $("body").append('<div class="scrollToTop"><i class="ti-arrow-circle-up"></i></div>');
                  
                  var amountScrolled = 100;
                  var backBtn = $("div.scrollToTop");

                  $window.on("scroll", function() {
                    if ($window.scrollTop() > amountScrolled) {
                      backBtn.addClass("scroll-visible");
                      $root.addClass("scroll-css");
                    } else {
                      backBtn.removeClass("scroll-visible");
                      $root.removeClass("scroll-css");
                    }
                  });
                  backBtn.on("click", function() {
                    $root.animate({
                      scrollTop: 0
                    }, 700);
                    return false;
                });


        // SlideBar
                $(".sidebar_wrap .page-label span.clickable").on("click", function (e) {
                    if ($(this).hasClass("sidebar-collapsed")) {
                        // expand the sidebar
                        $(this).parents(".sidebar_wrap").find("#sidebar_navi").slideUp();
                        $(this).removeClass("sidebar-collapsed");
                        $(this).find("i").removeClass("fa-chevron-down").addClass("fa-chevron-up");
                    }
                    else {
                        // collapse the sidebar
                        $(this).parents(".sidebar_wrap").find("#sidebar_navi").slideDown();
                        $(this).addClass("sidebar-collapsed");
                        $(this).find("i").removeClass("fa-chevron-up").addClass("fa-chevron-down");
                    }
                });


        // Panel Collapsed
                $('.panel-heading span.clickable').on("click", function (e) {
                    if ($(this).hasClass('panel-collapsed')) {
                        // expand the panel
                        $(this).parents('.panel').find('.panel-body').slideDown();
                        $(this).removeClass('panel-collapsed');
                        $(this).find('i').removeClass('ti-arrow-circle-down').addClass('ti-arrow-circle-up');
                    }
                    else {
                        // collapse the panel
                        $(this).parents('.panel').find('.panel-body').slideUp();
                        $(this).addClass('panel-collapsed');
                        $(this).find('i').removeClass('ti-arrow-circle-up').addClass('ti-arrow-circle-down');
                    }
                });


        // 어드민 메뉴 토글
                $( ".quick-toggle" ).on( "click", function(e) {
                    if ($(".quick-wrap").hasClass('quick-show')) {
                        $(".quick-navi-wrap").slideDown();
                        $(".quick-wrap").removeClass('quick-show');
                        $(".quick-toggle").find('i').removeClass('fa-sort-amount-asc').addClass('fa-sort-amount-desc');
                    }
                    else {
                        $(".quick-navi-wrap").slideUp();
                        $(".quick-wrap").addClass('quick-show');
                        $(".quick-toggle").find('i').removeClass('fa-sort-amount-desc').addClass('fa-sort-amount-asc');
                    }
                });
                $( ".side-bar-navi" ).on( "click", function(e) {
                    if ($(".my-wrap").hasClass('side-bar-show')) {
                        $(".my-wrap").removeClass('side-bar-show');
                        $(this).find('i').removeClass('ti-angle-left').addClass('ti-angle-right');
                    }
                    else {
                        $(".my-wrap").addClass('side-bar-show');
                        $(this).find('i').removeClass('ti-angle-right').addClass('ti-angle-left');
                    }
                });

                


        // Check Toggle
                $( ".btn-check" ).on( "click", function() {
                    $( this ).toggleClass( "active" );
                });


        // 스위치
                $(".switch-hb").bootstrapSwitch();


        // 팝 툴팁
                $('[data-toggle="popover"]').popover({html:true});
                $('[data-toggle="tooltip"]').tooltip();


        // 날짜 (년)
                $('.datetimey').datetimepicker({
                    viewMode: 'years',
                    format: 'YYYY'
                });

        // 날짜 (년,월,일)
                $('.datetimepicker').datetimepicker({
                    format: 'YYYY-MM-DD',
                    locale:'ko'
                });

        // 날짜 (시간)
                $('.datetime').datetimepicker({
                    format: 'LT'
                });

        // view scroll
              $(document).on("scroll", onScroll);
                $('.menu-link a[href^="#"]').on('click', function (e) {
                    e.preventDefault();
                    $(document).off("scroll");
                    
                    $('.menu-link a').each(function () {
                        $(this).removeClass('active');
                    })
                    $(this).addClass('active');
                  
                    var target = this.hash,
                        menu = target;
                    $target = $(target);
                   $('html, body').stop().animate({
                        'scrollTop': $target.offset().top+2
                    }, 600, 'swing', function () {
                        window.location.hash = target;
                        $(document).on("scroll", onScroll);
                    });
                });

		// print
				$(".btn_print").on("click", function (e) {
					window.print();
				});

		// window open
                $('.wopen').click(function() {
                    var newwindow = window.open($(this).prop('href'), '', 'width=600,height=575');
                    if (window.focus) {
                        newwindow.focus();
                    }
                    return false;
                });
                $('.payopen').click(function() {
                    var newwindow = window.open($(this).prop('href'), '', 'width=396,height=398');
                    if (window.focus) {
                        newwindow.focus();
                    }
                    return false;
                });


    }); // End document ready

})(this.jQuery);


function onScroll(event){
    var scrollPos = $(document).scrollTop();  
}




// 우편번호 찾기 화면을 넣을 element
var element_layer = document.getElementById('postcode');

function daumPostcode() {
    var themeObj = {
        bgColor: "#ffffff", //바탕 배경색
        searchBgColor: "#ffffff", //검색창 배경색
        contentBgColor: "#ffffff", //본문 배경색
        pageBgColor: "#ffffff", //페이지 배경색
        queryTextColor: "#1d62ab", //검색창 글자색
        postcodeTextColor: "#ff0071", //우편번호 글자색
        emphTextColor: "#0d4190", //강조 글자색
        outlineColor: "#eeeeee" //테두리
    };

    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = ''; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                fullAddr = data.roadAddress;

            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                fullAddr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
            if(data.userSelectedType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('zip_code').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('addr1').value = fullAddr;

            // 커서를 상세주소 필드로 이동한다.
            document.getElementById('addr2').focus();
            $('#pop-postcode').modal('hide');
        },
        width : '100%',
        maxSuggestItems : 5
    }).embed(element_layer);
}




function toggle(lname) {
    if( document.getElementById("hidethis"+lname+"").style.display=='none' ){
        document.getElementById("hidethis"+lname+"").style.display = 'table-row';
    }else{
        document.getElementById("hidethis"+lname+"").style.display = 'none';
    }
}




var element_layer2 = document.getElementById('postcode2');

function daumPostcode2() {
    var themeObj = {
        bgColor: "#ffffff", //바탕 배경색
        searchBgColor: "#ffffff", //검색창 배경색
        contentBgColor: "#ffffff", //본문 배경색
        pageBgColor: "#ffffff", //페이지 배경색
        queryTextColor: "#1d62ab", //검색창 글자색
        postcodeTextColor: "#ff0071", //우편번호 글자색
        emphTextColor: "#0d4190", //강조 글자색
        outlineColor: "#eeeeee" //테두리
    };

    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = ''; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                fullAddr = data.roadAddress;

            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                fullAddr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
            if(data.userSelectedType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('zip_code2').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('addr1').value = fullAddr;

            // 커서를 상세주소 필드로 이동한다.
            document.getElementById('addr2').focus();
            $('#pop-postcode2').modal('hide');
        },
        width : '100%',
        maxSuggestItems : 5
    }).embed(element_layer2);
}