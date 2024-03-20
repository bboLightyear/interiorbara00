<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		#wrap {
			width: 500px;
			margin: auto;
		}
		
		nav {
			float: left;
			height: 500px;
			width: 30%;
			background-color: #fff0f0;
		}
		
		main {
			float: right;
			height: 500px;
			width: 70%;
			background-color: #f0f0ff;
		}
		
		.clear {
			clear: both;
		}
	</style>
</head>
<body>
	<h3>shopProductList.jsp</h3>
	<div id="wrap">
		<nav>
			<a href="shopProductList?category_id=10000">가구</a><br />
			<a href="shopProductList?category_id=10100">&nbsp;침대</a><br />
			<a href="shopProductList?category_id=10101">&nbsp;&nbsp;침대프레임</a><br />
			<a href="shopProductList?category_id=10102">&nbsp;&nbsp;침대+매트리스</a><br />
			<a href="shopProductList?category_id=10103">&nbsp;&nbsp;침대부속가구</a><br />
		</nav>
		<main>
			<h3>${category.name }</h3>
			
			<select name="colorFilter" id="">
				<option value="black">검은색</option>
				<option value="white">하얀색</option>
				<option value="brown">갈색</option>
			</select>
			<br />
	
			<h4>상품 개수: ${productCnt }</h4>
			<c:forEach items="${productList }" var="product">
				${product.name } <br />
			</c:forEach>
			
			<table>
				<tr>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</table>
		</main>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>