<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록 보기</title>
<!-- Custom styles for this page -->
<link href="vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
.btn-primary {
	background-color: #48bdc5;
	border-color: #48bdc5;
	color: #fff;
}

.btn-primary:active:hover {
	border-color: #639d34;
	background-color: #639d34;
	color: #000;
}
</style>
<script type="text/javascript">
function Edit(str) {
	console.log(str);
	 frm.id.value = str;	
	frm.action = "memberUpdate.do";
	frm.submit(); 
}

function Delete(str) {
	alert("삭제하시겠습니까?");
	frm.id.value = str;
	frm.action = "memberDelete.do";
	frm.submit();
}
</script>
</head>
<body>
	<div class="container-fluid">

		<!-- Page Heading -->
		<div class="col-sm-1"></div>
		<h2 class="h3 mb-2 text-gray-800">회원 목록</h2>

		<!-- DataTales Example -->
		<div class="card shadow mb-4">

			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr align="center">
								<th>id</th>
								<th>성 명</th>
								<th>주 소</th>
								<th>전화번호</th>
								<th>권한</th>
								<th>수정/삭제</th>

							</tr>
						</thead>
						<tbody>
							<c:forEach items="${members }" var="member">
								<tr align="center">
									<td>${member.id }</td>
									<td>${member.name }</td>
									<td>${member.address }</td>
									<td>${member.tel }</td>
									<td>${member.author }</td>
									<td><button type="button" class="btn btn-primary btn-sm"
											onclick="Edit('${member.id }')">수정</button>&nbsp;&nbsp;
										<button type="button" class="btn btn-primary btn-sm"
											onclick="Delete('${member.id }')">삭제</button></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<div>
				<form id="frm" action="" method="post">
					<input type="hidden" id="id" name="id" value="">
				</form>
			</div>
		</div>

	</div>

	<!-- Page level plugins -->
	<script src="vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="js/demo/datatables-demo.js"></script>
</body>
</html>