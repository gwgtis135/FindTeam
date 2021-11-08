<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 입력폼</title>

<!-- ** Mobile Specific Metas ** -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Medical HTML Template">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
  <meta name="author" content="Themefisher">
  <meta name="generator" content="Themefisher Medical HTML Template v1.0">
  
  <!-- ** Plugins Needed for the Project ** -->
  <!-- bootstrap -->
  <link rel="stylesheet" href="form/plugins/bootstrap/bootstrap.min.css">
  <!-- Slick Carousel -->
  <link rel="stylesheet" href="form/plugins/slick/slick.css">
  <link rel="stylesheet" href="form/plugins/slick/slick-theme.css">
  <!-- FancyBox -->
  <link rel="stylesheet" href="form/plugins/fancybox/jquery.fancybox.min.css">
  <!-- fontawesome -->
  <link rel="stylesheet" href="form/plugins/fontawesome/css/all.min.css">
  <!-- animate.css -->
  <link rel="stylesheet" href="form/plugins/animation/animate.min.css">
  <!-- jquery-ui -->
  <link rel="stylesheet" href="form/plugins/jquery-ui/jquery-ui.css">
  <!-- timePicker -->
  <link rel="stylesheet" href="form/plugins/timePicker/timePicker.css">
  
  <!-- Stylesheets -->
  <link href="css/style.css" rel="stylesheet">
  
  <!--Favicon-->
  <link rel="icon" href="form/images/favicon.png" type="image/x-icon">

</head>
<body>
	
	<!-- Section -->
<section class="section style-three pb-0">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 order-1 order-lg-0">
        <div class="contact-area style-two pl-0 pr-0 pr-lg-4">
          <div class="section-title">
            <h3>분실물 습득물<span>작성란</span></h3>
          </div>
          
           <form id="frm" name="contact_form" class="default-form contact-form" action="LfNoticeInsert.do" method="post">
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <input class="form-control" type="text" name="lfntitle" placeholder="제목" required="" ><!--  -->
                </div>
                <div class="form-group">
                  <input class="form-control" type="text" name="lfnobj" placeholder="물건이름" required="">
                </div>
                <div class="form-group">
                  <select class="form-control" name="subject"  >
                    <option>분실물</option>
                    <option>습득물</option>
                  </select>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <input class="form-control" type="text" name="lfnaddress" placeholder="주소" required="">
                </div>
                <div class="form-group">
                  <input class="" type="Date" name="lfnDate" placeholder="날짜" required="" id="" autocomplete="off">
                 <!--  <i class="fa fa-calendar" aria-hidden="true"></i>  -->
                </div>
                <div class="form-group">
                  <select class="form-control" name="subject">
                    <option>전자기기</option>
                    <option>스마트폰</option>
                    <option>의류</option>
                    <option>지갑</option>
                    <option>기타</option>
                  </select>
                </div>
              </div>
              <div class="col-md-12">
                <div class="form-group">
                  <textarea class="form-control" name="form_message" placeholder="Your Message" required=""></textarea>
                </div>
                <div class="form-group text-center">
                  <button type="submit" class="btn-style-one">등록하기</button>
                 
				<input type="reset" value="취 소">
				<input type="button" value="목 록" onclick="location.href='lostNotice.do'">
                </div>
              </div>
            </div>
         </form>
        </div>
      </div>
      
      <div class="col-lg-6 mb-4 mb-lg-0 order-0 order-lg-1">
        <div class="appointment-image-holder ml-0 ml-lg-4">
          <figure>
            <img id="lFnImg" name="lFnImg" class="w-100" src="form/images/background/zflip.jpg" alt="zflip"> <!-- 이미지 사진 들어가는 곳. -->
            
              <form method="post" enctype="multipart/form-data"> <!-- 이미지 사진 업로드 할 수 있게 -->
                 <div class="button" align="center">
                  <label for="chooseFile" >
                     👉 CLICK HERE! 👈
                     </label>
                       </div>
                        <input style="display:none" type="file" id="chooseFile" name="chooseFile" accept="image/*" onchange="loadFile(this)">
                 </form>
          </figure>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- End Section -->
	
	<!--Scroll to top-->
<div class="scroll-to-top scroll-to-target" data-target=".header-top">
  <span class="icon fa fa-angle-up"></span>
</div>


<!-- jquery -->
<script src="form/plugins/jquery.min.js"></script>
<!-- bootstrap -->
<script src="form/plugins/bootstrap/bootstrap.min.js"></script>
<!-- Slick Slider -->
<script src="form/plugins/slick/slick.min.js"></script>
<script src="form/plugins/slick/slick-animation.min.js"></script>
<!-- FancyBox -->
<script src="form/plugins/fancybox/jquery.fancybox.min.js" defer></script>
<!-- Google Map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU" defer></script>
<script src="form/plugins/google-map/gmap.js" defer></script>

<!-- jquery-ui -->
<script src="form/plugins/jquery-ui/jquery-ui.js" defer></script>
<!-- timePicker -->
<script src="form/plugins/timePicker/timePicker.js" defer></script>

<!-- script js -->
<script src="form/js/script.js"></script>

</body>
</html>