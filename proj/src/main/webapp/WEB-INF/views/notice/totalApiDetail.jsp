<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>습득물 상세 페이지</title>


<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Site Metas -->
<title>ThewayShop - Ecommerce Bootstrap 4 HTML Template</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="lnf/css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="lnf/css/style.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="lnf/css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="lnf/css/custom.css">

<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->




</head>
<body>


	<div class="shop-detail-box-main">
		<div class="container">
			<div class="row">
				<div class="col-xl-5 col-lg-5 col-md-6">
					<div class="img_holder">
						<a href="#"> <img src="${detail.fdFilePathImg }" alt="images"
							class="img-fluid" style="width:100%">
						</a>
					</div>
				</div>
				<div class="col-xl-7 col-lg-7 col-md-6">
					<div class="single-product-details">
						<h2>습득물 상세페이지</h2>
						<h5>
							<del></del>
						</h5>
						<p class="available-stock">
							<span> 순번 : ${detail.rNum } <a href="#"> </a></span>
						</p>
						<p class="available-stock">
							<span> 분류 : ${detail.prdtClNm } <a href="#"> </a></span>
						</p>
						<p class="available-stock">
							<span> 물건ID : ${detail.atcId } <a href="#"> </a></span>
						</p>
						<p class="available-stock">
							<span> 물건명 : ${detail.fdPrdtNm } <a href="#"> </a></span>
						</p>
						<p class="available-stock">
							<span> 습득날짜 : ${detail.fdYmd } <a href="#"> </a></span>
						</p>
						<p class="available-stock">
							<span> 습득장소 : ${detail.depPlace } <a href="#"> </a></span>
						</p>
						<p></p>
						<h4>습득물 내용 : ${detail.fdSbjt }</h4>
						<p></p>
						<div class="price-box-bar" align="center">
							<div class="cart-and-bay-btn">
								<a class="btn hvr-hover" data-fancybox-close="" onclick="location.href='totalApi.do'">목록으로</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<form id="frm" action="" method="post">
			<input type="hidden" id="rnum" name="rnum" value="${list.rNum }">
		</form>
	</div>
	</div>



	<!-- ALL JS FILES -->
	<script src="lnf/jsjquery-3.2.1.min.js"></script>
	<script src="lnf/jspopper.min.js"></script>
	<script src="lnf/jsbootstrap.min.js"></script>
	<!-- ALL PLUGINS -->
	<script src="lnf/jsjquery.superslides.min.js"></script>
	<script src="lnf/jsbootstrap-select.js"></script>
	<script src="lnf/jsinewsticker.js"></script>
	<script src="lnf/jsbootsnav.js."></script>
	<script src="lnf/jsimages-loded.min.js"></script>
	<script src="lnf/jsisotope.min.js"></script>
	<script src="lnf/jsowl.carousel.min.js"></script>
	<script src="lnf/jsbaguetteBox.min.js"></script>
	<script src="lnf/jsform-validator.min.js"></script>
	<script src="lnf/jscontact-form-script.js"></script>
	<script src="lnf/jscustom.js"></script>


</body>
</html>