<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.divTb {
	background-color: #fff !important;
	border: 1 px solid #e0e0e0 !important;
	border-radius: 0.5 rem !important;
}

.sectionTb {
	padding: 1.5 rem !important;
	width: 100% !important;
	text-align: center !important;
}
</style>
<!-- ** Basic Page Needs ** -->

<!-- ** Mobile Specific Metas ** -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Medical HTML Template">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
<meta name="author" content="Themefisher">
<meta name="generator" content="Themefisher Medical HTML Template v1.0">

<!-- ** Plugins Needed for the Project ** -->
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
<!-- jquery-ui -->
<link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.css">
<!-- timePicker -->
<link rel="stylesheet" href="plugins/timePicker/timePicker.css">

<!-- Stylesheets -->
<link href="css/style.css" rel="stylesheet">

<!--Favicon-->
<link rel="icon" href="images/favicon.png" type="image/x-icon">

<script type="text/javascript">
	function fn_paging(pageNum) {
		location.href = "totalApi.do?&pageNum=" + pageNum;
		console.log(location.href);
	}
	
	function CallTotalApi(n) {
		frm.rnum.value = n;
		frm.submit();
	}
</script>
</head>
<body>
	<!-- Contact Section -->
	<section class="blog-section style-four section">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-1"></div>
				<div class="col-xl-6">
					<div class="left-side">
						<div class="divTb">
							<section class="sectionTb">
								<table class="table table-hover text-nowrap">
									<thead>
										<tr>
											<th scope="col">순번</th>
											<th scope="col">분류</th>
											<th scope="col">물건명</th>
											<th scope="col">습득날짜</th>
											<th scope="col">습득장소</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${list }" var="list">
											<tr onclick="CallTotalApi(${list.rNum })">
												<td>${list.rNum }</td>
												<td>${list.prdtClNm }</td>
												<td>${list.fdPrdtNm }</td>
												<td>${list.fdYmd }</td>
												<td>${list.depPlace }</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</section>
						<div>
							<!-- 숨겨져 있는 폼 -->
							<form id="frm" action="totalApiDetail.do" method="post">
								<input type="hidden" id="rnum" name="rnum">
							</form>
						</div>
						</div>
						<br>
						<!-- 페이징 부분 -->

						<div class="styled-pagination" align="center">
							<ul>
								<c:if test="${pagination.curPage ne 1}">
									<li><a class="prev"
										onClick="fn_paging('${pagination.prevPage }')"><span
											class="fas fa-angle-left" aria-hidden="true"></span></a></li>
								</c:if>

								<c:forEach var="pageNum" begin="${pagination.startPage }"
									end="${pagination.endPage }">
									<c:choose>
										<c:when test="${pageNum eq  pagination.curPage}">
											<li><a class="active" onClick="fn_paging('${pageNum }')">
													${pageNum } </a></li>
										</c:when>
										<c:otherwise>
											<li><a onClick="fn_paging('${pageNum }')">${pageNum }</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>

								<c:if
									test="${pagination.curPage ne pagination.pageCnt && pagination.pageCnt > 0}">
									<li><a class="next"><span class="fas fa-angle-right"
											onClick="fn_paging('${pagination.nextPage }')"
											aria-hidden="true"></span></a></li>
								</c:if>
							</ul>
						</div>
					</div>
				</div>

				<div class="col-xl-1"></div>

				<div class="col-xl-3">
					<div class="right-side">
						<div class="text-title">
							<h6>키워드 검색</h6>
						</div>
						<div class="search-box">
							<form method="post" action="totalApiSearch.do">
								<div class="input-group">
									<input class="form-control" type="search" name="searchBox"
										placeholder="Enter to Search" autocomplete="off">
								</div>
							</form>
						</div>
						<div class="tag-list">
							<div class="text-title">
								<h6>태그</h6>
							</div>
							<a href="totalApi.do?&pc=PRA000">가방</a> <a
								href="totalApi.do?&pc=PRH000">지갑</a> <a
								href="totalApi.do?&pc=PRJ000">휴대폰</a> <a
								href="totalApi.do?&pc=PRN000">증명서</a> <a
								href="totalApi.do?&pc=PRK000">옷</a> <a
								href="totalApi.do?&pc=PRO000">귀금속</a> <a
								href="totalApi.do?&pc=PRQ000">쇼핑백</a> <a
								href="totalApi.do?&pc=PRP000">카드</a>
						</div>
					</div>
				</div>

				<div class="col-xl-1"></div>

			</div>
		</div>
	</section>
	<!-- End Contact Section -->

	<!-- jquery -->
	<script src="plugins/jquery.min.js"></script>
	<!-- bootstrap -->
	<script src="plugins/bootstrap/bootstrap.min.js"></script>
	<!-- Slick Slider -->
	<script src="plugins/slick/slick.min.js"></script>
	<script src="plugins/slick/slick-animation.min.js"></script>
	<!-- FancyBox -->
	<script src="plugins/fancybox/jquery.fancybox.min.js" defer></script>
	<!-- Google Map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU"
		defer></script>
	<script src="plugins/google-map/gmap.js" defer></script>

	<!-- jquery-ui -->
	<script src="plugins/jquery-ui/jquery-ui.js" defer></script>
	<!-- timePicker -->
	<script src="plugins/timePicker/timePicker.js" defer></script>

	<!-- script js -->
	<script src="js/script.js"></script>
</body>
</html>