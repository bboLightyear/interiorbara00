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
	<h3>product.jsp</h3>
	
	id: ${product.product_id } <br />
	이름: ${product.name } <br />
	
	옵션셋id: ${optionSet1.option_set_id } <br />
	옵션이름: ${optionSet1.name }
</body>
</html>