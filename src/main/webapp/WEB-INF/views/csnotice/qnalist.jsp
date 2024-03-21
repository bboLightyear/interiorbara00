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
<h3>qnalist</h3>

<hr />
		<table class="">
		<tr class="">
			<td class="">NO</td>
			<td class="">제목</td>
			<td class="">이름</td>
			<td class="">날짜</td>
			<td class="">조회수</td>
		</tr>
		<c:forEach items="${list }" var="dto">
			<tr class="">
				<td class="">${dto.nbno }</td>
				<td class="">
					<a href="">${dto.nbtitle }</a>
				</td>
				<td class="">${dto.nbwriter }</td>
				<td class="">${dto.nbdate }</td>
				<td class="">${dto.nbhit }</td>
			</tr>
		</c:forEach> 
		</table>
		<a href="">글쓰기</a>
	<hr />
</body>
</html>