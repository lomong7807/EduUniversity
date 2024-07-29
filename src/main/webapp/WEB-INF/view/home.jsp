<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>home 입니다.</div>
	<div>
		<a href="/user/login-page">로그인</a>
	</div>
	<c:if test="${sessionScope.user_id != null}">
		<div>${sessionScope.user_id }님안녕하세요!</div>
		<div>
			<a href="/user/logout">로그아웃</a>
		</div>
	</c:if>
	<div>MenuList</div>
</body>
</html>