<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link rel="shortcut icon" href="lnf/images/favicon.ico"
	type="lnf/image/x-icon">
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

<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=l22gbwb7af&submodules=geocoder"></script>
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=l22gbwb7af&submodules=geocoder"></script>

</head>
<body>


	<!-- Start Shop Detail  -->
	<div class="shop-detail-box-main">
		<div class="container">
			<div class="row">
				<div class="col-xl-5 col-lg-5 col-md-6">
					<div id="carousel-example-1"
						class="single-product-slider carousel slide">
						<div class="carousel-inner">

							<div class="carousel-item active">
								<img class="d-block w-100" src="${lfnotice.LFnImg}">
							</div>
							<!-- 이 자리에 선택한 사진 넝어오게 -->
						</div>
					</div>
				</div>
				<div class="col-xl-7 col-lg-7 col-md-6">

					<form id="frm" action="lostNoticeSelect.do" method="post">
						<div class="single-product-details">
							<h2>${lfnotice.LFnTitle}</h2>
							<h5>
								<del></del>
							</h5>
							<p class="available-stock" name="lFnDate">
								<span> 습득날짜 : ${lfnotice.LFnDate } <a href="#"> </a></span>
							</p>
							<p></p>
							<h4>습득물 내용:</h4>
							<p name="lFncontent">${lfnotice.LFncontent }</p>
							<div class="card">
								<div class="card-header">
									<h5>회사위치</h5>

								</div>
								<div class="card-block">
									<div id="maps" style="width: 100%; height: 400px;"></div>
								</div>


							</div>

						</div>
						<input type="hidden" id="lFnid" name="lFnid"
							value="${lfnotice.LFnid}">
					</form>
				</div>
			</div>

			<div class="row my-5">
				<div class="card card-outline-secondary my-4">
					<div class="card-header">
						<h2>댓글</h2>
					</div>
					<div class="card-body">

						<c:forEach items="${comments}" var="comment">
							<div class="row">
								<c:if test="${comment.cparent eq '0'}">
									<div class="media mb-3 col-md-10"
										onclick="underComment(${comment.cnid})">
										<div class="mr-2">
											<img class="rounded-circle border p-1"
												src="images/${comment.picture}"
												style="width: 70px; height: 70px"
												alt="Generic placeholder image">

										</div>
										<div class="media-body">
											<p id="mainComment${comment.cnid}">${comment.ccontent }</p>
											<input style="width: 550px; display: none" type="text"
												id="underComment${comment.cnid}"
												name="underComment${comment.cnid}" placeholder="댓글을 작성하세요"><a
												style="display: none" onclick="btnUn(${comment.cnid})"
												id="btnUnReply${comment.cnid}">댓글♥</a>
											<input style="width: 550px; display: none" type="text"
												id="underUdComment${comment.cnid}"
												name="underUdComment${comment.cnid}" value="${comment.ccontent }"> <a
												style="display: none" onclick="btnUdUn(${comment.cnid})"
												id="btnUdUnReply${comment.cnid}">수정♥</a>
												
												
												
												
												 <br> <small
												class="text-muted">${comment.cid}--${comment.cdate }</small>
										</div>
									</div>
									<hr>
									
										<div class="col-md-2"><c:if test="${id eq comment.cid }">
											<a id="updateComment${comment.cnid}"
												onclick="updateComment(${comment.cnid})"
												style="font-size: 10px;">수정</a>
												</c:if>
												<br> 
													<c:if test="${author eq 'ADMIN' ||id eq comment.cid }">
												<a
												id="deleteComment${comment.cnid}"
												onclick="deleteComment(${comment.cnid})"
												style="font-size: 10px;">삭제</a></c:if>
										</div>

									

								</c:if>

							</div>

							<c:forEach items="${comments}" var="uncomment">
								<c:if test="${uncomment.cparent eq comment.cnid}">

									<div class="row">

										<div class="media mb-3 col-md-2"></div>
										<hr>
										<div class="media mb-3 col-md-8">
											<div class="mr-2">
												<img class="rounded-circle border p-1"
													src="images/${uncomment.picture}"
													style="width: 70px; height: 70px"
													alt="Generic placeholder image">

											</div>
											<div class="media-body">
												<p id="mainComment${uncomment.cnid}">${uncomment.ccontent }</p>
												<input style="width: 400px; display: none" type="text"
												id="underUdComment${uncomment.cnid}"
												name="underUdComment${uncomment.cnid}" value="${uncomment.ccontent }"> <a
												style="display: none" onclick="btnUdUn(${uncomment.cnid})"
												id="btnUdUnReply${uncomment.cnid}">수정♥</a>
												<br> <small class="text-muted">${uncomment.cid}--${uncomment.cdate }</small>
											</div>
										</div>
										<hr>
										
											<div class="col-md-2"><c:if test="${id eq uncomment.cid }">
												<a id="updateComment${uncomment.cnid}"
													onclick="updateComment(${uncomment.cnid})"
													style="font-size: 10px;">수정</a></c:if><br>
													<c:if test="${author eq 'ADMIN' ||id eq uncomment.cid }">
													 <a
													id="deleteComment${uncomment.cnid}"
													onclick="deleteComment(${uncomment.cnid})"
													style="font-size: 10px;">삭제</a>	</c:if>
											</div>

									


									</div>

								</c:if>
							</c:forEach>


						</c:forEach>

						<input style="width: 800px" type="text" id="comment"
							name="comment" placeholder="댓글을 작성하세요"><a id="btnReply">댓글♥</a>

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

	<script>
		console.log("${lfnotice.LFnAddress}");
		naver.maps.Service.geocode({
			address : "대구광역시 남구 대명동 1005-1"
		}, function(status, response) {
			if (status !== naver.maps.Service.Status.OK) {
				return alert('Something wrong!');
			}

			var result = response.result, // 검색 결과의 컨테이너
			items = result.items; // 검색 결과의 배열
			console.log(items);

			let x = parseFloat(items[0].point.x);
			let y = parseFloat(items[0].point.y);
			var mapOptions = {
				center : new naver.maps.LatLng(y, x),
				zoom : 19
			};
			var map = new naver.maps.Map('maps', mapOptions);
			var markerOptions = {
				position : new naver.maps.LatLng(y, x),
				map : map

			};

			var marker = new naver.maps.Marker(markerOptions);
		});

		$("#btnReply").click(function() {
			var comment = $("#comment").val(); //댓글 내용
			var bno = "${lfnotice.LFnid}"; //게시물 번호
			var param = {
				"ccontent" : comment,
				"cboard" : bno,
				"cparent" : 0
			};
			$.ajax({
				type : "post", //데이터를 보낼 방식
				url : "commentInsert.do", //데이터를 보낼 url
				data : param, //보낼 데이터

				success : function() { //데이터를 보내는것이 성공했을시 출력되는 메시지
					console.log("댓글이 등록되었습니다.");
					location.reload(); //댓글 목록 출력
				}
			});
		});

		function underComment(n) {
			$('#underComment'+n).show();
			$('#btnUnReply'+n).show();

			
				}
		function btnUn(n) {
			
			var comment = $("#underComment"+n).val(); //댓글 내용
			
			var bno = "${lfnotice.LFnid}";
			
			var param = {
				"ccontent" : comment,
				"cboard" : bno,
				"cparent" : n
			};
			$.ajax({
				type : "post", //데이터를 보낼 방식
				url : "commentInsert.do", //데이터를 보낼 url
				data : param, //보낼 데이터

				success : function() { //데이터를 보내는것이 성공했을시 출력되는 메시지
					console.log("댓글이 등록되었습니다.");
					location.reload(); //댓글 목록 출력
				}
			});
		};
		function btnUdUn(n){
			
			var comment = $("#underUdComment"+n).val(); //댓글 내용
			
			var bno = "${lfnotice.LFnid}";
			
			var param = {
				"ccontent" : comment,
				"cnid" : n
			};
			$.ajax({
				type : "post", //데이터를 보낼 방식
				url : "commentUpdate.do", //데이터를 보낼 url
				data : param, //보낼 데이터

				success : function() { //데이터를 보내는것이 성공했을시 출력되는 메시지
				
					location.reload(); //댓글 목록 출력
				}
			});
			
			
		}
		function updateComment(n){
			$('#mainComment'+n).remove();
			$('#underComment'+n).remove();
			$('#btnUnReply'+n).remove();
			$('#underUdComment'+n).show();
			$('#btnUdUnReply'+n).show();	
		}
		function deleteComment(n){

			var param = {
					"cnid" : n
				};
			
			
			$.ajax({
				type : "post", //데이터를 보낼 방식
				url : "commentDelete.do", //데이터를 보낼 url
				data : param, //보낼 데이터

				success : function() { //데이터를 보내는것이 성공했을시 출력되는 메시지
					location.reload(); //댓글 목록 출력
				}
			});
			}
		
	</script>
</body>
</html>