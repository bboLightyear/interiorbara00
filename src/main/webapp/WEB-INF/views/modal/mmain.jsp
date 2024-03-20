<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<<<<<<< HEAD
</head>
<body>
<h3>mmain.jsp</h3>
=======
<link rel="stylesheet" href="resources/css/modal.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<script>
	const modal = document.getElementById('modal');
	const clooseBtn = document.querySelector('.close');
	
	function openModal(){
		modal.style.display = 'block';
	}
	closeBtn.addEventListener('click', () => {		
		modal.style.display = 'none';
		});
</script>
<h3>mmain.jsp</h3>
<div id="modal" class="modal">
	<div class="modal_content">
		<span class="close">&times;</span>
		모달내용입니다.
	</div>
</div>
>>>>>>> e6a5b0e9fd19703f44282e96e185a29d06dd9353
</body>
</html>