<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
	function modifySubmit() {
		var f = document.userInfoForm;
		f.method = "post";
		f.submit();
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>일반 회원정보</h1>
	<form name="userInfoForm" id="userInfoForm" action="userInfoAction"
		method="post">
		<p>
			아이디 : <input type="email" name="email" id="email"
				value="${memberInfo.email }" readonly="readonly">
		</p>
		<p>
			이름 : <input type="text" name="name" id="name"
				value="${memberInfo.name }">
		</p>
		<p>
			연락처 : <input type="text" name="phone_front" id="phone_front"
				value="${memberInfo.phone_front }" style="width: 40px"> - <input
				type="text" name="phone_mid" id="phone_mid"
				value="${memberInfo.phone_mid }" style="width: 50px"> - <input
				type="text" name="phone_end" id="phone_end"
				value="${memberInfo.phone_end }" style="width: 50px">
		</p>
		<p>
			우편번호 : <input type="text" id="addr1" name="addr1"
				value="${memberInfo.addr1 }"> <input type="button"
				onclick="exePostCode()" value="우편번호 찾기">
		</p>
		<p>
			주소 : <input type="text" id="addr2" name="addr2"
				value="${memberInfo.addr2 }">
		</p>
		<p>
			상세주소 : <input type="text" id="addr3" name="addr3"
				value="${memberInfo.addr3 }">
		</p>
		<p>
			포인트 : <input type="text" name="point" id="point"
				value="${memberInfo.point }" readonly="readonly">
		</p>
		<p>
			<input type="hidden" name="memberType" id="memberType" value="0">
		</p>
		<p>
			<a href="javascript:modifySubmit();"><input type="button"
				value="수정"></a>
		</p>

	</form>

</body>
</html>