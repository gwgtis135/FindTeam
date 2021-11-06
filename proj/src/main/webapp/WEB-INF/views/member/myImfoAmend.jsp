<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" type="text/css" href="assets/css/nstyle.css">

<meta charset="UTF-8">
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.0.min.js"></script>
<script type="text/javascript">

	function Checkitems() {

					if (frm.password.value != "") {
						if (frm.password.value == frm.confirmPassword.value) {
							if (frm.name.value != "") {
								if (frm.address.value != "") {
											frm.submit();	
									} else {
										alert("주소를 입력하세요");
										frm.detailAddress.focus();
										return null;
									}				
						} else {
							alert("이름을 입력해주세요.");
							frm.name.focus();
							return null;
						}
					} else {
						alert("비밀번호가 다릅니다.")
						frm.password.value = "";
						frm.confirmPassword.value = "";
						frm.password.focus();
						return null;
					}
				} else {
					alert("비밀번호를 입력해주세요.");
					frm.password.focus();
					return null;
				}
				
				
	};

</script>
</head>

<body themebg-pattern="theme1">
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
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-12">
					<form class="md-float-material form-material" id="frm" name="frm"
						method="post" action="imfoAmend.do">
						<div class="text-center">
							<img src="images/logo-2.png" width="162" height="91.8"
								alt="logo.png">
						</div>
						<div class="auth-box card">
							<div class="card-block">
								<div class="row m-b-20">
									<div class="col-md-12">
										<h3 class="text-center txt-primary">정보수정</h3>
									</div>
								</div>
								<div class="form-group form-primary">
									아이디:<input type="text" id="id" name="id" class="form-control" value="${member.id}" readonly>
									<span class="form-bar"></span>
								</div>

								<div class="row">
									<div class="col-sm-6">
										<div class="form-group form-primary">
										 비밀번호:<input type="password" id="password" name="password" value="${member.password}"
												class="form-control"> <span class="form-bar"></span>
									
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group form-primary">
											비밀번호 확인:<input type="password" id="confirmPassword"
												class="form-control"><span class="form-bar"></span>									
										</div>
									</div>
								</div>
								<div class="form-group form-primary">
									이름:<input type="text" name="name" class="form-control" value="${member.name}"> <span
										class="form-bar"></span> 
								</div>
								<div class="form-group form-primary">
									전화번호:<input type="tel" name="tel" class="form-control" value="${member.tel}"> <span
										class="form-bar"></span> 
								</div>

								<div class="form-group form-primary">
									주소:<input type="text" name="address" class="form-control" value="${member.address}">
									<span class="form-bar"></span> 
								</div>


								<br> <br>
							
								<div class="row m-t-30">
									<div class="col-md-12">
										<button type="button"
											class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20"
											onclick="Checkitems()">수정완료</button>
									</div>
								</div>
								<hr />
								<div class="row">
									<div class="col-md-9">
									
										<p class="text-inverse text-left">
											<a href="home.do"><b>메인페이지로 돌아가기</b></a>
										</p>
									</div>
									<div class="col-md-3">
										<img src="images/logo.jpg" width="85%" height="85%"
											alt="small-logo.png">
									</div>
								</div>
							</div>
						</div>
 <input
							type="hidden" name="author" value="${member.author }"><input type="text" name="detailAddress" class="form-control"
										value="">
					</form>
				
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

</body>
</html>