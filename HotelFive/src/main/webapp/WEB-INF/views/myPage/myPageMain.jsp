<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>




<!-- 동적인 페이지 포함 -->
<jsp:include page="/WEB-INF/views/template/header.jsp">
	<jsp:param value="마이페이지" name="title"/>
</jsp:include>

<link rel="stylesheet" type="text/css" href="resources/assets/myMain_img/myPageMain.css">


<div class="myMain-wrap">
	
	<div class="group-btn">
	
		<div class="group1-button">
	
			<button class="button" onclick="location.href='myPage_pw_confirmPage'"><span id="main-text">회원정보변경 </span></button>
			<button class="button" onclick="location.href='MyReservation?mNo=${loginDTO.mNo}'"><span id="main-text">예약정보 확인 </span></button>
		
		</div>
		
			<div class="group2-button">
		
			<button class="button" onclick="location.href='myBoardView?mId=${loginDTO.mId}' "><span id="main-text">나의 게시글 보기 </span></button>
			<button class="button" onclick="location.href='myLeavePage?mId=${loginDTO.mId}'"><span id="main-text">회원탈퇴 </span></button>
		
		</div>
	</div>
	
		
	
</div>

 
<!-- 정적인 페이지 포함 -->
<%@ include file="/WEB-INF/views/template/footer.jsp" %>