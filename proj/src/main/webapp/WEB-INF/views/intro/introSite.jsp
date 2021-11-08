<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700"
	rel="stylesheet">
<!-- Required Fremwork -->
<link rel="stylesheet" type="text/css"
	href="assets/css/bootstrap/css/bootstrap.min.css">
<!-- waves.css -->
<link rel="stylesheet" href="assets/pages/waves/css/waves.min.css"
	type="text/css" media="all">
<!-- themify-icons line icon -->
<link rel="stylesheet" type="text/css"
	href="assets/icon/themify-icons/themify-icons.css">
<!-- ico font -->
<link rel="stylesheet" type="text/css"
	href="assets/icon/icofont/css/icofont.css">
<!-- Font Awesome -->
<link rel="stylesheet" type="text/css"
	href="assets/icon/font-awesome/css/font-awesome.min.css">
<!-- Style.css -->
<link rel="stylesheet" type="text/css" href="assets/css/nstyle.css">
<link rel="stylesheet" type="text/css"
	href="assets/css/jquery.mCustomScrollbar.css">
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=l22gbwb7af"></script>
<script type="text/javascript">

function searchMap(){
	window.open("https://map.naver.com/v5/directions/-/14314938.371113177,4282615.501489677,%EC%98%88%EB%8B%B4%EC%A7%81%EC%97%85%EC%A0%84%EB%AC%B8%ED%95%99%EA%B5%90,13298749,PLACE_POI/-/transit?c=14314558.2929758,4282192.2569116,16,0,0,0,dh",'네이버 길찾기','width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes')
};
</script>
</head>
<body>
	<div class="pcoded-inner-content">
		<div class="main-body">
			<div class="page-wrapper">
				<!-- Page body start -->
				<div class="page-body">
					<div class="row">
						<div class="col-lg-12 col-xl-4">
							<div class="card">
								<div class="card-header">
									<h5>오시는 길</h5>

								</div>
								<div class="card-block">
									<span>주소 : 대구광역시 중구 중앙대로 403</span><br> <br> <span>전화
										: 053-111-4567</span> <br> <br> <span>이메일 :
										chazazo@yedam.com</span><br> <br> <span>버스 :
										204,304,349,401,410-1,503,518,650,706,730,909,급행2,북구2</span><br>
									<br> <span>지하철 : 1호선 중앙로 1번출구</span><br>
									<hr>
									<span><a onclick="searchMap()">빠른 길 찾기</a></span>
								</div>
							</div>
						</div>


						<div class="col-lg-12 col-xl-8">
							<!-- Basic map start -->
							<div class="card">
								<div class="card-header">
									<h5>회사위치</h5>

								</div>
								<div class="card-block">
									<div id="maps" style="width: 100%; height: 400px;"></div>
								</div>


							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


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

	<!-- Custom js -->
	<script src="assets/js/pcoded.min.js"></script>
	<script src="assets/js/vertical/vertical-layout.min.js"></script>
	<script src="assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="assets/js/script.js"></script>
<script>
		var mapOptions = {
			center : new naver.maps.LatLng(35.869093153814326,
					128.5932699697308),
			zoom : 17
		};
		var map = new naver.maps.Map('maps', mapOptions);	
		var markerOptions = {
			position : new naver.maps.LatLng(35.869093153814326,
					128.5932699697308),
			map : map

		};

		var marker = new naver.maps.Marker(markerOptions);
	</script>

	
</body>
</html>