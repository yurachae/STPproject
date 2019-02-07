<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Simple is The Bset - 결과 페이지</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>

<!-- Bootstrap core CSS-->
<link href="../resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template-->
<link href="../resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">

<!-- Custom styles for this template-->
<link href="../resources/css/sb-admin.css" rel="stylesheet">
<script type="text/javascript">
	function closes() {
		//자식장 close, 부모창 gotohome

		var form = document.createElement("form");
		form.setAttribute("charset", "UTF-8");
		form.setAttribute("method", "POST");
		form.setAttribute("action", "../search/close");

		document.body.appendChild(form);

		/* 자동 submit */
		form.submit();
	}
	
</script>
<body class="bg-dark">
	<div class="container">
		<div class="card card-login mx-auto mt-5">
			<div class="card-header">결제 완료 페이지</div>
		
			<div class="form-group">
				<div class="form-label-group">
					<input type="text" class="form-control" readonly="readonly"
						id="point" name="point" value="${point }">
				</div>
			</div>

			<div class="form-group">
				<div class="form-label-group">
					<input type="text" class="form-control" readonly="readonly"
						id="charge" name="charge" value="${charge }"> <label
						for="point">금액 </label>
				</div>
			</div>
			<div class="form-group" align="center">
				<div class="form-label-group">
					<input type="button" class="btn btn-info btn-block"
						onclick="closes()" value="창 닫기"> <br>

				</div>
			</div>
		</div>
	</div>
</body>
</html>