<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
<%@ include file="../layout/header1.jsp"%>
<title>로그인</title>
</head>
<body>
	<!-- 콘테이너 -->
	<div class="container">
		<div class="row">
			<!-- 콘텐츠 -->
			<div id="container" class="col-md-12">
				<div id="customer_container">
					<!-- 회원가입 -->
					<h4 class="sc_item_title">
						<strong>개인정보수정</strong>
						<div class="hbseparator hbseparator-primary">
							<i class="fa fa-pencil" aria-hidden="true"></i>
						</div>
						<p>
							회원님께서 가입하신 <br class="hidden-sm hidden-md hidden-lg">회원
							정보입니다.
						</p>
					</h4>

					<div class="row">
						<div class="col-md-10 col-md-offset-1 ">
							<form class="form-horizontal ">
								<fieldset class="well well-blue mt0 "
									style="border-radius: 10px; box-shadow: 5px 5px 10px -7px;">
									<div class="form-group">
										<label class="col-sm-2 control-label"><strong>이름</strong></label>
										<div class="col-sm-6">
											<div class="mt5">강정훈</div>
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label"><strong>아이디</strong>
										</label>
										<div class="col-sm-6">
											<div class="mt5">kjh1004</div>
										</div>
									</div>

									<div class="form-group">
										<label for="member_password1" class="col-sm-2 control-label">
											<strong>비밀번호</strong>
										</label>
										<div class="col-sm-3">
											<input type="password" class="form-control"
												id="member_password1" required />
										</div>
										<label for="member_password2" class="col-sm-2 control-label"><strong>비밀번호
												확인</strong></label>
										<div class="col-sm-3">
											<input type="password" class="form-control"
												id="member_password2" required />
										</div>
									</div>

									<div class="form-group">
										<label for="input_birth1"
											class="col-xs-12 col-sm-2 control-label"><strong>생년월일</strong></label>
										<div class="col-xs-6 col-sm-2">
											<input type="text" class="form-control" id="input_birth1"
												value="950127" />
										</div>
										<div class="col-xs-6 col-sm-2">
											<select id="input_birth2" class="form-control">
												<option selected="selected">양력</option>
												<option>음력</option>
												<option>윤달</option>
											</select>
										</div>
									</div>

									<div class="form-group">
										<label for="input_sex1" class="col-sm-2 control-label"><strong>성별</strong></label>
										<div class="col-sm-5">
											<label for="input_sex1" class="radio-inline"> <input
												type="radio" id="input_sex1" name="input_sex" value="m"
												checked="checked" />남자
											</label> <label for="input_sex2" class="radio-inline"> <input
												type="radio" id="input_sex2" name="input_sex" value="f" />여자
											</label>
										</div>
									</div>

									<div class="form-group">
										<label for="input_marrstatus1" class="col-sm-2 control-label"><strong>결혼여부</strong></label>
										<div class="col-sm-5">
											<label for="input_marrstatus1" class="radio-inline">
												<input type="radio" id="input_marrstatus1"
												name="input_marrstatus" value="y" />기혼
											</label> <label for="input_marrstatus2" class="radio-inline">
												<input type="radio" id="input_marrstatus2"
												name="input_marrstatus" value="n" checked="checked" />미혼
											</label>
										</div>
									</div>

									<div class="form-group">
										<label for="input_email" class="col-sm-2 control-label"><strong>이메일</strong></label>
										<div class="col-sm-4">
											<input type="email" class="form-control" id="input_email"
												value="help@mandarin.com" />
										</div>
									</div>

									<div class="form-group">
										<label for="input_tel" class="col-sm-2 control-label"><strong>전화번호</strong></label>
										<div class="col-sm-4">
											<input type="tel" class="form-control" id="input_tel"
												value="021234578" />
										</div>
									</div>

									<div class="form-group">
										<label for="input_mobile"
											class="col-sm-2 control-label text-danger"><strong>핸드폰</strong></label>
										<div class="col-sm-4">
											<input type="tel" class="form-control" id="input_mobile"
												value="01012345678" />
										</div>
									</div>

									<div class="form-group has-none mb0">
										<div class="col-xs-12 col-sm-2 control-label">
											<strong>주소</strong>
										</div>
										<div class="col-xs-7 col-sm-2">
											<input type="text" class="form-control" data-toggle="modal"
												data-target="#pop-postcode" name="zip_code" id="zip_code"
												placeholder="우편번호" value="06267" readonly="readonly" />
										</div>
										<div class="col-xs-5 col-sm-2">
											<button type="button" class="btn btn-block btn-black"
												data-toggle="modal" data-target="#pop-postcode">우편번호찾기</button>
										</div>
									</div>
									<div class="form-group">
										<div class="col-xs-12 col-sm-2"></div>
										<div class="col-sm-4 xs-mb15">
											<input type="text" class="form-control" data-toggle="modal"
												data-target="#pop-postcode" name="address1" id="address1"
												placeholder="주소를 검색해주세요"
												value="서울 강남구 강남대로 238 (도곡동, 스카이쏠라빌딩)" readonly="readonly" />
										</div>
										<div class="col-sm-6">
											<input type="text" class="form-control" name="address2"
												id="address2" placeholder="상세 주소를 입력해주세요" value="2층 105호" />
										</div>
									</div>

									<div class="form-group has-none">
										<label for="input_summury" class="col-sm-2 control-label"><strong>자기소개</strong></label>
										<div class="col-sm-10">
											<textarea class="form-control" rows="2" id="input_summury"
												placeholder="자기소개를 입력하세요.">안녕하세요 반갑습니다.</textarea>
										</div>
									</div>
								</fieldset>

								<div class="mt20 text-right xs-text-center">
									<button type="submit" class="btn btn-md btn-primary">정보수정</button>
								</div>
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