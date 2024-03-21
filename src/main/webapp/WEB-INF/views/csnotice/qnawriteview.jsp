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
<h3>qnawriteview</h3>

<form action="qnawrite" method="post" enctype="multipart/form-data">
<table>
	<tr>
		<td class="">이름</td>
		<td><input type="text" name="nbwriter" value=""/></td>
	</tr>
	<tr>
		<td class="">제목</td>
		<td><input type="text" name="nbtitle" value=""/></td>
	</tr>
	<tr>
		<td class="">내용</td>
		<td><textarea type="text" name="nbcontent" rows="5" cols="65"></textarea></td>
	</tr>
	<tr>
		<td class="">첨부</td>
		<td><input type="file" name="nbfile" /></td>
	</tr>
	<tr>
		<td>
			<input type="submit" value="글쓰기" />
			<a href="qnalist">목록으로</a>
		</td>
	</tr>
</table>
</form>
</body>
</html>