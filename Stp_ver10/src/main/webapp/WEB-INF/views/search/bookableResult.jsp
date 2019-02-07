<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>Insert title here</title>
<script>

//주차장 신청 버튼 누르면 예약 페이지 팝업창으로
function parkingReserve(){
	
	var myForm = document.applyValue;
	var url = "../search/parkingApply";
	 window.open("" ,"applyValue", 
	       "toolbar=no, width=540, height=800, directories=no, status=no,    scrollorbars=no, resizable=no"); 
	 myForm.action =url; 
	 myForm.method="post";
	 myForm.target="applyValue";
	 myForm.submit();
	
}

</script>
</head>
<body>
	
	<form name="applyValue"	>
		<input type="hidden" name="entrance_date" id="entrance_date" value="${bookingInfo.entrance_date }">	<!-- 날짜 -->
		<input type="hidden" name="parking_id" id="parking_id" value="${bookingInfo.parking_id }">	<!-- parking_id -->
		<input type="hidden" name="user_id" id="user_id" value="${bookingInfo.user_id }">	<!-- user_id -->
		<input type="hidden" name="entrance_time" id="entrance_time" value="${bookingInfo.entrance_time }">	<!-- 입차시간 -->
		<input type="hidden" name="exit_time" id="exit_time" value="${bookingInfo.exit_time }">	<!-- 출차시간 -->
		<input type="hidden" name="price" id="price" value="${bookingInfo.price }">	<!-- 가격 -->
	</form>
	<br>
	
		<div style="width: 410px; margin: auto; text-align: center" ><hr>
			<div style="margin: auto; float:left;">
				<table style="text-align: left; width: 300px; height: 170px;">
					<tr>
						<td>주차가능대수</td>
						<td style="font-weight: bold;">${bookingInfo.area_able}대</td>
					</tr>
					<tr>
						<td>입차일시</td>
						<td style="font-weight: bold;">${bookingInfo.entrance_date}/
							${bookingInfo.entrance_time}:00</td>
					</tr>
					<tr>
						<td>출차일시</td>
						<td style="font-weight: bold;">${bookingInfo.exit_date}/
							${bookingInfo.exit_time}:00</td>
					</tr>
					<tr>
						<td>주차시간</td>
						<td style="font-weight: bold;">${bookingInfo.parking_time}시간</td>
					</tr>
					<tr>
						<td>주차요금</td>
						<td style="font-weight: bold;">${bookingInfo.price }</td>
					</tr>
				</table>
			</div>
			<!-- <div style="float: right; margin: 15px 40px 0 0;">
				<a href="#" class="btn btn-warning"
					style="width: 100px; height: 50px; margin: auto; line-height: 38px">
					주차장 신청하기</a>
			</div>
			<div style="float: right; margin: 10px 40px 0 0;">
				<a href="#" class="btn btn-danger"
					style="width: 100px; height: 50px; margin: auto; line-height: 38px">결제</a>
			</div> -->
			<div style="float:right; margin: auto; margin-top: 50px">
				<a href="#" class="btn btn-info" onclick="parkingReserve()"
					style="width: auto; height: 50px;  line-height: 38px">
					주차장 신청</a>
			</div>
		</div>
	
</body>
</html>