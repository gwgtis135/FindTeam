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
    <link rel="shortcut icon" href="lnf/images/favicon.ico" type="lnf/image/x-icon">
    <link rel="apple-touch-icon" href="lnf/images/apple-touch-icon.png">

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

 	
   <!-- Start Shop Detail  -->
   <div class="shop-detail-box-main">
        <div class="container">
            <div class="row">
                <div class="col-xl-5 col-lg-5 col-md-6">
                    <div id="carousel-example-1" class="single-product-slider carousel slide">
                        <div class="carousel-inner" >
                            
                            <div class="carousel-item active"> <img class="d-block w-100" src="lnf/images/big-img-03.jpg"> </div> <!-- 이 자리에 선택한 사진 넝어오게 -->
                        </div>
                    </div>
                </div>
                <div class="col-xl-7 col-lg-7 col-md-6">
                  
                  <form id="frm" action="lostNoticeSelect.do" method="post">
                    <div class="single-product-details">
                        <h2>습득물 상세페이지</h2>
                        <h5> <del></del></h5>
                        <p class="available-stock" name="lFnDate"><span> 습득날짜 : ${lfnotice.LFnDate } <a href="#"> </a></span></p><p>
						</p><h4>습득물 내용:</h4>
						<p name="lFncontent">${lfnotice.LFncontent } </p>
						<ul>
							<li>
								<div class="form-group quantity-box">
									<label class="control-label">여기에는 지도 api 활용</label>
									<input class="form-control" value="0" min="0" max="20" type="number">
								</div>
							</li>
						</ul>
						<div class="add-to-btn">
							<div class="add-comp">
								<a class="btn hvr-hover" href="#" name="lFnHit"><i class="fas fa-heart"></i> 조회수 ${lfnotice.LFnHit }</a>
							</div>
							<div class="share-bar">
								<a class="btn hvr-hover" href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a>
								<a class="btn hvr-hover" href="#"><i class="fab fa-google-plus" aria-hidden="true"></i></a>
								<a class="btn hvr-hover" href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a>
							</div>
						</div>
                    </div>
                    <input type="hidden" id="lFnid" name="lFnid" value="${lfnotice.LFnid}"> 
                    </form>
                </div>
            </div>
			
			<div class="row my-5">
				<div class="card card-outline-secondary my-4">
					<div class="card-header">
						<h2>댓글</h2>
					</div>
					<div class="card-body">
						<div class="media mb-3">
							<div class="mr-2"> 
								<img class="rounded-circle border p-1" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%2264%22%20height%3D%2264%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2064%2064%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_160c142c97c%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_160c142c97c%22%3E%3Crect%20width%3D%2264%22%20height%3D%2264%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2213.5546875%22%20y%3D%2236.5%22%3E64x64%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" alt="Generic placeholder image">
							</div>
							<div class="media-body">
								<p>경찰서에 맡겨 주셔서 감사합니다~ 복 받을거예요~
								</p>
								<small class="text-muted">2021.11.03</small>
							</div>
						</div>
						<hr>
						<div class="media mb-3">
							<div class="mr-2"> 
								<img class="rounded-circle border p-1" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%2264%22%20height%3D%2264%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2064%2064%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_160c142c97c%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_160c142c97c%22%3E%3Crect%20width%3D%2264%22%20height%3D%2264%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2213.5546875%22%20y%3D%2236.5%22%3E64x64%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" alt="Generic placeholder image">
							</div>
							<div class="media-body">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.
								</p>
								<small class="text-muted">2021.11.03</small>
							</div>
						</div>
						<hr>
						<div class="media mb-3">
							<div class="mr-2"> 
								<img class="rounded-circle border p-1" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%2264%22%20height%3D%2264%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2064%2064%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_160c142c97c%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_160c142c97c%22%3E%3Crect%20width%3D%2264%22%20height%3D%2264%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2213.5546875%22%20y%3D%2236.5%22%3E64x64%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" alt="Generic placeholder image">
							</div>
							<div class="media-body">
								<p>굳굳굳!!!!!
								</p>
								<small class="text-muted">2021.11.04</small>
							</div>
						</div>
						<hr>
						<a href="#" class="btn hvr-hover">댓글♥</a>
					</div>
				  </div>
			</div>
        </div>
      </div>
    <!-- End Cart -->
    
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