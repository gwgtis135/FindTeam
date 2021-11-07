
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>
<!DOCTYPE html>
<html>
<head>
<title>회원 가입</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<meta name="keywords"
	content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
<meta name="author" content="Codedthemes" />
<meta name="google-signin-client_id"
	content="311780905451-uuhu5c72f7v821iieastfb1s761bl7vr.apps.googleusercontent.com">
<!-- Favicon icon -->

<link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
<!-- Google font-->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700"
	rel="stylesheet">
<!-- Required Fremwork -->
<link rel="stylesheet" type="text/css"
	href="assets/css/bootstrap/css/bootstrap.min.css">
<!-- waves.css -->
<link rel="stylesheet" href="assets/pages/waves/css/waves.min.css"
	type="text/css" media="all">
<!-- ico font -->
<link rel="stylesheet" type="text/css"
	href="assets/icon/icofont/css/icofont.css">
<!-- Font Awesome -->
<link rel="stylesheet" type="text/css"
	href="assets/icon/font-awesome/css/font-awesome.min.css">
<!-- Style.css -->
<link rel="stylesheet" type="text/css" href="assets/css/style.css">

<meta charset="UTF-8">
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		/* 	//네이버 로그인 시작
		 var naverLogin = new naver.LoginWithNaverId(
		 {
		 clientId: "NSjzJlXd5nSfcg0B8RNK", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
		 callbackUrl: "http://localhost:80/20211101/naverLogin.do", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
		 isPopup: false,
		 callbackHandle: true
		 }
		 );	

		 naverLogin.init();

		 window.addEventListener('load', function () {
		 naverLogin.getLoginStatus(function (status) {
		 if (status) {
		 var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
		 var name = naverLogin.user.getName();
		 var tel = naverLogin.user.getTel();
		 console.log(naverLogin.user); 
		
		 if( email == undefined || email == null) {
		 alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
		 naverLogin.reprompt();
		 return;
		 }
		 } else {
		 console.log("callback 처리에 실패하였습니다.");
		 }
		 });
		 });


		 var testPopUp;
		 function openPopUp() {
		 testPopUp= window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
		 }
		 function closePopUp(){
		 testPopUp.close();
		 }
		 //네이버 로그인 끝 */

	});
	
	function ckSpace(){
		if (frm.id.value != "") {
			if(frm.password.value !=""){
				frm.submit();
			}else{
				alert("비밀번호를 입력해주세요");
				frm.password.focus();
				return null;
			}
		}else{
			alert("아이디를 입력해주세요");
			frm.id.focus();
			return null;
		}
		
		
	}
	
	
</script>
</head>

<body themebg-pattern="theme1">
	<%
	String clientId = "NSjzJlXd5nSfcg0B8RNK";//애플리케이션 클라이언트 아이디값";
	String redirectURI = URLEncoder.encode("http://localhost:80/20211101/naverLogin.do", "UTF-8");
	SecureRandom random = new SecureRandom();
	String state = new BigInteger(130, random).toString();
	String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
	apiURL += "&client_id=" + clientId;
	apiURL += "&redirect_uri=" + redirectURI;
	apiURL += "&state=" + state;
	session.setAttribute("state", state);
	%>

	<!-- Pre-loader start -->
	<div class="theme-loader">
		<div class="loader-track">
			<div class="preloader-wrapper">
				<div class="spinner-layer spinner-blue">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="gap-patch">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>
				<div class="spinner-layer spinner-red">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="gap-patch">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>

				<div class="spinner-layer spinner-yellow">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="gap-patch">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>

				<div class="spinner-layer spinner-green">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="gap-patch">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Pre-loader end -->
	<section class="login-block">
		<!-- Container-fluid starts -->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<!-- Authentication card start -->

					<form class="md-float-material form-material" id="frm" name="frm" action="memberLogin.do" method="post">
						<div class="text-center">
							<img src="images/logo-2.png" width="162" height="91.8"
								alt="logo.png">
						</div>
						<div class="auth-box card">
							<div class="card-block">
								<div class="row m-b-20">
									<div class="col-md-12">
										<h3 class="text-center">로그인</h3>
									</div>
								</div>
								<div class="form-group form-primary">
									<input type="text" name="id" class="form-control"> <span
										class="form-bar"></span> <label class="float-label">아이디</label>
								</div>
								<div class="form-group form-primary">
									<input type="password" name="password" class="form-control">
									<span class="form-bar"></span> <label class="float-label">비밀번호</label>
								</div>
								<div class="row m-t-25 text-left">
									<div class="col-12">
										<div class="checkbox-fade fade-in-primary d-">

										<div><a href="<%=apiURL%>"><img height="30" width="30px"
														src="https://www.naver.com/favicon.ico" /></a>
											</div>

										</div>
										<div class="forgot-phone text-right f-right">
											<a href="searchPw.do" class="text-right f-w-600">
												비밀번호를 잊으셨나요?</a>
										</div>
										<div></div>
										<div class="forgot-phone text-right f-right">
											<a href="registerForm.do" class="text-right f-w-600"> 아직
												회원이 아니신가요?</a>
										</div>
									</div>
								</div>
								<div class="row m-t-30">
									<div class="col-md-12">
										<button type="button" onclick="ckSpace()"
											class="btn btn-primary btn-md btn-block waves-effect waves-light text-center m-b-20">로그인</button>
									</div>
								</div>
								<hr />
								<div class="row">
									<div class="col-md-9">
										<p class="text-inverse text-left m-b-0">감사합니다 &#9829;</p>
										<p class="text-inverse text-left">
											<a href="home.do"><b>메인페이지로 돌아가기</b></a>
										</p>
									</div>
									<div class="col-md-3">
										<img src="images/logo.jpg" width="100%" height="100%"
											alt="small-logo.png">
									</div>
								</div>
							</div>
						</div>
					</form>
					<!-- end of form -->
				</div>
				<!-- end of col-sm-12 -->
			</div>
			<!-- end of row -->
		</div>
		<!-- end of container-fluid -->
	</section>

	<!-- Required Jquery -->
	<script type="text/javascript" src="assets/js/jquery/jquery.min.js "></script>
	<script type="text/javascript"
		src="assets/js/jquery-ui/jquery-ui.min.js "></script>
	<script type="text/javascript" src="assets/js/popper.js/popper.min.js"></script>
	<script type="text/javascript"
		src="assets/js/bootstrap/js/bootstrap.min.js "></script>
	<!-- waves js -->
	<script src="assets/pages/waves/js/waves.min.js"></script>
	<!-- jquery slimscroll js -->
	<script type="text/javascript"
		src="assets/js/jquery-slimscroll/jquery.slimscroll.js"></script>
	<script type="text/javascript" src="assets/js/common-pages.js"></script>
	<script
		src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
		charset="utf-8"></script>
	<script src="https://apis.google.com/js/platform.js?onload=init" async
		defer></script>

</body>

</html>