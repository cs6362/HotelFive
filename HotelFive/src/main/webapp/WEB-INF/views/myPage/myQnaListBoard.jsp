<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 동적인 페이지 포함 -->
<jsp:include page="/WEB-INF/views/template/header.jsp">
	<jsp:param value="QNA게시판" name="title"/>
</jsp:include>
<script type="text/javascript">

	function fn_viewCheck(f){
		
			f.action = "qnaBoardView";
			f.submit();
		}

</script>

<div class="qnaBoard-Listbox">
	<h1 style="color: #CAC2D1;">QNA</h1>
						
	<table>
		<thead>
			<tr>
				<td>글번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성일</td>
			</tr>
		</thead>
		<tbody>
			<c:if test="${empty list }">
				<tr>
					<td colspan="4">작성된 게시글이 없습니다</td>
				</tr>
			</c:if>
			<c:if test="${not empty list }">
				<c:forEach var="qDTO" items="${list }">
					<c:if test="${qDTO.qIsdelete eq 1 }">
						<tr>
							<td>${qDTO.qNo }</td>
							<td>
								<form>
									<a href="qnaBoardView?qNo=${qDTO.qNo }">${qDTO.qTitle }</a>
									<i class="fas fa-lock-open"></i>
								</form>
								<c:if test="${qDTO.count ne 0 }">
									<span style="color:rgb(150,150,250)">[답변등록완료]</span>									
								</c:if>
							</td>
							<c:if test="${qDTO.mId ne null }">
								<td>${qDTO.mId }</td>
							</c:if>
							<c:if test="${qDTO.mId eq null }">
								<td>${qDTO.nmName }</td>
							</c:if>
							<td>${qDTO.qNoticedate }</td>
						</tr>
					</c:if>
				</c:forEach>
			</c:if>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="4">
					${pageView }
					<input id="myQna-button" type="button" value="글쓰기" onclick="location.href='qnaBoardInsertPage'"/>				
				</td>
			</tr>
		</tfoot>
	</table>
</div>

<!-- 정적인 페이지 포함 -->
<%@ include file="/WEB-INF/views/template/footer.jsp" %>