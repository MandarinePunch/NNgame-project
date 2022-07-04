<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!-- Project CSS -->
<title>Login</title>
<link rel="stylesheet" href="/css/style.css" />
<link href="/img/logo/logo.png" rel="shortcut icon" type="image/x-icon">
</head>

<body>
	<c:set var="joinOk" scope="request" value="${joinOk }" />
	<c:if test="${joinOk == true }">
		<script>
			alert("회원 가입 성공")
		</script>
	</c:if>

	
	<!-- header-->
	<%@ include file="/tags/header.jsp"%>

	<!-- mainContents -->
	<div class="container login">
		<!-- Login Form -->
		<div class="row">
			<form action="/user/userLoginOk.io" name="loginform" onsubmit="return checkLogin()" method="post">
				<div class="mb-1">
					<label for="InputEmail" class="form-label">이메일</label> <input
						type="email" class="form-control" id="login_InputEmail"
						aria-describedby="emailHelp" onblur="login_focusOut()" name="user_email">
					<p id="login_pid" class="login_pred">&nbsp;</p>
				</div>
				<div class="mb-1">
					<label for="InputPassword" class="form-label">비밀번호</label> <input
						type="password" class="form-control" id="login_InputPassword"
						onblur="login_focusOut()" name="user_pwd">
					<p id="login_ppw" class="login_pred">&nbsp;</p>
				</div>
				<input type="submit" class="btn submit-btn" style="width: 100%;"
					value="로그인">
			</form>
		</div>
		
		<!-- 추가 기능 -->
		<div class="login__a-link">
			<a href="/user/findpw">비밀번호 찾기</a> <span>|</span> <a href="/user/join">회원가입</a>
		</div>

		<!-- 연동 로그인 -->
		<div class="row">
			<div class="login__line">간편 로그인</div>
			<div class="col login__simple-login">
				<!-- Naver Login -->
				<a id="naverIdLogin_loginButton" href="javascript:void(0)"><img src="/img/icon/login/naver.png"></a>
				
				<!-- Kakao Login --> 
				<a href="javascript:kakaoLogin();"><img src="/img/icon/login/kakao.png"></a>
				
				<!-- Naver Login form -->
				<form action="/user/naverLogin.io" id="naverfrm" onsubmit="return false" method="post">
					<input type="hidden" name="navernick" id="naver_nick">
					<input type="hidden" name="naverEmail" id="naver_email">
					<input type="hidden" name="naverage" id="naver_age">
					<input type="hidden" name="naverbirth" id="naver_birth">
					<input type="hidden" name="naverphone" id="naver_phone">
				</form>
				
				<!-- Kakao Login form -->
				<form action="/user/kakaoLogin.io" id="kakaofrm" onsubmit="return false" method="post">
					<input type="hidden" name="kakaonick" id="kakao_nick">
					<input type="hidden" name="kakaoEmail" id="kakao_email">
					<input type="hidden" name="kakaoage" id="kakao_age">
					<input type="hidden" name="kakaobirth" id="kakao_birth">
				</form>
			</div>
		</div>
	</div>

	<!-- footer -->
	<%@ include file="/tags/footer.jsp"%>

	<!-- 로그인 폼 Script -->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
	<script src="/js/login/login.js"></script>
	
	<!-- Bootstrap 옵션 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>
</html>