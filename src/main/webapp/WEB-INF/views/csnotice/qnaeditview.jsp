<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>qna edit view</h3>


	<form action="qnaeditproc" method="post">
		<input type="hidden" name="nbno" value="${qna_content.nbno }" />
		<table>
			<tr>
				<td class="left">번호</td>
				<td>${qna_content.nbno }</td>
			</tr>
			<tr>
				<td class="left">조회수</td>
				<td>${qna_content.nbhit }</td>
			</tr>
			<tr>
				<td class="left">작성자</td>
				<td>${qna_content.nbwriter }</td>
			</tr>
			<tr>
				<td class="left">글분류</td>
				<td>
				${qna_content.nbqnadiv }
				<select name="qnadiv">
						<c:choose>
							<c:when test="${qna_content.nbqnadiv }=">
								<option value="all" selected="selected">전체</option>
							</c:when>
							<c:otherwise>
								<option value="all">전체</option>
							</c:otherwise>
						</c:choose>

						<c:choose>
							<c:when test="${qna_content.nbqnadiv }=='qq'">
								<option value="qq" selected="selected">퀵견적</option>
							</c:when>
							<c:otherwise>
								<option value="qq">퀵견적</option>
							</c:otherwise>
						</c:choose>

						<c:choose>
							<c:when test="${qna_content.nbqnadiv }=oh">
								<option value="oh" selected="selected">우리집 자랑하기</option>
							</c:when>
							<c:otherwise>
								<option value="oh">우리집 자랑하기</option>
							</c:otherwise>
						</c:choose>

						<c:choose>
							<c:when test="${qna_content.nbqnadiv }=biz">
								<option value="biz" selected="selected">업체 관련</option>
							</c:when>
							<c:otherwise>
								<option value="biz">업체 관련</option>
							</c:otherwise>
						</c:choose>

						<c:choose>
							<c:when test="${qna_content.nbqnadiv }=pf">
								<option value="pf" selected="selected">로그인/회원정보</option>
							</c:when>
							<c:otherwise>
								<option value="pf">로그인/회원정보</option>
							</c:otherwise>
						</c:choose>

						<c:choose>
							<c:when test="${qna_content.nbqnadiv }=sh">
								<option value="sh" selected="selected">소품샵</option>
							</c:when>
							<c:otherwise>
								<option value="sh">소품샵</option>
							</c:otherwise>
						</c:choose>
				</select>
				</td>
			</tr>
			<tr>
				<td class="left">제목</td>
				<td><input type="text" name="nbtitle"
					value="${qna_content.nbtitle }" /></td>
			</tr>
			<tr>
				<td class="left">내용</td>
				<td><textarea rows="6" name="nbcontent" cols="60">${qna_content.nbcontent }</textarea></td>
			</tr>
			<tr>
				<td class="left">날짜</td>
				<td>${qna_content.nbdate }</td>
			</tr>
			<tr>
				<td class="left">파일</td>
				<td><a href=""></a></td>
			</tr>
			<tr>
				<td><input type="submit" value="수정" /></td>
			</tr>
		</table>
	</form>

</body>
</html>