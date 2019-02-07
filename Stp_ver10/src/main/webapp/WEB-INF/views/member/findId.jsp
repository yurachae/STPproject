<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-Latest.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-Latest.js"></script>

<script type="text/javascript">
   function findId(){
      var memberType=$('input[name="memberType"]:checked').val();
      var name=$('#name').val();
      var phone_mid=$('#phone_mid').val();
      var phone_end=$('#phone_end').val();
      console.log("findId 함수 실행 : "+memberType+" / "+name+" / "+phone_mid+" / "+phone_end);
      
      $.ajax({
         type: 'POST',
         url: 'findId',
         data: {memberType: memberType,
            name: name,
            phone_mid: phone_mid,
            phone_end: phone_end},
         success: function(result) {
            $('#findResult').html(result);
         },
         error: function() { // 통신의 실패를 의미
            alert("일치하는 정보가 없습니다. 다시 시도해주세요.");
         }
      });
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
			<div class="card-header" style="text-align:center">아이디 찾기</div>
			<div class="card-body">
				
				<form name="findIdForm" id="findIdForm" action="findIdAction" method="post">
    				<table style="margin: auto">
						<tr>
            				<td colspan="2" style="text-align: center"><input type="radio" name="memberType" id="memberType" value="0" checked="checked">일반 &nbsp;
               					<input type="radio" name="memberType" id="memberType" value="1">기업</td>
         				</tr>
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
         					<td colspan="2" style="text-align: center"><a href="javascript:findId()"><input type="button" class="btn btn-primary btn-block" style="width: 150px; margin:auto;" value="아이디 찾기"></a></td>
         				</tr>
      				</table>
   				</form>
   				<div id="findResult" style="margin:auto;"><a class="d-block small mt-3" href="../">로그인</a></div>

			</div>
		</div>
	</div>

   
</body>
</html>