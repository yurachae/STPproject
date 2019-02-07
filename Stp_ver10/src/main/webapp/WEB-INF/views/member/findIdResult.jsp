<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="http://code.jquery.com/jquery-Latest.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-Latest.js"></script>

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

<style type="text/css">
	th{
		width: 120px;
		text-align: left;
		font-size: 15px;
		padding: 10px 0;
	}
	
	td{
		width: 230px;
		text-align: left;
		padding: 10px 0;
	}
</style>

<title>Simple is the best</title>
</head>
<body>
   <div id="findResult" style="width:350px; margin:auto;">
      <hr>
      	회원님의 아이디는 <br><b>${findMember.email}</b> 입니다.<br><br>
      <a href="../"><input type="button" class="btn btn-primary btn-block" style="width: 100px; margin:auto; display:inline-block !important" value="로그인"></a>
      <a href="findPasswordAction"><input type="button" class="btn btn-primary btn-block" style="width: 130px; margin:auto; display:inline-block !important" value="비밀번호 찾기"></a>
   </div>
</body>
</html>