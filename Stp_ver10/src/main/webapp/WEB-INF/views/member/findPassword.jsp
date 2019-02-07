<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
   function findPasswordActionButton() {
      findPasswordForm.submit();
   }
</script>
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
<body class="bg-dark">
	<div class="container">
		<div class="card card-login mx-auto mt-5" style="text-align: center;">
			<div class="card-header" style="text-align:center">비밀번호 찾기</div>
			<div class="card-body">
				<form name="findPasswordForm" id="findPasswordForm" action="findPasswordAction" method="post">
					<table style="margin: auto">
						<tr>
            				<td colspan="2" style="text-align: center"><input type="radio" name="memberType" id="memberType" value="0" checked="checked">일반 &nbsp;
               					<input type="radio" name="memberType" id="memberType" value="1">기업</td>
         				</tr>
         				<tr>
         					<th>아이디</th>
         					<td><input type="email" class="form-control" name="email" id="email" placeholder="email" style="width:222px"></td>
         				<tr>
            				<th>이름</th>
            				<td><input type="text" class="form-control" name="name" id="name" style="width:222px"></td>
            				
         				</tr>
         				<tr>
            				<th>휴대전화번호</th>
            				<td><input type="text" class="form-control" name="phone_front" id="phone_front" placeholder="010" style="width:64px; display:inline-block !important"> -
        						<input type="text" class="form-control" name="phone_mid" id="phone_mid" placeholder="1234" style="width:64px; display:inline-block !important"> -
         						<input type="text" class="form-control" name="phone_end" id="phone_end" placeholder="5678" style="width:64px; display:inline-block !important"></td>
         				</tr>
         				<tr>
         					<td colspan="2" style="text-align: center"><input type="button" class="btn btn-primary btn-block"  
         					style="width: 150px; margin:auto;" value="비밀번호 찾기" onclick="findPasswordActionButton()"></td>
         				</tr>
      				</table>
				</form>
				<div class="text-center">
					<a class="d-block small mt-3" href="../">로그인</a>
				</div>
			</div>
		</div>
	</div>
			
</body>
</html>