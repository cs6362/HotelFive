<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<jsp:include page="/WEB-INF/views/template/header.jsp">
	<jsp:param value="이용후기작성" name="title" />
</jsp:include>

<style type="text/css">
@import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);
	.notice_backimg {
		width: 100%; 
		height: 750px; 
		background-size: cover;
		background-image: url("resources/assets/background_img/backimg.jpg"); 
		text-align: center; 
		color: white; 
		padding-top: 300px;
	}
</style>

<script type="text/javascript">

	function fn_boardListPage() {
		history.back();
	}
	function fn_updateBoard(f) {
		if (f.rTitle.value == '') {
			alert('제목을 입력하세요.');
			f.rTitle.focus();
			return;
		}
		if (f.gName.value == '') {
			alert('방 번호를 다시 입력하세요');
			f.gName.focus();
			return;
		}
		if (f.rating.value == '') {
			alert('평점을 반드시 새로 입력해야 합니다.');
			f.rating.focus();
			return;
		}
		f.action = 'ReviewBoardUpdate';
		f.submit();
	}
</script>
<div class="notice_backimg">
	<h3 id="hotelfive">Hotel Five</h3>
	<h1 id="pagetitle">Community</h1>
	<p id="explain">호텔파이브의 각종 이벤트 및 소식</p>
</div>
<div class="noticeInsertBox">
	<img id="writing_name" alt="writing_name" src="resources/assets/name_img/update_name.png"/><br/> 
	<form method="POST" enctype="multipart/form-data">
		<table>
			<tbody>
				<tr>
					<td>회원번호</td>
					<td><input type="text" name="mNo" value="1" readonly/></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="rTitle" value="${hDTO.rTitle }" autofocus /></td>
				</tr>
				<tr>
					<td>방 번호</td>
					<td>
					<select name="gName" id="rooms">
						<option value="">::방번호::</option>
					    <optgroup label="A동">
					      <option value="A101">A101</option>
					      <option value="A102">A102</option>
					    </optgroup>
					    <optgroup label="B동">
					      <option value="B201">B201</option>
					      <option value="B202">B202</option>
					    </optgroup>
					    <optgroup label="C동">
					      <option value="C301">C301</option>
					    </optgroup>
					  </select>
					  <br/>
					  기존 방 : ${hDTO.gName }
					 </td>
				</tr>
			</table>
			<table>
				<tr>
					<td>
						새로운 평점
					</td>
					<td>
						<fieldset class="rating">
						    <input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="5점"></label>
						    <input type="radio" id="star4half" name="rating" value="4.5" /><label class="half" for="star4half" title="4.5점"></label>
						    <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="4점"></label>
						    <input type="radio" id="star3half" name="rating" value="3.5" /><label class="half" for="star3half" title="3.5점"></label>
						    <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="3.5점"></label>
						    <input type="radio" id="star2half" name="rating" value="2.5" /><label class="half" for="star2half" title="2.5점"></label>
						    <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="2점"></label>
						    <input type="radio" id="star1half" name="rating" value="1.5" /><label class="half" for="star1half" title="1.5점"></label>
						    <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="1점"></label>
						    <input type="radio" id="starhalf" name="rating" value="0.5" /><label class="half" for="starhalf" title="0.5점"></label>
						</fieldset>
					</td>
					<td>
					 기존 평점: ${hDTO.rRating }
					 </td>
				</tr>
				<tr>
					<td>첨부파일</td>
					<td><input type="file" name="files" value="${hDTO.rFilename }"/></td>
					<td>기존 파일: ${hDTO.rFilename }</td>
				</tr>
			</table>
			<table>
				<tr>
					<td>CONTENT</td>
					<td>
						<textarea name="rContent" rows="10" cols="80" placeholder="내용">${hDTO.rContent }</textarea>
					</td>
				</tr>
			</table>
			<input type="hidden" name="rNo" value="${hDTO.rNo }"/>
			<input class="noticeBtn" type="button" value="SAVE" onclick="fn_updateBoard(this.form)" />
			<input class="noticeBtn" type="reset" value="RESET" />
			<input class="noticeBtn" type="button" value="LIST" onclick="fn_boardListPage()" />
	</form>
</div>
<br/>
<br/>
<br/>
<br/>
<%@ include file="/WEB-INF/views/template/footer.jsp" %>