<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/views/template/header.jsp">
	<jsp:param value="게시판" name="title" />
</jsp:include>



<div class="board_backimg">
	<h3 id="hotelfive">Hotel Five</h3>
	<h1 id="pagetitle">Community</h1>
	<p id="explain">호텔파이브에서 보낸 이용후기</p>
</div>

<div class="noticeListBox">
	<img id="writing_name" alt="writing_name" src="resources/assets/name_img/review_name.png"/><br/> 
	<c:if test="${loginDTO ne null }">
		<a class="noticeInsertBtn" href='ReviewBoardInsertPage' ><i class="fas fa-user-edit fa-2x"></i>게시물 작성</a>
	</c:if>
	<br/><br/>
	
	<table>
		<thead>
			<tr>
				<td>ID</td>
				<td>제목</td>
				<td>작성일</td>
				<td>호실</td>
				<td>평점</td>
			</tr>
		</thead>
		<tbody>
			<c:if test="${empty list}">
				<tr>
					<td style="text-align:center;" colspan="5">작성된 게시글이 없습니다.</td>
				</tr>
			</c:if>
			<c:if test="${not empty list}">
				<c:forEach var="hDTO" items="${list}">
					<tr>
						<td>${hDTO.mId}</td>
						<td><a href="ReviewBoardViewPage?rNo=${hDTO.rNo}&mId=${hDTO.mId}">${hDTO.rTitle }</a></td>
						<td>${hDTO.rRegDate}</td>
						<td>${hDTO.gName }</td>
						<td>${hDTO.rRating } / 5.0</td>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
		<tfoot>
			<c:if test="${pageView ne null }">
               <td colspan="5">${pageView}</td>
            </c:if>
            <c:if test="${pageView2 ne null }">
               <td colspan="5">${pageView2}</td>
            </c:if>
		</tfoot>
	</table>
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>