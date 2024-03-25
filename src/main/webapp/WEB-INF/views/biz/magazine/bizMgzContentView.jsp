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
<h3>bizMgzContentView.jsp</h3>

<table>
		<tr class="">
			<td class="">번호</td>
			<td>${bizMgzContentView.bm_no }</td>
		</tr>
		<tr class="">
			<td class="">히트</td>
			<td>${bizMgzContentView.bm_hit }</td>
		</tr>		
		<tr class="">
			<td class="">이름</td>
			<td>${bizMgzContentView.bm_writer }</td>
		</tr>		
		<tr class="">
			<td class="">제목</td>
			<td>${bizMgzContentView.bm_title }</td>
		</tr>		
		<tr class="">
			<td class="">내용</td>
			<td>${bizMgzContentView.bm_content }</td>
		</tr>
		<tr class="">
			<td class="">첨부</td>
			<td>
			<%-- <a href="bizMgzDownload?p=resources/upload/biz/&f=${bizMgzContentView.bm_img }
				&bm_no=${bizMgzContentView.bm_no }">${bizMgzContentView.bm_img }</a> --%>
				<c:forEach items="${imglist }" var="imgdto">
					<a href="bizMgzDownload?p=resources/upload/biz/&f=${imgdto.bmimg_cgn }
					&bm_no=${bizMgzContentView.bm_no }">${imgdto.bmimg_cgn }</a>
				</c:forEach>					
				
			</td>
		</tr>		
		<tr class="">
			<td colspan="2">
				<a href="bizMgzModView?bm_no=${bizMgzContentView.bm_no }">수정</a> <br />
				<a href="bizMgzList">목록</a> <br />
				<a href="bizMgzDelView?bm_no=${bizMgzContentView.bm_no }">삭제</a> <br />
			</td>
		</tr>		
	</table>


</body>
</html>