<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!-- 동적인 페이지 포함 -->
<jsp:include page="/WEB-INF/views/template/header.jsp" />

<div class="findReservationBox">

	<div class="bookableList_backimg">
		<h3 id="hotelfive">Hotel Five</h3>
		<h1 id="pagetitle">Reservation check</h1>
		<p id="explain">호텔파이브 비회원 예약조회</p>
	</div>


	<form action="selectNonMemberReservationPage" method="POST">
		<h1>비회원 예약정보 확인</h1>
		<table>
			<tbody>
				<tr>
					<td>성함</td>
					<td><input type="text" name="nmName" /></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" name="nmPhone" /></td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2"><input type="submit" value="조회" /> <input
						type="button" value="취소" onclick="history.go(-1)" /></td>
				</tr>
			</tfoot>
		</table>
	</form>
</div>

<!-- 정적인 페이지 포함 -->
<%@ include file="/WEB-INF/views/template/footer.jsp"%>