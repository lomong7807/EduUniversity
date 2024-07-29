<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
<%@ include file="../layout/header1.jsp"%>
<title>이사회</title>
</head>
<body>

	<!-- 콘테이너 -->
	<div class="container">
		<div class="row">
			<!-- 콘텐츠 -->
			<div id="container" class="col-xs-12 col-md-12">
				<div id="customer_container">

					<!-- 회원가입 -->
					<h4 class="sc_item_title">
						<strong>회원가입</strong>
						<div class="hbseparator hbseparator-primary">
							<i class="ti-music-alt"></i>
						</div>
						<p>회원 가입을 환영합니다.</p>
					</h4>

					<div class="row " style="display: flex; justify-content: center;">
						<div class="col-xs-12 col-sm-10 col-md-8 ">
							<form class="form-horizontal">
								<fieldset class="well well-blue mt0"
									style="border-radius: 10px; box-shadow: 5px 5px 10px -7px;">
									<div class="form-group mt20">
										<label for="user_name" class="col-sm-3 control-label"><strong>이름</strong></label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="user_name" name="user_name" required="required"
											placeholder="이름을 입력해주세요.">
											<p id="nameNotice" class="form-control-static"></p>
										</div>
									</div>

									<div class="form-group">
										<label for="user_id" class="col-sm-3 control-label"><strong>아이디</strong></label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="user_id" name="user_id"
												required="" placeholder="영문, 숫자 조합 6~20자">
											<p id="idNotice" class="form-control-static"></p>
											<%--<button type="button"  style="display: flex; gap: 1rem;" col-xs-8 class="btn btn-block btn-black" style="max-width: 120px; min-width: 120px;" data-toggle=""
												data-target="">중복확인</button>--%>
										</div>
									</div>

									<div class="form-group">
										<label for="user_pw" class="col-sm-3 control-label"><strong>비밀번호</strong></label>
										<div class="col-sm-6">
											<input type="password" class="form-control" name="user_pw"
												id="user_pw" required
												placeholder="영문, 숫자, 특수문자 조합 8~16자">
										</div>
									</div>

									<div class="form-group">
										<label for="pwChk" class="col-sm-3 control-label"><strong>비밀번호
												확인</strong></label>
										<div class="col-sm-6">
											<input type="password" class="form-control" name="pwChk"
												id="pwChk" required
												placeholder="설정하신 비밀번호를 재입력해주세요.">
											<p id="pwChkNotice" class="form-control-static"></p>
										</div>
									</div>

									<div class="form-group">
										<label for="birth"
											class="col-xs-12 col-sm-3 control-label"><strong>생년월일</strong>
										</label>
										<div class="col-xs-12 col-sm-6">
											<input type="text" class="form-control" id="birth" name="birth"
												value="" placeholder="예) 19990101">
											<p id="birthNotice" class="form-control-static"></p>
											<%--<select
											style="display: flex; gap: 1rem;"
												id="input_birth2" class="form-control">
												<option selected="selected">양력</option>
												<option>음력</option>
												<option>윤달</option>
											</select>--%>
										</div>
									</div>

									<div class="form-group">
										<label for="input_sex1" class="col-sm-3 control-label"><strong>성별</strong></label>
										<div class="col-sm-6">
											<label for="input_sex1" class="radio-inline"> <input
												type="radio" id="input_sex1" name="input_sex" value="m"
												checked="checked">남자
											</label> <label for="input_sex2" class="radio-inline"> <input
												type="radio" id="input_sex2" name="input_sex" value="f">여자
											</label>
										</div>
									</div>

									<div class="form-group">
										<label for="email" class="col-sm-3 control-label"><strong>이메일</strong></label>
										<div class="col-sm-6">
											<input type="email" class="form-control" id="email" name="email" placeholder="이메일을 입력해주세요.">
											<p id="emailNotice" class="form-control-static"></p>
										</div>
									</div>

<%--									<div class="form-group">
										<label for="tel" class="col-sm-3 control-label"><strong>전화번호</strong></label>
										<div class="col-sm-6">
											<input type="tel" class="form-control" id="tel" name="tel" placeholder="전화번호를 입력해주세요.">
										</div>
									</div>--%>

									<div class="form-group">
										<label for="user_hp"
											class="col-sm-3 control-label text-danger"><strong>핸드폰</strong></label>
										<div class="col-sm-6">
											<input type="tel" class="form-control" id="user_hp" name="user_hp"
												placeholder="휴대폰 번호를 입력해주세요.">
											<p id="hpNotice" class="form-control-static"></p>
										</div>
									</div>

									<div class="form-group has-none mb0">
										<div class="col-xs-12 col-sm-3 control-label">
											<strong>주소</strong>
										</div>
										<div class="col-xs-12 col-sm-6"
											style="display: flex; gap: 1rem;">
											<input type="text" class="form-control col-xs-8"
												data-toggle="modal" data-target="#pop-postcode"
												name="zip_code" id="zip_code" placeholder="우편번호" value=""
												readonly="readonly" />
											<button type="button" class="btn btn-block btn-black"
												style="max-width: 120px; min-width: 120px;"
												data-toggle="modal" data-target="#pop-postcode">우편번호찾기</button>
										</div>
									</div>
									<div class="form-group has-none mb0">
										<div class="col-xs-12 col-sm-3"></div>
										<div class="col-xs-12 col-sm-6"
											style="display: flex; gap: 1rem;">
											<input type="text" class="form-control" data-toggle="modal"
												data-target="#pop-postcode" name="addr1" id="addr1"
												placeholder="주소를 검색해주세요" value="" readonly="readonly" />
										</div>
									</div>
									<div class="form-group">
										<div class="col-xs-12 col-sm-3"></div>
										<div class="col-xs-12 col-sm-6">
											<input type="text" class="form-control" name="addr2"
												id="addr2" placeholder="상세 주소를 입력해주세요." value="" />
										</div>
									</div>

									<div class="mt30 mb20 text-center">
										<button type="button" class="btn btn-primary" id="saveBtn">
											<strong>회원가입</strong>
										</button>
										<button type="button" class="btn btn-default" id="cancelBtn"><strong>가입취소</strong></button>
									</div>
								</fieldset>
							</form>
						</div>
					</div>
					<!-- //회원가입 -->
				</div>
			</div>
			<!-- //콘텐츠 -->
		</div>
	</div>
	<!-- //콘테이너 -->
	<script src="https://spi.maps.daum.net/imap/map_js_init/postcode.v2.js"
		title="다음 주소 API"></script>
	<script>

		// Input Elements
		const idInput = document.getElementById('user_id');
		const nameInput = document.getElementById('user_name');
		const pwInput = document.getElementById('user_pw');
		const pwChkInput = document.getElementById('pwChk');
		const birthInput = document.getElementById('birth');
		const emailInput = document.getElementById('email');
		const hpInput = document.getElementById('user_hp');
		const sexInput = document.getElementById('sex');
		const zipInput = document.getElementById('zip_code');
		const addr1Input = document.getElementById('addr1');
		const addr2Input = document.getElementById('addr2');

		// Other Elements
		const idNotice = document.getElementById('idNotice');
		const nameNotice = document.getElementById('nameNotice');
		const pwChkNotice = document.getElementById('pwChkNotice');
		const birthNotice = document.getElementById('birthNotice');
		const emailNotice = document.getElementById('emailNotice');
		const hpNotice = document.getElementById('hpNotice');
		const saveBtn = document.getElementById('saveBtn');
		const cancelBtn = document.getElementById('cancelBtn');

		// Validation Status
		let isValidId = false;
		let isValidName = false;
		let isValidPw = false;
		let isValidBirth = false;
		let isValidEmail = false;
		let isValidHp = false;


		// Validation Regular Expression
		const idRegex = /^[a-z0-9]{6,20}$/;
		const hpRegex = /^[0-9]{11}$/;
		const numberOnlyRegex = /^[0-9]+$/;
		const pwRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()\-_=+\\|[\]{};:'",.<>/?]).{8,16}$/;
		const nameRegex = /^[가-힣a-zA-Z]{2,15}$/;
		const birthRegex = /^\d{8}$/;
		const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

		// New variables
		let isSubmitting = false;
		const debounceDelay = 300; // 디바운스 지연 시간 (밀리초)

		// Debounce function
		function debounce(func, delay) {
			let timeoutId;
			return function (...args) {
				clearTimeout(timeoutId);
				timeoutId = setTimeout(() => func.apply(this, args), delay);
			};
		}

		// Page Loaded
		document.addEventListener('DOMContentLoaded', function() {

			// Save Previous Value
			let prevIdValue = idInput.value;
			let prevHpValue = hpInput.value;

			idInput.addEventListener('focus', function() {
				// Save Current Value
				prevIdValue = idInput.value;
			});
			// id Check
			idInput.addEventListener('focusout', debounce(function() {
				if (idInput.value === '') {
					idNotice.textContent = '아이디를 입력해주세요.';
					idNotice.style.color = 'red';
					isValidId = false;
					return;
				}

				if (!idRegex.test(idInput.value) || numberOnlyRegex.test(idInput.value)) {
					idNotice.textContent = '아이디는 6~20자 영문 소문자, 숫자로만 구성되어야 하며, 숫자로만 구성될 수 없습니다.';
					idNotice.style.color = 'red';
					isValidId = false;
					return;
				}

				if (idInput.value === prevIdValue) {
					return;
				}

				let formData = new FormData();
				formData.append('id', idInput.value);

				fetch('/site/chkId', {
					method: 'POST',
					body: formData
				})
						.then(response => response.json())
						.then(data => {
							if(data.result > 0){
								idNotice.textContent = '사용할 수 없는 아이디입니다. 다른 아이디를 입력해 주세요.';
								idNotice.style.color = 'red';
								isValidId = false;
							}else {
/*								idNotice.textContent = '사용 가능한 아이디입니다.';
								idNotice.style.color = 'green';*/
								idNotice.textContent = '';
								isValidId = true;
							}
						})
						.catch(error => {
							console.error('Error:', error);
							alert('아이디 확인 중 오류가 발생했습니다. 다시 시도해 주세요.');
						});
			}, debounceDelay));


			hpInput.addEventListener('focus', function() {
				// Save Current Value
				prevHpValue = hpInput.value;
			});
			// hp Check
			hpInput.addEventListener('focusout', debounce(function() {
				if(hpInput.value === ''){
					hpNotice.textContent = '휴대폰 번호를 입력해주세요.';
					hpNotice.style.color = 'red';
					isValidHp = false;
					return;
				}

				if (!hpRegex.test(hpInput.value)) {
					hpNotice.textContent = "휴대폰 번호는 '-'를 제외한 숫자로 11자리를 입력해주셔야 합니다.";
					hpNotice.style.color = 'red';
					isValidHp = false;
					return;
				}

				if (hpInput.value === prevHpValue) {
					return;
				}

				let formData = new FormData();
				formData.append('hp', hpInput.value);

				fetch('/site/chkHp', {
					method: 'POST',
					body: formData
				})
						.then(response => response.json())
						.then(data => {
							if(data.result > 0){
								hpNotice.textContent = '사용할 수 없는 휴대폰 번호입니다. 다른 번호를 입력해 주세요.';
								hpNotice.style.color = 'red';
								isValidHp = false;
							}else {
								hpNotice.textContent = '';
								isValidHp = true;
							}
						})
						.catch(error => {
							console.error('Error:', error);
							alert('휴대폰 번호 확인 중 오류가 발생했습니다. 다시 시도해 주세요.');
						});
			}, debounceDelay));

			hpInput.addEventListener('keydown', function(e) {
				let value = e.target.value;

				// 백스페이스 시 '-' 자동 제거
				if (e.key === 'Backspace' && (value.endsWith('-') || value.endsWith('--'))) {
					e.target.value = value.slice(0, -1);
				}
			});

			// name Check
			nameInput.addEventListener('focusout', function(){
				if (nameInput.value === '') {
					nameNotice.textContent = '이름을 입력해주세요.';
					nameNotice.style.color = 'red';
					isValidName = false;
					return;
				}
				if(!nameRegex.test(nameInput.value)){
					nameNotice.textContent = '이름은 특수문자와 숫자를 제외한 2자 이상 이어야 합니다.';
					nameNotice.style.color = 'red';
					isValidName = false;
				}else {
					nameNotice.textContent = '';
					isValidName = true;
				}
			})

			// birth Check
			birthInput.addEventListener('focusout', function(){
				if (birthInput.value === '') {
					birthNotice.textContent = '생년월일을 입력해주세요.';
					birthNotice.style.color = 'red';
					isValidBirth = false;
					return;
				}
				if(!birthRegex.test(birthInput.value)){
					birthNotice.textContent = '생년월일이 유효하지 않습니다. YYYYMMDD 형식으로 8자리 숫자를 입력해주세요. (예: 19990101) ';
					birthNotice.style.color = 'red';
					isValidBirth = false;
				}else {
					birthNotice.textContent = '';
					isValidBirth = true;
				}
			})
			// email Check
			emailInput.addEventListener('focusout', function(){
				if (emailInput.value === '') {
					emailNotice.textContent = '이메일을 입력해주세요.';
					emailNotice.style.color = 'red';
					isValidEmail = false;
					return;
				}
				if(!emailRegex.test(emailInput.value)){
					emailNotice.textContent = '이메일 형식으로 입력해주세요. (예: example@example.com)';
					emailNotice.style.color = 'red';
					isValidEmail = false;
				}else {
					emailNotice.textContent = '';
					isValidEmail = true;
				}
			})

			// pw Check
			pwChkInput.addEventListener('focusout', function() {
				let pwMatch = (pwInput.value === pwChkInput.value);
				let validLength = (pwInput.value.length >= 8 && pwInput.value.length <= 16);

				if(!pwRegex.test(pwInput.value)){
					pwChkNotice.textContent = '비밀번호는 영어 소문자, 대문자, 숫자, 특수문자를 포함하여 8~16자여야 합니다.';
					pwChkNotice.style.color = 'red';
					isValidPw = false;
				} else if (!validLength) {
					pwChkNotice.textContent = '비밀번호는 8~16자 이어야 합니다.';
					pwChkNotice.style.color = 'red';
					isValidPw = false;
				} else if (!pwMatch) {
					pwChkNotice.textContent = '비밀번호와 비밀번호 확인이 일치하지 않습니다.';
					pwChkNotice.style.color = 'red';
					isValidPw = false;
				} else {
					pwChkNotice.textContent = '';
					isValidPw = true;
				}
			});

			// pw Check
			pwInput.addEventListener('focusout', function() {
				let pwMatch = (pwInput.value === pwChkInput.value);
				let validLength = (pwInput.value.length >= 8 && pwInput.value.length <= 16);

				if(!pwRegex.test(pwInput.value)){
					pwChkNotice.textContent = '비밀번호는 영어 소문자, 대문자, 숫자, 특수문자를 포함하여 8~16자여야 합니다.';
					pwChkNotice.style.color = 'red';
					isValidPw = false;
				} else if (!validLength) {
					pwChkNotice.textContent = '비밀번호는 8~16자 이어야 합니다.';
					pwChkNotice.style.color = 'red';
					isValidPw = false;
				} else if (!pwMatch) {
					pwChkNotice.textContent = '비밀번호와 비밀번호 확인이 일치하지 않습니다.';
					pwChkNotice.style.color = 'red';
					isValidPw = false;
				} else {
					pwChkNotice.textContent = '';
					isValidPw = true;
				}
			});

			saveBtn.addEventListener('click', function() {
				if (isSubmitting) {
					alert('이미 처리 중입니다. 잠시만 기다려주세요.');
					return;
				}

				// 필수 입력 필드 유효성 검사
				if (!idInput.value || !nameInput.value || !pwInput.value || !pwChkInput.value || !hpInput.value || !birthInput.value) {
					alert('필수 입력 필드를 모두 입력해주세요.');
					return;
				} else if(!isValidId){
					alert('아이디 값을 확인해주세요.');
					idNotice.textContent = "아이디를 확인해주세요.";
					idNotice.style.color = 'red';
					return;
				} else if(!isValidName) {
					alert('이름을 확인해주세요.');
					nameNotice.textContent = "이름을 확인해주세요.";
					nameNotice.style.color = 'red';
					return;
				} else if(!isValidBirth){
					alert('생년월일을 확인해주세요.');
					birthNotice.textContent = "생년월일을 확인해주세요.";
					birthNotice.style.color = 'red';
					return;
				} else if(!isValidEmail){
					alert('이메일을 확인해주세요.');
					emailNotice.textContent = "생년월일을 확인해주세요.";
					emailNotice.style.color = 'red';
					return;
				} else if(!isValidPw){
					alert('비밀번호를 확인해주세요.');
					pwChkNotice.textContent = "비밀번호를 확인해주세요.";
					pwChkNotice.style.color = 'red';
					return;
				} else if(!isValidHp){
					alert('휴대폰 번호를 확인해주세요.');
					hpNotice.textContent = "휴대폰 번호를 확인해주세요.";
					hpNotice.style.color = 'red';
					return;
				}

				let selectedSex = document.querySelector('input[name="input_sex"]:checked').value;
				console.log(selectedSex);
				// let formData = new FormData(document.querySelector('.form-horizontal'));
				// let inputArr = $('.form-horizontal').find('input, select');
				// let arr = ['user_name', 'user_id', 'user_pw', 'pwChk', 'birth', 'sex', 'email', 'user_hp', 'zip_code', 'addr1', 'addr2'];
				let formData = new FormData();
/*				arr.forEach((e,idx) => {
					if(e === 'sex'){
						formData.append(e, selectedSex);
					}else{
						formData.append(e, inputArr[idx].value);
						console.log(inputArr[idx].value);
					}
					console.log(idx);
				});*/

				formData.append('user_name', nameInput.value);
				formData.append('user_id', idInput.value);
				formData.append('user_pw', pwChkInput.value);
				formData.append('birth', birthInput.value);
				formData.append('sex', selectedSex);
				formData.append('email', emailInput.value);
				formData.append('user_hp', hpInput.value);
				formData.append('zip_code', zipInput.value);
				formData.append('addr1', addr1Input.value);
				formData.append('addr2', addr2Input.value);

				isSubmitting = true;
				saveBtn.disabled = true;

				fetch('/site/registerUser', {
					method: 'POST',
					body: formData
				})
						.then(response => response.json())
						.then(data => {
							if(data.success){
								alert('회원가입이 완료되었습니다.');
								window.location.href = '/site/login';
							}else{
								alert('작업에 실패했습니다. 관리자에게 문의하세요.');
							}
						})
						.catch(error => {
							console.error('Error:', error);
							alert('저장 중 오류가 발생했습니다. 다시 시도해 주세요.');
						})
						.finally(() => {
							isSubmitting = false;
							saveBtn.disabled = false;
						});
			});

			cancelBtn.addEventListener('click', function(){
				if(confirm('작성을 취소하시겠습니까?\n변경사항이 저장되지 않을 수 있습니다.')){
					window.location.href = "/site/main";
				}
			});
		});

		//<![CDATA[
		jQuery(function($) {
			$("[data-target=#pop-postcode]").on("click", function() {
				// 다음 주소 API
				daumPostcode();
			});
		});
		//]]>
	</script>
	<%@ include file="../layout/footer1.jsp"%>
</body>

</html>