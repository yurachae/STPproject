<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap core CSS-->
<link href="../resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template-->
<link href="../resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">

<!-- Custom styles for this template-->
<link href="../resources/css/sb-admin.css" rel="stylesheet">

<!-- Bootstrap core JavaScript-->
<script src="../resources/vendor/jquery/jquery.min.js"></script>
<script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Core plugin JavaScript-->
<script src="../resources/vendor/jquery-easing/jquery.easing.min.js"></script>

<script>
	function joinUserAction() {
		location.href = "joinUser";
	}
	function joinOwnerAction() {
		location.href = "joinOwner";
	}
</script>
<title>Simple is the best</title>
</head>
<body class="bg-dark">
	<div class="container">
		<div class="card card-login mx-auto mt-5">
			<div class="card-header">회원가입</div>
			<div class="card-body">회원가입 유형을 선택해주세요.<br><br>
					<input type="button" class="btn btn-primary btn-block"
						onclick="joinUserAction()" value="일반 회원 가입">
					<input type="button" class="btn btn-primary btn-block"
						onclick="joinOwnerAction()" value="기업 회원 가입">
				<div class="text-center">
					<a class="d-block small mt-3" href="../">로그인</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>