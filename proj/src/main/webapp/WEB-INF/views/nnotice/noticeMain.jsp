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

<!-- waves.css -->
<link rel="stylesheet" href="assets/pages/waves/css/waves.min.css"
	type="text/css" media="all">
<!-- Required Fremwork -->
<link rel="stylesheet" type="text/css"
	href="assets/css/bootstrap/css/bootstrap.min.css">
<!-- waves.css -->
<link rel="stylesheet" href="assets/pages/waves/css/waves.min.css"
	type="text/css" media="all">
<!-- themify-icons line icon -->
<link rel="stylesheet" type="text/css"
	href="assets/icon/themify-icons/themify-icons.css">
<!-- Font Awesome -->
<link rel="stylesheet" type="text/css"
	href="assets/icon/font-awesome/css/font-awesome.min.css">
<!-- ico font -->
<link rel="stylesheet" type="text/css"
	href="assets/icon/icofont/css/icofont.css">
<!-- Style.css -->
<link rel="stylesheet" type="text/css" href="assets/css/nstyle.css">
<link rel="stylesheet" type="text/css"
	href="assets/css/jquery.mCustomScrollbar.css">
	<link href="vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<script type="text/javascript">

	$(document).ready(function() {
	
		
		$('#table').DataTable({
			"info": false,
			ajax : {
				url : "ajaxNoticeList.do",
				dataSrc : '' /* "data"  json type  여긴 변수명을 써주면 된다.*/

			},
			
			columns : [
				{data : 'nnid'},
				{data : 'name'},
				{data : 'ntitle'},
				{data : 'ndate'},
				{data : 'nhit'} // 테이블 칼럼명 vo와 일치해야한다
				],
				 rowCallback: function(row, data,index) {
					 if(data.nnid%10==1){
				       $(row).addClass('table-active');}
					 if(data.nnid%10==3){
					       $(row).addClass('table-success');}
					 if(data.nnid%10==5){
					       $(row).addClass('table-warning');}
					 if(data.nnid%10==7){
					       $(row).addClass('table-danger');}
					 if(data.nnid%10==9){
					       $(row).addClass('table-info');}

				   }


		});
		
		 var table = $('#table').DataTable();	
		$('#table tbody').on('click', 'tr', function () {
		    var data = table.row( this ).data();
		    ReadNotice(data.nnid);
		} );
	});
	
	function ReadNotice(n){
		frm.nnid.value=n;
		frm.submit();
		
	}

	
</script>
</head>
<body>
	<div class="pcoded-inner-content">
		<!-- Main-body start -->
		<div class="main-body">
			<div class="page-wrapper">
				<!-- Page-body start -->
				<div class="page-body">
					<div class="card">
						<div class="card-header">
							<h5>공지사항</h5>
							<span>전체적인 공짓거리가 있을때 올라오는 글들
							</span>
							<div class="card-header-right">
								<ul class="list-unstyled card-option">
									<li><i class="fa fa fa-wrench open-card-option"></i></li>
									<li><i class="fa fa-window-maximize full-card"></i></li>
									<li><i class="fa fa-minus minimize-card"></i></li>
									<li><i class="fa fa-refresh reload-card"></i></li>
									<li><i class="fa fa-trash close-card"></i></li>
								</ul>
							</div>
						</div>
						<div class="card-block table-border-style">
							<div class="table-responsive">
								<table class="table" id="table">
									<thead>
										<tr>
											<th>글번호</th>
											<th>작성자</th>
											<th>제목</th>
											<th>작성일자</th>
											<th>조회수</th>
										</tr>
									</thead>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<form id="frm" name="frm" method="post" action="readNotice.do">
		<input type="hidden" id="nnid" name="nnid">
		</form>
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
	<script src="vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>
	<script src="js/demo/datatables-demo.js"></script>

</body>
</html>