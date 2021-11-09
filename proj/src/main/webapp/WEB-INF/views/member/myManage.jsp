<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700"
	rel="stylesheet">
<!-- Required Fremwork -->
<link rel="stylesheet" type="text/css"
	href="assets/css/bootstrap/css/bootstrap.min.css">
<!-- themify-icons line icon -->
<link rel="stylesheet" type="text/css"
	href="assets/icon/themify-icons/themify-icons.css">
<!-- ico font -->
<link rel="stylesheet" type="text/css"
	href="assets/icon/icofont/css/icofont.css">
<!-- Font Awesome -->
<link rel="stylesheet" type="text/css"
	href="assets/icon/font-awesome/css/font-awesome.min.css">
<!-- waves.css -->
<link rel="stylesheet" href="assets/pages/waves/css/waves.min.css"
	type="text/css" media="all">
<!-- Style.css -->
<link rel="stylesheet" type="text/css" href="assets/css/nstyle.css">
<link rel="stylesheet" type="text/css"
	href="assets/css/jquery.mCustomScrollbar.css">
<title></title>

</head>
<body>
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
	<div>
		<!-- Row start -->
		<div class="row">
			<!-- Multiple Open Accordion start -->
			<div class="col-lg-3"></div>
			<div class="col-lg-6">
				<div class="card">
					<div class="card-header">
						<h5 class="card-header-text">내 정보</h5>
					</div>
					<div class="card-block accordion-block">
						<div id="accordion" role="tablist" aria-multiselectable="true">
							<div class="accordion-panel">
								<div class="accordion-heading" role="tab" id="headingOne">
									<h3 class="card-title accordion-title">
										<a class="accordion-msg waves-effect waves-dark scale_active"
											data-toggle="collapse" data-parent="#accordion"
											href="#collapseOne" aria-expanded="true"
											aria-controls="collapseOne">아이디 </a>
									</h3>
								</div>
								<div id="collapseOne" class="panel-collapse collapse show"
									role="tabpanel" aria-labelledby="headingOne">
									<div class="accordion-content accordion-desc">
										<p>${member.id }</p>
									</div>
								</div>
							</div>
							<div class="accordion-panel">
								<div class="accordion-heading" role="tab" id="headingTwo">
									<h3 class="card-title accordion-title">
									
										<a class="accordion-msg waves-effect waves-dark scale_active"
											data-toggle="collapse" data-parent="#accordion"
											href="#collapseTwo" aria-expanded="false"
											aria-controls="collapseTwo"> 비밀번호 </a>
									</h3>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse show"
									role="tabpanel" aria-labelledby="headingTwo">
									<div class="accordion-content accordion-desc">
										<p>${member.password }</p>
									</div>
								</div>
							</div>
							<div class="accordion-panel">
								<div class=" accordion-heading" role="tab" id="headingThree">
									<h3 class="card-title accordion-title">
										<a class="accordion-msg waves-effect waves-dark scale_active"
											data-toggle="collapse" data-parent="#accordion"
											href="#collapseThree" aria-expanded="false"
											aria-controls="collapseThree"> 이름 </a>
									</h3>
								</div>
								<div id="collapseThree" class="panel-collapse collapse show"
									role="tabpanel" aria-labelledby="headingThree">
									<div class="accordion-content accordion-desc">
										<p>${member.name }</p>
									</div>
								</div>
							</div>
							<div class="accordion-panel">
								<div class=" accordion-heading" role="tab" id="headingFour">
									<h3 class="card-title accordion-title">
										<a class="accordion-msg waves-effect waves-dark scale_active"
											data-toggle="collapse" data-parent="#accordion"
											href="#collapsefour" aria-expanded="false"
											aria-controls="collapsefour"> 전화번호</a>
									</h3>
								</div>
								<div id="collapseFour" class="panel-collapse collapse show"
									role="tabpanel" aria-labelledby="headingfour">
									<div class="accordion-content accordion-desc">
										<p>${member.tel }</p>
									</div>
								</div>
							</div>
							<div class="accordion-panel">
								<div class=" accordion-heading" role="tab" id="headingFive">
									<h3 class="card-title accordion-title">
										<a class="accordion-msg waves-effect waves-dark scale_active"
											data-toggle="collapse" data-parent="#accordion"
											href="#collapsefive" aria-expanded="false"
											aria-controls="collapsefive"> 주소 </a>
									</h3>
								</div>
								<div id="collapseFive" class="panel-collapse collapse show"
									role="tabpanel" aria-labelledby="headingfive">
									<div class="accordion-content accordion-desc">
										<p>${member.address }</p>
									</div>
								</div>
							</div>
							<div class="accordion-panel">
								<div class=" accordion-heading" role="tab" id="headingSix">
									<h3 class="card-title accordion-title">
										<a class="accordion-msg waves-effect waves-dark scale_active"
											data-toggle="collapse" data-parent="#accordion"
											href="#collapsesix" aria-expanded="false"
											aria-controls="collapsefive"> 프로필사진 </a>
									</h3>
								</div>
								<div id="collapseSix" class="panel-collapse collapse show"
									role="tabpanel" aria-labelledby="headingsix">
									<div class="accordion-content accordion-desc">
									<c:if test="${member.picture eq null}">
										<img src="images/flower.jpg" loading="lazy" class="img-fluid" width="250px"  alt="picture">
									</c:if>
									<c:if test="${not empty member.picture }">
										<img src="images/${member.picture}" loading="lazy" class="img-fluid" width="250px"  alt="picture">
									</c:if>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="accordion-panel" align="right"
						style="margin: 0 20px 20px;"><a id="showMe" style="display:none" onclick="showMe()" class="card-header-text">모두 보기</a>
						<a id="hideMe" onclick="hideMe()" class="card-header-text">모두 숨기기</a>
						&nbsp;&nbsp;&nbsp; <a href="myImfoAmend.do" class="card-header-text">정보수정</a>
					</div>
				</div>


			</div>

	<div class="col-lg-3">
				
				
				</div>
				
			<!-- Row start -->
			<div class="row">
				<!-- Color Open Accordion start -->
				<div class="col-lg-12">
					<div class="card">
						<div class="card-header">
							<h5 class="card-header-text">나에게 온 알림</h5>
						</div>
						<div class="card-block accordion-block color-accordion-block">
							<div class="color-accordion" id="color-accordion">
								<a class="accordion-msg b-none waves-effect waves-light">내가 쓴 글 보기</a>
								<div class="accordion-desc">
									<p>Lorem Ipsum is simply dummy text of the printing and
										typesetting industry. Lorem Ipsum has been the industry's
										standard dummy text ever since the 1500s, when an unknown
										printer took a galley of type and scrambled it to make a type
										specimen book. It has survived not only five centuries, but
										also the leap into electronic typesetting, remaining
										essentially unchanged. It was popularised in the 1960s with
										the release of Letraset sheets containing Lorem Ipsum
										passages, and more .</p>
								</div>
								<a
									class="accordion-msg bg-dark-primary b-none waves-effect waves-light"></a>
								<div class="accordion-desc">
									<p>Lorem Ipsum is simply dummy text of the printing and
										typesetting industry. Lorem Ipsum has been the industry's
										standard dummy text ever since the 1500s, when an unknown
										printer took a galley of type and scrambled it to make a type
										specimen book. It has survived not only five centuries, but
										also the leap into electronic typesetting, remaining
										essentially unchanged. It was popularised in the 1960s with
										the release of Letraset sheets containing Lorem Ipsum
										passages, and more .</p>
								</div>
								<a
									class="accordion-msg bg-darkest-primary b-none waves-effect waves-light">Lorem
									Message 3</a>
								<div class="accordion-desc">
									<p>Lorem Ipsum is simply dummy text of the printing and
										typesetting industry. Lorem Ipsum has been the industry's
										standard dummy text ever since the 1500s, when an unknown
										printer took a galley of type and scrambled it to make a type
										specimen book. It has survived not only five centuries, but
										also the leap into electronic typesetting, remaining
										essentially unchanged. It was popularised in the 1960s with
										the release of Letraset sheets containing Lorem Ipsum
										passages, and more .</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Color Open Accordion ends -->
			</div>
			<!-- Row end -->
		</div>
	</div>
	<script type="text/javascript">
	function showMe(){
		$('#showMe').hide();
		$('#hideMe').show();
		$('#collapseSix').attr('class','panel-collapse collapse show');
		$('#collapseFive').attr('class','panel-collapse collapse show');
		$('#collapseFour').attr('class','panel-collapse collapse show');
		$('#collapseThree').attr('class','panel-collapse collapse show');
		$('#collapseTwo').attr('class','panel-collapse collapse show');
		$('#collapseOne').attr('class','panel-collapse collapse show');
		
	}
	
	function hideMe(){
		$('#showMe').show();
		$('#hideMe').hide();
		$('#collapseSix').attr('class','panel-collapse collapse');
		$('#collapseFive').attr('class','panel-collapse collapse');
		$('#collapseFour').attr('class','panel-collapse collapse');
		$('#collapseThree').attr('class','panel-collapse collapse');
		$('#collapseTwo').attr('class','panel-collapse collapse');
		$('#collapseOne').attr('class','panel-collapse collapse');
	}
	
	
	
	</script>
	
	
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

	<!-- Accordion js -->
	<script type="text/javascript"
		src="assets/pages/accordion/accordion.js"></script>
	<!-- Custom js -->
	<script src="assets/js/pcoded.min.js"></script>
	<script src="assets/js/vertical/vertical-layout.min.js"></script>
	<script src="assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="assets/js/script.js"></script>
</body>
</html>