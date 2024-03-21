<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>qna edit view</h3>

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
		<td class="left">제목</td>
		<td><input type="text" value="${qna_content.nbtitle }"/></td>
	</tr>
	<tr>
		<td class="left">내용</td>
		<td><textarea rows="6" cols="60">${qna_content.nbcontent }</textarea></td>
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
		<td>
		<a href="">수정</a>
		</td> 
	</tr>
</table>

</body>
</html>