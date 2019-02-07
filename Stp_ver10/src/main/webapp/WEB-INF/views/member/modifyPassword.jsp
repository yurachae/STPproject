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
	
	
	function modifyPasswordButton() {
		var password = document.getElementById('password');
		var passwordConfirm = document.getElementById('checkpassword');
		
		//form 이름이 loginAction인 form의 action값에 해당하는 controller로 이동.
		if(password.value == passwordConfirm.value){
			modifyPasswordForm.submit();
		} else {
			alert('비밀번호가 일치하지 않습니다.')
		}
		
	}
</script>

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
<title>Simple is the Best</title>
</head>
<body class="bg-dark">
	<div class="container">
		<div class="card card-login mx-auto mt-5" style="text-align: center;">
			<div class="card-header" style="text-align:center">비밀번호 변경</div>
			<div class="card-body">
				<form name="modifyPasswordForm" id="modifyPasswordForm" action="modifyPasswordAction" method="post">
					<input type="hidden" id="email" name="email" value="${user.email}">
					<input type="hidden" id="memberType" name="memberType" value="${user.memberType}">
					
					<table style="margin: auto">
         				<tr>
            				<th>새 비밀번호</th>
            				<td><input type="password" class="form-control" name="password" id="password"></td>
         				</tr>
         				<tr>
            				<th>새 비밀번호 확인</th>
            				<td><input type="password" class="form-control" name="checkpassword" id="checkpassword"></td>
            			</tr>
         				<tr>
         					<td colspan="2" style="text-align: center">
         						<input type="button" class="btn btn-primary btn-block" style="width: 150px; margin:auto;" 
         							onclick="modifyPasswordButton()" value="비밀번호 변경"></td>
         				</tr>
      				</table>
				
				</form>
				
			</div>
		</div>
	</div>
</body>
</html>
