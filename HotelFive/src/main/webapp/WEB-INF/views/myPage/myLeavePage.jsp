<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 동적인 페이지 포함 -->
<jsp:include page="/WEB-INF/views/template/header.jsp">
	<jsp:param value="회원탈퇴" name="title"/>
</jsp:include>

<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">

	//비밀번호 검사
	// 세션에 등록된 회원비번이랑 탈퇴 페이지에 입력된 비번을 비교한다.
	$(document).ready(function(){  
		$('#leaveBtn').click(function(){
			if ($('#mPw').val() == '') {
				alert('비밀번호를 입력하세요');
				$('#mPw').focus();
				return false;
			}
			var mPw = '${loginDTO.mPw}';
			if ( $('#mPw').val() != mPw ) {
				alert('비밀번호가 일치하지 않습니다');
				return false;
			}
			if( confirm('정말 탈퇴하시겠습니까?') ){
				f.action = 'myLeave';
				f.submit();
			}
			
		});
	});
	
	
</script>

<div class="leave-box">
	<form id="f" action="POST">
	
		<h3 class="leave-centered" style="color: #ffebcd">HotelFive 회원탈퇴안내</h3>
		<div class="leave-centered">
			
			<span id="leave-text">그동안 저희 HotelFive를 이용해 주셔서 진심으로 감사드립니다.</span><br/>
			<span id="leave-text">비밀번호를 입력한 후 회원탈퇴하기 버튼을 클릭해주세요.</span> <span style="color: red; font-weight: bold;">회원탈퇴 후에는 취소가 불가</span>합니다.<br/><br/>
       </div>
      
       <div class="leave-centered">
       		<div >
	       		
	       		<span>비밀번호</span>&nbsp;&nbsp;
	       		<input id="mPw" type="password" name="mPw"><br><br>
     		 
     			<input type="hidden" name="mId" value="${loginDTO.mId }">     			
       			<input class="leave-gradient-btn" type="button" value="취소" onclick="location.href='goMyPage'">
       			<input id="leaveBtn" class="leave-gradient-btn" type="button" value="회원탈퇴하기">
     		</div>	
       </div>
       
	</form>
</div>



	
	
<!-- 정적인 페이지 포함 -->
<%@ include file="/WEB-INF/views/template/footer.jsp" %>