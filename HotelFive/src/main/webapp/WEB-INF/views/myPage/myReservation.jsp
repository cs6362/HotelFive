<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*, java.text.*"  %>

<script>
   

   function fn_reservationCancle(f){
      
      if(confirm('예약을 취소하시겠습니까?')){
         f.action="reservationCancle";
         f.submit();
      }
   }
</script>
<!-- 동적인 페이지 포함 -->
<jsp:include page="/WEB-INF/views/template/header.jsp">
	<jsp:param value="나의예약현황" name="title"/>
</jsp:include>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">



   <div class="myReservation-container">
   	 <h3 class="text-center">${loginDTO.mName } 님 예약내역</h3>
   	 <br>
   	 <table class="table table-hover">
   	 	<thead>
   	 		<tr>
   	 			<td>예약번호</td>
   	 			<td>객실이름</td>
   	 			<td>인원</td>
   	 			<td>가격</td>
   	 			<td>체크인</td>
   	 			<td>체크아웃</td>
   	 			<td>예약현황</td>
   	 			<td>취소여부</td>
   	 		</tr>
   	 	</thead>
   	 	<tbody class="search row">
   	 		<c:if test="${empty list }">
	        	 <tr>
	           		<td colspan="9">예약한 방이 없습니다.</td>
	           	</tr> 
         	</c:if>
         	 <c:if test="${not empty list }">
               <c:forEach var="rDTO" items="${list }">
	              <form method="POST">
		              <tr>
			              <c:if test="${rDTO.rApproval eq 0}"> <!-- 최초 : 승인대기, 예약취소 -->
				              	<td>${rDTO.rNo }</td>
				              	<td>${rDTO.gName }</td>
				              	<td>${rDTO.rPeople }</td>
				              	<td>${rDTO.rPrice }</td>
				              	<td>${rDTO.rCheckIn }</td>
				              	<td>${rDTO.rCheckOut }</td>
				              	<td>
									<input type="hidden" name="rNo" value="${rDTO.rNo }">
									<input type="hidden" name="mNo" value="${rDTO.mNo }">
									<input class="myReservation-cancelBtn" type="button" value="예약대기" disabled>
								</td>
								<td>
									<input class="myReservation-cancelBtn" type="button" value="예약취소" onclick="fn_reservationCancle(this.form)">
								</td>
							</c:if>
							<c:if test="${rDTO.rApproval eq 1}"> <!-- 승인완료 -->
				              	<td>${rDTO.rNo }</td>
				              	<td>${rDTO.rPeople }</td>
				              	<td>${rDTO.rPrice }</td>
				              	<td>${rDTO.rCheckIn }</td>
				              	<td>${rDTO.rCheckOut }</td>
				              	<td>${rDTO.gName }</td>
				              	<td><input class="myReservation-cancelBtn" type="button" value="예약확정" disabled></td>
								<td>
									
								</td>
							</c:if>
			            </tr>
	             </form>
               </c:forEach>
         	</c:if>
   	 	</tbody>
   	 </table>
     
        
            <%-- 객실 : ${rDTO.gName}
	                  ${rDTO.rCheckIn } ~ ${rDTO.rCheckOut }<br/>
	                     <c:if test="${rDTO.rApproval eq 0 }">
	                        예약대기 <input type="button" value="예약취소" onclick="fn_reservationCancle(this.form)">
	                     </c:if>
	                     <c:if test="${rDTO.rApproval eq 1 }">
	                        예약승인
	                     </c:if>
	                  
	                 <input type="hidden" name="rNo" value="${rDTO.rNo }"/> 
	                 <input type="hidden" name="mNo" value="${rDTO.mNo }"/> 
	                     <hr/> --%>
        
     
      
   </div>
<br><br><br><br><br><br><br><br><br>
   
<!-- 정적인 페이지 포함 -->
<%@ include file="/WEB-INF/views/template/footer.jsp" %>