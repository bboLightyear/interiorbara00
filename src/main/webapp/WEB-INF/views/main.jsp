<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Main</title>
</head>
<body>
<h1> INTERIORBARA </h1>

<P> &#x1F606; TeamProject CheerUp &#x1F44D; </P>
<P> &#x1F606; 모두 화이팅!! &#x1F44D; </P>
<p>test</p>
<p>test</p>
	<!-- 모달 창 열기 버튼 -->
    <button id="openModal">퀵견적</button>
	<jsp:include page="modal/mmain.jsp"/>


	<br />
	<a href="shop/list">list</a>
	<br />
	
	<a href="cshome">고객센터</a>
	
	<img src="resources/upload/oh/star.png" alt="f" />
</body>
</html>