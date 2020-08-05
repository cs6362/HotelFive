<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script>
	
	var today = new Date();
  function fn_selectReservation(f){
	  
	  
	  
	  if (f.rCheckIn.value =='' ||  f.rCheckOut.value == ''){
		  alert('체크인 날짜와 체크아웃 날짜를 선택해 주세요.');
		  f.rCheckIn.focus();
	  }else if (f.rCheckIn.value > f.rCheckOut.value ){
		  alert('체크인 날짜보다 체크아웃 날짜가 빠를 수 없습니다.');
		  f.rCheckOut.focus();
	  }else if(new Date(f.rCheckIn.value) < today ){
		  alert('지날 날짜와 당일 예약은 불가능합니다.');
		  f.rCheckIn.focus();
		  
	  }else if(f.rCheckIn.value == f.rCheckOut.value){ 
		  alert('체크인 날짜와 체크아웃 날짜가 같을 수 없습니다.');
		  f.rCheckOut.focus();
	  }else{
		  f.action="selectBookable";
		  f.submit();
	  }
	  
  }
</script>

<!-- 동적인 페이지 포함 -->
<jsp:include page="/WEB-INF/views/template/header.jsp" />

<video autoplay muted loop id="myVideo">
  <source src="resources/Sea.mp4" type="video/mp4">
</video>


<div class="main">
	<div class="reservation-box">
		<form class="reservation-box-form">
			<div id = "reservation-box-checkIn-div">
			체크인<br/>
			<input id="reservation-box-checkIn" type="date" name="rCheckIn" />
			</div>
			<div id = "reservation-box-checkOut-div">
			체크아웃<br/>
			<input id="reservation-box-checkOut"type="date" name="rCheckOut"/>
			</div>
			<div id = "reservation-box-selectBtn-div">
			<input id="reservation-box-selectBtn" type="button" value="객실검색" onclick="fn_selectReservation(this.form)">
			</div>
		</form>
	</div>

</div>
<!-- 정적인 페이지 포함 -->