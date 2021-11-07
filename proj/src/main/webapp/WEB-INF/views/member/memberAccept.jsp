<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Medical HTML Template">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
  <meta name="author" content="Themefisher">
  <meta name="generator" content="Themefisher Medical HTML Template v1.0">
  
  <!-- ** Plugins Needed for the Project ** -->
    <!-- jquery-ui -->
  <link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.css">
  <!-- bootstrap -->
  <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
  <!-- Slick Carousel -->
  <link rel="stylesheet" href="plugins/slick/slick.css">
  <link rel="stylesheet" href="plugins/slick/slick-theme.css">
  <!-- FancyBox -->
  <link rel="stylesheet" href="plugins/fancybox/jquery.fancybox.min.css">
  <!-- fontawesome -->
  <link rel="stylesheet" href="plugins/fontawesome/css/all.min.css">
  <!-- animate.css -->
  <link rel="stylesheet" href="plugins/animation/animate.min.css">

  <!-- timePicker -->
  <link rel="stylesheet" href="plugins/timePicker/timePicker.css">
  
  <!-- Stylesheets -->
  <link href="css/style.css" rel="stylesheet">
  
  <!--Favicon-->
  <link rel="icon" href="images/favicon.png" type="image/x-icon">
<style>

@font-face {
    font-family: 'ONE-Mobile-POP';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/ONE-Mobile-POP.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

h1 {
	font-family: 'ONE-Mobile-POP';
	font-size: 100px;
 }
 div#ac{
 font-family: 'ONE-Mobile-POP';
 }

// best seen at 1500px or less

body {
  background:radial-gradient(ellipse at center, rgba(255,254,234,1) 0%, rgba(255,254,234,1) 35%, #B7E8EB 100%);
  overflow: hidden;
}

.ocean { 
  height: 7%;
  width:100%;
  position:absolute;
  bottom:0;
  left:0;
  background: #015871;
  z-index: 1;
  pointer-events:none;

}

.wave {
  background: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/85486/wave.svg) repeat-x; 
  position: absolute;
  top: -198px;
  width: 6400px;
  height: 198px;
  animation: wave 7s cubic-bezier( 0.36, 0.45, 0.63, 0.53) infinite;
  transform: translate3d(0, 0, 0);
}

.wave:nth-of-type(2) {
  top: -175px;
  animation: wave 7s cubic-bezier( 0.36, 0.45, 0.63, 0.53) -.125s infinite, swell 7s ease -1.25s infinite;
  opacity: 1;
}

@keyframes wave {
  0% {
    margin-left: 0;
  }
  100% {
    margin-left: -1600px;
  }
}

@keyframes swell {
  0%, 100% {
    transform: translate3d(0,-25px,0);
  }
  50% {
    transform: translate3d(0,5px,0);
  }
}
</style>



</head>
<body>

<!--Header Upper-->
<section class="header-uper">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-xl-4 col-lg-3">
        <div class="logo">
          <a href="home.do">
            <img loading="lazy" class="img-fluid" src="images/logo.jpg" alt="logo">
          </a>
        </div>
      </div>
    </div>
  </div>
  <br>
  <!--Main Header-->
<nav class="navbar navbar-expand-lg navbar-dark" style="border-radius:200px"> 
  <div class="container">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarLinks" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  
    <div class="collapse navbar-collapse" id="navbarLinks">
      <ul class="navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="home.do">Home</a>
        </li>
        <li class="nav-item @@about">
          <a class="nav-link" href="about.html">분실물 게시판</a>
        </li>
        <li class="nav-item @@service">
          <a class="nav-link" href="lNDetail.do">습득물 게시판</a>
        </li>
        <li class="nav-item @@gallery">
          <a class="nav-link" href="gallery.html">공공기관 유실물 조회</a>
        </li>
           <li class="nav-item @@contact">
          <a class="nav-link" href="contact.html">사이트 소개</a>
        </li>
    
    
      </ul>
    </div>
  </div>
</nav>
<!--End Main Header -->
</section>




<div align="center" style="width:100%; height:600px;">
<div class="ocean">
  <div class="wave"></div>
  <div class="wave"></div>
</div>
<div class="animate__animated animate__slideInUp animate__duration: 3s" id="ac">
<h1 style="color:#43D18B">
회원가입을<br>
진심으로<br>
 환영합니다!
</h1>
<br><br>
<button style="width:170px;height:50px; color:black; border-radius:50px" onclick="location.href='memberLoginForm.do'">로그인하기</button> &nbsp;&nbsp;
<button style="width:170px;height:50px; color:black; border-radius:50px" onclick="location.href='home.do'">메인으로</button>
</div>


</div>


	<!--footer-main-->
	<footer class="footer-main">
		<div class="footer-top">
			<div class="container">
				<div class="row justify-content-between">
					<div class="col-lg-4 mb-5 mb-lg-0">
						<div class="footer-logo">

							<a href="index.html"> <img loading="lazy" class="img-fluid"
								src="images/logo-2.png" alt="logo-2">
							</a>
						</div>
					</div>
					<div class="col-lg-3 col-md-5 mb-3 mb-md-0">
						<ul class="location-link" style="float: right">
							<li class="item"><i class="fas fa-map-marker-alt"></i>
								<p>대구광역시 중구 남일동 중앙대로 403</p></li>
							<li class="item"><i class="far fa-envelope"
								aria-hidden="true"></i> <a href="mailto:support@medic.com">
									<p>chazazo@yedam.com</p>
							</a></li>
							<li class="item"><i class="fas fa-phone" aria-hidden="true"></i>
								<p>053) 111 4567</p></li>
						</ul>
					</div>


				</div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="container clearfix">
				<div class="copyright-text">
					<p>
						&copy; Copyright 2021. <a href="https://themefisher.com/">chazazo</a>
					</p>
				</div>
				<ul class="footer-bottom-link">
					<li><a href="index.html">Home</a></li>
					<li><a href="about.html">About</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
			</div>
		</div>
	</footer>
	<!--End footer-main-->







<script src="plugins/jquery.min.js"></script>
<!-- bootstrap -->
<script src="plugins/bootstrap/bootstrap.min.js"></script>
<!-- Slick Slider -->
<script src="plugins/slick/slick.min.js"></script>
<script src="plugins/slick/slick-animation.min.js"></script>
<!-- FancyBox -->
<script src="plugins/fancybox/jquery.fancybox.min.js" defer></script>
<!-- Google Map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU" defer></script>
<script src="plugins/google-map/gmap.js" defer></script>

<!-- jquery-ui -->
<script src="plugins/jquery-ui/jquery-ui.js" defer></script>
<!-- timePicker -->
<script src="plugins/timePicker/timePicker.js" defer></script>

<!-- script js -->
<script src="js/script.js"></script>
</body>
</html>