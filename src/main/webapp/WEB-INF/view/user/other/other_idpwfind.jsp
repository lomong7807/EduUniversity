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
					<h4 class="sc_item_title">
						<strong>아이디/비밀번호 찾기</strong>
						<div class="hbseparator hbseparator-primary">
							<i class="fa fa-search" aria-hidden="true"></i>
						</div>
						<p>
							아이디 또는 비밀번호을 잊어버리셨나요?<br /> 회원가입시 등록한 정보를 <br
								class="hidden-sm hidden-md hidden-lg" />이용하여 아이디와 비밀번호를 찾으실 수
							있습니다.
						</p>
					</h4>

					<div class="row mt30">
						<div class="col-md-8 col-md-offset-2">
							<div class="row">
								<div class="col-sm-6">
									<form class="form-horizontal">
										<h3 class="font-size-16 mt20 mb30 text-center">
											<strong class=" text-primary">아이디 찾기</strong>
											<p class="font-size-13 lh22">
												회원가입 시 등록한 이름과 이메일을<br />입력하시면 바로 아이디 확인이 가능합니다.
											</p>
										</h3>
										<div class="well wh-bg pt40 pb40"
											style="border-radius: 10px; box-shadow: 5px 5px 10px -7px;">
											<div class="form-group has-none mt10">
												<label for="mem_name" class="col-sm-2 control-label">이름</label>
												<div class="col-sm-10 col-md-9">
													<input type="text" class="form-control" id="mem_name"
														name="mem_name" placeholder="이름을 입력해주세요." value=""
														autocomplete="off" />
												</div>
											</div>

											<div class="form-group has-none mb10 mt20 ">
												<label for="Email1" class="col-sm-2 control-label">이메일</label>
												<div class="col-sm-10 col-md-9">
													<input type="email" class="form-control" id="Email1"
														name="Email1" placeholder="이메일을 입력해주세요." value="" />
												</div>
											</div>
										</div>
										<div class="clearfix"></div>
										<div class="mt15 text-center">
											<button class="btn btn-md btn-primary" type="submit">아이디 찾기</button>
										</div>
									</form>
								</div>
								<div class="col-sm-6">
									<form class="form-horizontal xs-mt50">
										<h4 class="font-size-16 mt20 mb30 text-center">
											<strong class=" text-primary">비밀번호 찾기</strong>
											<p class="font-size-13 lh22">
												회원가입시 등록한 휴대전화로 인증번호를<br />확인한 후 임시비밀번호를 SMS로 보내드립니다.
											</p>
										</h4>
										<div class="well wh-bg "
											style="border-radius: 10px; box-shadow: 5px 5px 10px -7px;">
											<div class="form-group has-none mt10">
												<label for="mem_userid" class="col-sm-2 control-label">아이디</label>
												<div class="col-sm-10 col-md-9">
													<input type="text" class="form-control" id="mem_userid"
														name="mem_userid" placeholder="아이디를 입력해주세요." value=""
														autocomplete="off" />
												</div>
											</div>

											<div class="form-group has-none">
												<label for="Email2" class="col-sm-2 control-label">이메일</label>
												<div class="col-sm-10 col-md-9">
													<input type="email" class="form-control" id="Email2"
														name="Email2" placeholder="이메일을 입력해주세요." value="" />
												</div>
											</div>

											<div class="form-group has-none mb10">
												<label for="phone2" class="col-sm-2 control-label">휴대폰</label>
												<div class="col-sm-10 col-md-9">
													<div class="input-group">
														<input type="tel" class="form-control" id="phone2"
															name="phone2" placeholder="휴대폰 인증" value=""
															disabled="disabled" readonly="readonly" /> <span
															class="input-group-btn">
															<button type="button" class="btn btn-black">휴대폰
																인증</button>
														</span>
													</div>
												</div>
											</div>
										</div>
										<div class="clearfix"></div>
										<div class="mt15 text-center">
											<button class="btn btn-md btn-primary" type="submit">비밀번호 찾기</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //콘텐츠 -->
		</div>
	</div>
	<!-- //콘테이너 -->
	<%@ include file="../layout/footer1.jsp"%>
</body>

</html>