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

        // Footer
                $(".main-content").append('<footer class="footer_wrap num-webfont"><address>© Mandarin. All Rights Reserved.</address></footer>');


        // Scroll ToTop
                  var $window = $(window);
                  var $root = $("html, body");

                  $("body").append('<div class="scrollToTop"><i class="ti-arrow-circle-up"></i></div>');
                  
                  var amountScrolled = 305;
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
                $( '.ubhome-sidebar-list' ).children('a').on('click', function(event){
                    event.preventDefault();
                    $(this).toggleClass('active').next('.ubhome-sidebar-sub').slideToggle(100).end().parent('.ubhome-sidebar-list').siblings('.ubhome-sidebar-list').children('a').removeClass('active').next('.ubhome-sidebar-sub').slideUp(100);
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
                $( "#ubhome-toggle" ).on( "click", function() {
                    $( "#ubhome-wrapper" ).toggleClass( "ubhome-wrapper-close" );
                    $( "body" ).toggleClass( "ubhome-wrapper-sm" );
                });
                $( "#ubhome-toggle-mobile" ).on( "click", function() {
                    $( "#ubhome-wrapper" ).removeClass( "ubhome-wrapper-xs" );
                });
                $( "#meta-toggle" ).on( "click", function() {
                    $( "#ubhome-wrapper" ).toggleClass( "ubhome-wrapper-xs" );
                });
                $( "#quick-toggle" ).on( "click", function(e) {
                    if ($(".contents-header").hasClass('quick-show')) {
                        $(".quick-navi-wrap").slideDown();
                        $(".contents-header").removeClass('quick-show');
                        $("#quick-toggle").find('i').removeClass('fa-sort-amount-asc').addClass('fa-sort-amount-desc');
                    }
                    else {
                        $(".quick-navi-wrap").slideUp();
                        $(".contents-header").addClass('quick-show');
                        $("#quick-toggle").find('i').removeClass('fa-sort-amount-desc').addClass('fa-sort-amount-asc');
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


    }); // End document ready

})(this.jQuery);