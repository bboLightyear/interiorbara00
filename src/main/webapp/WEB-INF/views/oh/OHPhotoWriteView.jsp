<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		header {
			border: 1px solid #333;
			height: 130px;
			text-align: center;
		}
		#sideBar {
			float: left;
			list-style-type: none;
			padding: 0px;
			margin: 0px;
			width: 200px
		}
		#sideBar li {
			background-color: #FF6347;
			border: 1px solid #333;
		}
		#sideBar li a {
			text-decoration: none;
		}
		#sideBar li a:hover {
		
		}
		#write {
			float: right;
		}
		footer {
			clear: both;
			border: 1px solid #333;
			height: 130px;
			text-align: center;
		}				
	</style>
</head>
<body>
	<div id="container">
		<header>
			<h1>header</h1>
		</header>
		<div id="contents">
		
			<h3>OHPhotoWriteView.jsp</h3>
		
			<h3>글쓰기</h3>
		
			<ul id="sideBar">
				<li><a href="oh/OHMainView">우리집 자랑하기</a></li>
				<li><a href="oh/OHPhotoView">집사진</a></li>
				<li><a href="">집영상</a></li>
				<li><a href="">#category</a></li>
			</ul>	
			
			<div id="write">
				<h3>write</h3>
			</div>
			
		</div>
		<footer>
			<h1>footer</h1>
		</footer>
	</div>
	
</body>
</html>