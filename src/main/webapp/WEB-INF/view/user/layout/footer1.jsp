<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- //콘테이너 -->
<footer class="footer_wrap animated" data-animate="fadeIn"
	data-delay=".1">
	<!-- Footer_link -->
	<div class="footer_link">
		<div class="container xs-text-center ptext-right">
			<div class="footer_navi">
				<a href="javascript:void(0);" data-toggle="modal"
					data-target="#privacyModal" role="button"><span>개인정보취급방침</span></a>
				<a href="javascript:void(0);" data-toggle="modal"
					data-target="#termsModal" role="button">이용약관</a>
			</div>
		</div>
	</div>
	<!-- //Footer_link -->

	<!-- Footer_copy -->
	<div class="footer_copy">
		<div class="container text-center">
			<em>주식회사 jsp코리아</em> <em>대표이사 홍길동</em><br
				class="hidden-sm hidden-md hidden-lg" /> <em>서울특별시 종로구 종로5길 7,
				16층(청담동, Tower 8)</em><br /> <em>사업자등록번호 123-45-67890</em><br
				class="hidden-sm hidden-md hidden-lg" /> <em>통신판매신고
				제2018-서울종로-1234호</em> <em>개인정보관리 책임자 : 배철수</em><br /> <span
				class="num-webfont"><em>T. 02-11234-5678</em><em>F.
					02-123-5678</em></span><br class="hidden-sm hidden-md hidden-lg" /> <a
				href="mailto:jsp@jsp.com" class="footer_email num-webfont">e-mail.
				jsp@jsp.com</a>
			<address class="num-webfont">© jsp. ALL RIGHTS
				RESERVED.</address>
		</div>
	</div>
	<!-- //Footer_copy -->
</footer>

<!-- 개인정보취급방침 -->
<div class="modal fade" id="privacyModal" tabindex="-1" role="dialog"
	aria-labelledby="privacyModalLabel">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close" title="창닫기">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="privacyModalLabel">
					<strong>개인정보취급방침</strong>
				</h4>
			</div>
			<div class="modal-body">
				<div class="panel panel-primary">
					<div class="panel-body text-justify">
						* 본 사이트는 회원의 개인정보를 중요시하며,'정보통신망 이용촉진 및 정보보호'에 관한 법률을 준수하고 있습니다.<br />
						* 개인정보보호방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보를 위해
						어떠한 조치가 취해지고 있는지 알려드립니다.
					</div>
				</div>
				<div class="terms_overflow text-justify">
					<div class="mb20">
						<h4 class="text-info">1.수집하는 개인정보 항목</h4>
						<div class="mt5">
							<p class="mb0">개인정보는 후원진행(계약성립) 시 요청되는 이름(실명), 주민등록번호, 주소,
								연락처, 전자 우편(E-mail) 등을 말하며,또한 회원가입 이외에 추가 회원정보를 통해 회원님의 세분화된 항목의
								정보를 수집하게 됩니다. 본사이트는 서비스 제공에 필요한 최소한의 정보를 수집하며, 그 내용은 다음과 같습니다.</p>
							<ul class="list-icon last">
								<li>필수항목 : 이름, 이메일, 휴대폰 번호, 주소, 거래은행, 계좌번호, 후원방법</li>
								<li>선택항목 : 소식지, 뉴스레터, sms, 연말 정산 영수증 수신 여부</li>
							</ul>
						</div>
					</div>

					<div class="mb20">
						<h4 class="text-info">2.개인정보의 수집 및 이용목적</h4>
						<div class="mt5">
							<p class="mb0">본 사이트는 수집한 개인정보를 다음의 목적을 위해 활용합니다.</p>
							<ul class="list-icon last">
								<li>서비스 제공에 관한 계약 이행 및 회원 관리</li>
								<li>후원업무 진행에 따른 본인확인, 개인 식별, 불만처리 등 민원처리 ,고지사항 전달에 활용</li>
								<li>이벤트 등 광고성 정보 전달</li>
							</ul>
						</div>
					</div>

					<div class="mb20">
						<h4 class="text-info">3.개인정보의 보유 및 이용기간</h4>
						<div class="mt5">
							<p class="mb0">회원님의 개인정보는 본사이트의 회원으로서 서비스를 이용하는 동안 본사이트에 의하여
								관리되고 보호되며, 앞서 언급된 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에 당해 정보는 지체 없이
								파기됩니다.</p>
						</div>
					</div>

					<div class="mb20">
						<h4 class="text-info">4.개인정보의 파기절차 및 방법</h4>
						<div class="mt5">
							<p class="mb0">본 사이트는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 기록을 재생할 수
								없는 기술적 방법을 사용하여 해당 정보를 지체없이 파기합니다.</p>
						</div>
					</div>

					<div class="mb20">
						<h4 class="text-info">5.개인정보 제공</h4>
						<div class="mt5">
							<p class="mb0">본사이트는 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다. 다만, 아래의
								경우에는 예외로 합니다.</p>
							<ul class="list-icon last">
								<li>이용자들이 사전에 동의한 경우</li>
								<li>법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는
									경우</li>
							</ul>
						</div>
					</div>

					<div class="mb20">
						<h4 class="text-info">6.수집한 개인정보의 위탁</h4>
						<div class="mt5">
							<p class="mb0">본 사이트는 고객님의 동의없이 고객님의 정보를 외부 업체에 위탁하지 않습니다. 향후
								그러한 필요가 생길 경우, 위탁 대상자와 위탁 업무 내용에 대해 고객님에게 통지하고 필요한 경우 사전 동의를 받도록
								하겠습니다.</p>
						</div>
					</div>

					<div class="mb20">
						<h4 class="text-info">7.이용자 및 법정대리인의 권리와 그 행사방법</h4>
						<div class="mt5">
							<p class="mb0">이용자는 언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정할 수 있으며
								가입해지를 요청할 수도 있습니다. 이용자들의 개인정보 조회,수정을 위해서는 '개인정보변경'(또는 '회원정보수정'
								등)을 가입해지(동의철회)를 위해서는 "회원탈퇴"를 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는
								탈퇴가 가능합니다. 혹은 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면 지체없이 조치하겠습니다.</p>
						</div>
					</div>

					<div class="mb20">
						<h4 class="text-info">8.개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항</h4>
						<div class="mt5">
							<p class="mb0">귀하가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해
								개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를
								제3자에게 지체없이 통지하여 정정이 이루어지도록 하겠습니다.</p>
						</div>
					</div>

					<div class="mb20">
						<h4 class="text-info">9.불만처리 및 개인정보관리 연락처</h4>
						<div class="mt5">
							<p class="mb0">사용자의 개인정보는 보다 편리하고, 유익한 정보를 전달하기 위한 기본자료로서만
								활용할 것을 다시 한 번 약속 드립니다.</p>
							<ul class="list-icon last">
								<li>jsp - <a href="http://jsp9.com" target="_blank"
									title="새 창으로 이동">jsp9.com</a></li>
								<li>Tel) <a href="tel:070-1234-5678" title="전화걸기">070-1234-5678</a></li>
								<li>E-mail) <a href="mailto:cshelp@jsp9.com"
									target="_blank" title="새 창으로 이동">cshelp@jsp9.com</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal">창닫기</button>
			</div>
		</div>
	</div>
</div>
<!-- //개인정보취급방침 -->


<!-- 이용약관 -->
<div class="modal fade" id="termsModal" tabindex="-1" role="dialog"
	aria-labelledby="termsModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close" title="창닫기">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="termsModalLabel">
					<strong>이용약관</strong>
				</h4>
			</div>
			<div class="modal-body">
				<div class="terms_overflow text-justify">
					<div class="mb20">
						<h4 class="text-info">제1조(목적)</h4>
						<div class="mt5">
							<p class="mb0">jsp(이하 '웹사이트'이라 한다)이 제공하는 웹사이트는 모든 사람이 자유롭게
								무료로 이용함을 원칙으로 한다.</p>
						</div>
					</div>

					<div class="mb20">
						<h4 class="text-info">제2조(약관의 변경)</h4>
						<div class="mt5">
							<p class="mb0">웹사이트은 향후 가입자의 편의, 서비스의 질적 향상, 관계법령의 개정 및 서비스
								운영상의 필요 등을 위하여 변경할 수 있다.</p>
						</div>
					</div>

					<div class="mb20">
						<h4 class="text-info">제3조(가입 신청)</h4>
						<div class="mt5">
							<p class="mb0">웹사이트 홈페이지의 회원가입 양식을 통해 회원가입을 신청할 수 있다.</p>
						</div>
					</div>

					<div class="mb20">
						<h4 class="text-info">제4조(회원)</h4>
						<div class="mt5">
							<p class="mb0">웹사이트 홈페이지의 회원은 웹사이트를 가입하는 모든 이용자를 말한다.</p>
						</div>
					</div>

					<div class="mb20">
						<h4 class="text-info">제5조(웹사이트 홈페이지 이용의 제한)</h4>
						<div class="mt5">
							<p class="mb0">웹사이트 홈페이지 중 각종 게시판 및 자료조회 및 등록, 수정 및 기타 등등은
								홈페이지에 가입된 회원만이 이용할 수 있다.</p>
						</div>
					</div>

					<div class="mb20">
						<h4 class="text-info">제6조(회원 인증)</h4>
						<div class="mt5">
							<p class="mb0">웹사이트 홈페이지 등록가입을 위한 신청서를 작성할 때 가입이 인증되면 바로 자신에게
								부여된 서비스를 이용할 수 있다.</p>
						</div>
					</div>

					<div class="mb20">
						<h4 class="text-info">제7조(신청사항의 변경 및 철회)</h4>
						<div class="mt5">
							<ul class="list-icon">
								<li>웹사이트은 접수된 신청서에 변경 또는 보완을 요하는 사항이 있을 경우에는 신청사항을 변경 또는
									보완하도록 가입신청자에게 요청할 수 있다.</li>
								<li>가입신청자중 회원 등록을 철회하고자 하는 때에는 그 사실을 웹사이트 관리자에게 알려야 한다.</li>
							</ul>
						</div>
					</div>

					<div class="mb20">
						<h4 class="text-info">제8조(승인의 제한)</h4>
						<div class="mt5">
							<ul class="list-icon">
								<li>타인 명의를 사용한 신청에 대하여는 이를 승인하지 아니한다.</li>
								<li>웹사이트은 신청에 대하여 서비스의 정상적인 제공을 방해하거나 타 가입자의 서비스 이용에 상당한
									지장을 줄 것으로 예상되는 신청에 대하여는 승인을 거절할 수 있다.</li>
							</ul>
						</div>
					</div>

					<div class="mb20">
						<h4 class="text-info">제9조(가입자의 의무)</h4>
						<div class="mt5">
							<p class="mb0">가입자는 이 서비스를 사용함에 있어 공공질서에 위배되거나, 타인에 대한 비방 행위,
								또는 허위사실을 유포하거나 타 가입자의 서비스 이용에 장애 등을 일으킬 수 있는 사용은 금지하여야 한다.</p>
						</div>
					</div>

					<div class="mb20">
						<h4 class="text-info">제10조(서비스이용의 제한 및 중지)</h4>
						<div class="mt5">
							<ul class="list-icon">
								<li>웹사이트은 다음 각 호의 사유에 해당되는 경우에는 서비스의 제공을 제한 또는 중지할 수 있다.
									<ul class="list-icon">
										<li>전시, 사변, 천재지변 또는 이에 준하는 국가 비상사태가 발생하거나 발생할 우려가 있는 경우</li>
										<li>정기점검이나 전용선의 장애 등 부득이한 사유가 발생하여 사)가축위생방역지원본부가 서비스의 제공을
											제한 또는 중지할 필요가 있다고 판단하는 경우</li>
									</ul>
								</li>
								<li>서비스의 이용을 제한 또는 중지하고자 하는 경우에 웹사이트은 그 사유, 기간 등을 명시하여 지체
									없이 가입자가 알 수 있도록 공지한다.</li>
							</ul>
						</div>
					</div>

					<div class="mb20">
						<h4 class="text-info">제11조(서비스이용의 금지)</h4>
						<div class="mt5">
							<ul class="list-icon">
								<li>웹사이트은 가입자가 다음 각 호의 사유에 해당되는 경우에는 언제든지 가입자의 서비스 이용을 금지할
									수 있으며 또한 그에 따른 데이터 등을 복구를 전제로 하지 아니하고 삭제할 수 있습니다.
									<ul class="list-icon">
										<li>타인명의를 사용하여 신청한 때</li>
										<li>신청서의 내용을 허위로 기재한 때</li>
										<li>가입자가 서비스 이용에 있어 부적격한 사용자로 판명된 때</li>
										<li>법령 및 이 약관을 위반하여 웹사이트가 동일한 위반사유에 대하여 시정요구를 하였음에도 불구하고
											시정하지 아니한 때</li>
										<li>가입자가 이 서비스를 범죄행위 및 상업적으로 사용한 때</li>
										<li>가입자가 이 서비스를 미풍양속 및 공공질서에 반하여 사용한 때</li>
										<li>타 사용자의 서비스 이용에 심각한 장애를 일으켰을 때</li>
										<li>기타 이 서비스의 이용과 관련하여 웹사이트가 요구하는 사항을 위반 하는 경우</li>
									</ul>
								</li>
								<li>전항의 규정에 의하여 서비스의 이용을 금지 당한 가입자는 그 이용금지에 대하여 이의가 있을 때에는
									그 사유를 명시하여 서면으로 웹사이트에 이의신청을 할 수 있다. 이 경우 웹사이트은 이의 신청의 타당성 등을 확인
									및 검토한 후 결과를 해당가입자에게 통지한다.</li>
							</ul>
						</div>
					</div>

					<div class="mb20">
						<h4 class="text-info">부칙 1.(시행일)</h4>
						<div class="mt5">
							<p class="mb0">이 약관은 2019년 05월 17일부터 시행한다.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal">창닫기</button>
			</div>
		</div>
	</div>
</div>
<!-- //이용약관 -->



<!-- 우편번호찾기 -->
<div class="modal fade" id="pop-postcode" style="z-index: 100000;"
	tabindex="-1" role="dialog" aria-labelledby="evaluation-write"
	aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close" title="창닫기">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="pop-postcodeLabel">
					<strong>우편번호찾기</strong>
				</h4>
			</div>
			<div id="postcode"></div>
		</div>
	</div>
</div>
<!-- //우편번호찾기 -->

<script src="/js/common/animate-plus.min.js"></script>
<script src="/js/common/jquery-ui.min.js" title="제이쿼리 UI"></script>
<script src="/js/common/jquery-migrate-git.min.js"
	title="제이쿼리 하위버전 호환 플로그인"></script>
<script src="/js/common/jquery.easing.js"></script>
<script src="/js/common/jquery.cookie.js" title="쿠키 플로그인"></script>
<script src="/js/common/bootstrap.min.js"></script>
<script src="/js/common/bootstrap-datetimepicker.min.js" title="캘린더"></script>
<script src="/js/common/bootstrap-switch.min.js" title="부트스트랩 플러그인 스위치"></script>
<script src="/js/common/metisMenu.js" title="사이드메뉴"></script>
<script src="/js/common/chart.min.js" title="차트 api"></script>
<script src="/js/common/hammer.min.js" title="부트스트랩 슬라이드 터치 플러그인"></script>
<script src="/js/common/owl.carousel.min.js" title="게시판 이미지 슬라이드"></script>
<script src="/js/common/jquery.magnific-popup.min.js"
	title="게시판 이미지 클릭 팝업 슬라이드"></script>
<script src="/js/common/jquery.rwdImageMaps.min.js"
	title="반응형 이미지맵 플러그인"></script>
<script src="/js/user/customer.script.js" title="사용자 스크립트 선언"></script>
