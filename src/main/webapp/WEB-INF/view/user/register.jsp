<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/_header.jsp" %>

	<!-- 콘텐츠 -->
	<div id="container" class="container mt-5">
		<div id="customer_container">
			<!-- 회원가입 -->
			<h4 class="text-center pb-2">
				<strong>회원가입</strong>
				<p class="mt-2 fs-5">
					회원가입을 환영합니다. <br class="hidden-sm hidden-md hidden-lg" />
				</p>
			</h4>
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<form id="join_form" name="join_form" method="post"
						action="/registerSubmit" class="form-horizontal">
						<input type="hidden" name="check_email" value="N" /> <input
							type="hidden" id="check_id" value="N" /> <input type="hidden"
							name="check_hp" value="N" /> <input type="hidden" name="mode"
							value="insert" /> <input type="hidden" name="org_user_seq"
							value="" /> <input type="hidden" id="job_exp_chk"
							name="job_exp_chk" value="N" />

						<fieldset class="well wh-bg">
							<!-- 아이디  -->
							<div class="form-group mt20">
								<label for="user_id" class="col-sm-2 control-label"> <i
									class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
									아이디
								</label>
								<div class="col-sm-8">
									<div class="input-group">
										<input type="text" class="form-control" id="user_id"
											name="user_id" onchange="chk_id_reset()"
											placeholder="아이디를 입력해주세요." value="" /> <span
											class="input-group-btn">
											<button type="button" id="check_id_btn" class="btn btn-dark">중복확인</button>
										</span>
									</div>
								</div>
							</div>
							<!-- 비밀번호 -->
							<div class="form-group">
								<label for="user_pw" class="col-sm-2 control-label"> <i
									class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
									비밀번호
								</label>
								<div class="col-sm-3">
									<input type="password" class="form-control" id="user_pw"
										name="user_pw" placeholder="영문,숫자조합 8자이상" required value="" />
								</div>
								<label for="user_pw2" class="col-sm-2 control-label"> <i
									class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
									비밀번호 확인
								</label>
								<div class="col-sm-3">
									<input type="password" class="form-control" id="user_pw2"
										name="user_pw2" required value="" />
								</div>
							</div>
							<!-- 이름  -->
							<div class="form-group">
								<label for="user_name" class="col-sm-2 control-label mt5">
									<i class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
									이름
								</label>
								<div class="col-sm-3">
									<div class="mt5">
										<input type="text" class="form-control" name="user_name"
											id="user_name" value="" />
									</div>
								</div>
								<!-- 성별 -->
								<div class="form-group">
									<label for="sexM" class="col-sm-2 control-label mt5"
										style="margin-left: 5px"> <iaria-hidden="true">
										</i></label>
									<div class="col-sm-3">
										<div class="mt5"></div>
									</div>
								</div>
							</div>
							<!-- 생년월일 -->
							<div class="form-group">
								<label for="birth" class="col-sm-2 control-label mt5"> <i
									class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
									생년월일
								</label>
								<div class="col-sm-3">
									<div class="mt5">
										<input type="text" class="form-control" name="birth"
											id="birth" placeholder="6자리 숫자를 입력하세요. ex)640203"
											maxlength="6" oninput="limitToNumbers(this)" value="" />
									</div>
								</div>
								<!-- 일자리 체험 신청자 확인 -->
								<div class="form-group">
									<div class="col-sm-3">
										<div class="mt5"></div>
									</div>
								</div>

							</div>
							<!-- 휴대전화번호  -->
							<div class="form-group mt20">
								<label for="user_id" class="col-sm-2 control-label"> <i
									class="fa fa-star text-danger nano-small" aria-hidden="true"></i>
									휴대전화번호
								</label>
								<div class="col-sm-8">
									<div class="input-group">
										<input type="text" class="form-control" id="user_hp"
											name="user_hp" onchange="chk_hp_reset()"
											placeholder="'-'를 제외한 11자리 숫자를 입력하세요." value="" /> <span
											class="input-group-btn">
											<button type="button" id="check_hp_btn" class="btn btn-black">중복확인</button>
										</span>
									</div>

									<div>
										<label for="sms_ok" class="control-label ml5"
											style="font-size: 12px; font-weight: 500">(SMS 수신)</label> <input
											type="checkbox" id="sms_ok" name="sms_ok" checked="checked"
											value="Y" style="position: relative; top: 3px" />
									</div>
								</div>
							</div>
							<!-- 이메일  -->
							<div class="form-group">
								<label for="input_email" class="col-sm-2 control-label">이메일</label>
								<div class="col-sm-3">
									<input type="text" class="form-control form-control-sm"
										id="email1" name="email1" value=""
										onchange="chk_email_reset()" />
								</div>
								<div class="col-sm-1 mt5 text-center">@</div>
								<div class="col-sm-2">
									<input type="text" class="form-control form-control-sm ewidth"
										id="email2" name="email2" value=""
										onchange="chk_email_reset()" />
								</div>
								<div class="col-sm-3">
									<div class="input-group">
										<select class="form-control" id="email3"
											onChange="seteMailDomain('email2', $(this).val());">
											<option value="">직접입력</option>
											<option value="daum.net">daum.net</option>
											<option value="gmail.com">gmail.com</option>
											<option value="hanmail.net">hanmail.net</option>
											<option value="hotmail.com">hotmail.com</option>
											<option value="naver.com">naver.com</option>
											<option value="nate.com">nate.com</option>
											<option value="chol.com">chol.com</option>
											<option value="dreamwiz.com">dreamwiz.com</option>
											<option value="empal.com">empal.com</option>
											<option value="freechal.com">freechal.com</option>
											<option value="hanafos.com">hanafos.com</option>
											<option value="hitel.net">hitel.net</option>
											<option value="korea.com">korea.com</option>
											<option value="lycos.co.kr">lycos.co.kr</option>
											<option value="netian.com">netian.com</option>
											<option value="paran.com">paran.com</option>
											<option value="unitel.co.kr">unitel.co.kr</option>
											<option value="yahoo.com">yahoo.com</option>
										</select>
										<div class="input-group-btn">
											<button type="button" id="check_email_btn"
												class="btn btn-black">중복확인</button>
										</div>
									</div>
								</div>
								<div class="col-sm-2"></div>
								<div class="col-sm-4">
									<label for="email_ok" class="control-label"
										style="position: relative; margin-right: 3px; font-size: 12px; font-weight: 500;">이메일
										수신</label> <input type="checkbox" id="email_ok" name="email_ok"
										checked="checked" value="Y"
										style="position: absolute; top: 5px" />
								</div>
							</div>
							<!-- 주소  -->
							<div class="form-group">
								<label for="postcode" class="col-sm-2 control-label">주소</label>
								<div class="col-sm-3">
									<div class="input-group">
										<input type="text" class="form-control" name="zip_code"
											id="zip_code" value="" />
										<div class="input-group-btn">
											<button type="button" id="data-target"
												class="btn btn-primary btn-block" data-toggle="modal"
												data-target="#pop-postcode" role="button"
												onClick="searchPostCode()">우편번호찾기</button>
										</div>
									</div>
								</div>
								<div class="col-sm-5">
									<input type="text" class="form-control" name="addr1" id="addr1"
										value="" /> <label for="postcode"
										class="col-sm-2 control-label"></label>
								</div>
								<div class="col-sm-8">
									<input type="text" class="form-control mt5 txt00" name="addr2"
										id="addr2" value="" />
								</div>
							</div>
						</fieldset>
						<!-- 이용약관  -->
						<div class="col-sm-6 mt10">
							<a href="javascript:void(0);" data-toggle="modal"
								data-target="#joinCheckModal" role="chkeckbox"> <input
								type="checkbox" id="checkBoxId" value="N"
								style="height: 15px; width: 15px; border: 1px solid #d000; margin-top: 1px;"
								class="col-sm-1 pointer" /> <label for
								class="control-label col-sm-11 text-left p5 pointer"
								style="margin-top: -8px"> <em class="text-primary">이용약관</em>
									및 <em class="text-primary">개인정보취급방침</em> 에 동의합니다.
							</label>
							</a>
						</div>
						<div class="text-right xs-text-center">
							<button type="button" id="submit_btn"
								class="btn btn-md btn-primary">회원가입</button>
							<!--<a href="#" onclick="history.back();"  class="btn btn-md btn-default">가입취소')?></a>-->
						</div>
					</form>
				</div>
			</div>
			<!-- //회원가입 -->
		</div>
	</div>
<%@ include file="/WEB-INF/view/include/_footer.jsp" %>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	$("#submit_btn").click(function(event) {
		var f = document.join_form;
		console.log(f);
		if(check() != true) return;
		event.preventDefault();
		// 사용자 이름 및 비밀번호 가져오기
		let formData = new FormData();
		formData.append('user_id',$('#user_id').val());
		formData.append('user_pw',$('#user_pw').val());
		formData.append('user_name',$('#user_name').val());
		formData.append('user_birth',$('#birth').val());
		formData.append('user_ph',$('#user_hp').val());
		formData.append('user_email',$('#email1').val() + '@' + $('#email2').val());
	
		// AJAX 요청 보내기
		$.ajax({
			url : "/user/registerSubmit",
			method : "POST",
			data : formData,
			contentType : false,
			processData : false,
			success : function(data) {
				window.location.href = "/";
			},
			error : function(error) {
				console.error("login 요청 오류:", error);
			},
		});
	});
	
	//우편번호 검색 버튼
	function searchPostCode() {
		console.log('searchPostCodeClicked');
	}
	
	
	//중복확인버튼 ( id , phone , email )
	// id verification
	$('#check_id_btn').on('click',()=>{
		$.get('/user/dupCheck?val=' + $('#user_id').val() + '&type=user_id', function(data) { 
			if(data == 0){
				var f = document.join_form;
				f.check_id.value = 'Y';
				alert('사용 가능한 id 입니다.')
			}else{
				alert('존재하는 id입니다.')
			}
		});
	})
	
	// phone verification
	$('#check_hp_btn').on('click',()=>{
		$.get('/user/dupCheck?val=' + $('#user_hp').val() + "&type=phone", function(data) {
			if(data == 0){
				var f = document.join_form;
				f.check_hp.value = 'Y';
				alert('사용 가능한 휴대폰번호 입니다.')
			}else{
				alert('존재하는 휴대폰 번호 입니다.')
			}
		});
	});
	
	// mail verification
	$('#check_email_btn').on('click',()=>{
		$.get('/user/dupCheck?val=' + $('#user_email').val() +'&type=phone', function(data) {
			if(data == 0){
				var f = document.join_form;
				f.check_email.value = 'Y';
				alert('사용 가능한 이메일 입니다.')
			}else{
				alert('존재하는 이메일 입니다.')
			}
		});
	});
	
	
	// 중복확인 해제
	function chk_id_reset() {
		var f = document.join_form;
		f.check_id.value = "N";
	}
	//이메일 input값 변경시 중복확인 해제
	function chk_email_reset() {
		var f = document.join_form;
		f.check_email.value = "N";
	}  
	//이메일 input값 변경시 중복확인 해제
	function chk_hp_reset() {
		var f = document.join_form;
		f.check_hp.value = "N";
	}
	
	function seteMailDomain(email2, val){
		$('#' + email2).val(val);
	}
	
	  function check() {
		    var f = document.join_form;
		    var regex =
		      /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
		    var regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;

		    //아이디 입력여부 체크
		    if (f.user_id.value == "") {
		      alert("아이디를 입력하지 않았습니다.");
		      f.user_id.focus();
		      return false;
		    }
		    
		    if (f.check_id.value == "N") {
		      alert("아이디 중복확인을 하지 않았습니다.");
		      f.user_id.focus();
		      return false;
		    }

		    // 비밀번호 입력여부 체크
		    if (f.user_pw.value == "") {
		      alert("비밀번호를 입력하지 않았습니다.");
		      f.user_pw.focus();
		      return false;
		    }

		    if (f.user_pw.value == f.user_id.value) {
		      alert("아이디와 비밀번호가 같습니다.");
		      f.user_pw.focus();
		      return false;
		    }

		    // 비밀번호 길이 체크
		    if (f.user_pw.value.length < 4 || f.user_pw.value.length > 16) {
		      alert("비밀번호를 4~16자까지 입력해주세요.");
		      f.user_pw.focus();
		      f.user_pw.select();
		      return false;
		    }

		    var pw = f.user_pw.value;
		    var num = pw.search(/[0-9]/g);
		    var eng = pw.search(/[a-z]/gi);
		    // var spe = pw.search(/[`~!@@#$%^&*|'₩";:₩/ ? ] / gi);
		    var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

		    if ((num < 0 && eng < 0) || (eng < 0 && spe < 0) || (spe < 0 && num < 0)) {
		      /*
		            alert("특수문자 중 2가지 이상을 혼합하여 입력해주세요.");
		            f.user_pw.focus(); 
		            return  false;		
		            */
		    }
		    // 비밀번호 와 비밀번호 확인 일치여부 체크
		    if (f.user_pw.value != f.user_pw2.value) {
		      alert("비밀번호가 일치하지 않습니다.");
		      // f.user_pw.value = "";
		      f.user_pw.focus();
		      return false;
		    }

		    //이름 입력체크
		    if (f.user_name.value == "") {
		      alert("이름을 입력하지 않았습니다.");
		      f.user_name.focus();
		      return false;
		    }

		    //생년월일 입력체크
		    if (f.birth.value == "") {
		      alert("생년월일을 입력하지 않았습니다.");
		      return false;
		    }

		    //이메일 입력시 입력체크
		    if (f.email1.value != "" || f.email2.value != "") {
		      if (f.email1.value == "") {
		        alert("이메일 주소를 완벽하게 입력하세요.");
		        f.email1.focus();
		        return false;
		      } else if (f.email2.value == "") {
		        alert("이메일 주소를 완벽하게 입력하세요.");
		        f.email2.focus();
		        return false;
		      } else if (f.check_email.value == "N") {
		        alert("이메일 중복확인을 하지 않았습니다.");
		        f.email1.focus();
		        return false;
		      }
		    }
		    
		    if (f.check_hp.value == "N") {
		      alert("휴대전화번호 중복확인을 하지 않았습니다.");
		      f.user_hp.focus();
		      return false;
		    }
		    if ($("#checkBoxId").is(":checked") == false) {
		      alert(
		        "이용약관 및 개인정보취급방침에 동의하지 않으셨습니다."
		      );
		      return false;
		    }
		    return true;
		  }
</script>
</html>
