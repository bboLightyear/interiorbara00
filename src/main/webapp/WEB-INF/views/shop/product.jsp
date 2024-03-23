<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

	<script>
		function loadSubOptionSet() {
			var select = event.target;
			var option_id = select.value;
			
			$.ajax({
				type: "get",
				async: true,
				url: "loadSubOptionSet",
				data: {
					"option_id" : option_id
				},
				success: function(data) {
					$('option', '#finalOptionSet').not(':eq(0)').remove();
					$('#finalOptionSet').prop('selectedIndex', 0);
					
					$.each(data, function (i, option) {
					    $('#finalOptionSet').append($('<option>', { 
					        value: option.option_id,
					        text : option.name + ' ' + option.product_data_dto.price + '원'
					    }));
					});
				}
			});
		}
		
		function addSelectedProductCard() {
			
		}
	</script>
	<style>
		.selectedProductCard {
			disply: inline-block;
			width: 300px;
			height: 50px;
			background-color: #f0f0f0;
		}
	</style>
</head>
<body>
	
	<h3>product.jsp</h3>
	
	id: ${product.product_id } <br />
	이름: ${product.name } <br />
	옵션 <br />
	<form action="">
		<c:choose>
			<c:when test="${nonOption ne null }">
				<div class="selectedProductCard">
					${nonOption.name } <br />
					${nonOption.product_data_dto.price }
				</div>
			</c:when>
			
			<c:when test="${subOptionSet ne null }">
				<select name="optionSet" id="optionSet" onchange="loadSubOptionSet()">
					<option selected disabled>${optionSet.name }</option>
					<c:forEach items="${options }" var="o">
						<option value="${o.option_id }">${o.name }</option>
					</c:forEach>
				</select>
				<select name="finalOptionSet" id="finalOptionSet" onchange="addSelectedProductCard()">
					<option selected disabled>${subOptionSet.name }</option>
					<!-- ajax -->
				</select>
			</c:when>
			
			<c:otherwise>
				<select name="finalOptionSet" id="finalOptionSet" onchange="addSelectedProductCard()">
					<option selected disabled>${optionSet.name }</option>
					<c:forEach items="${options }" var="o">
						<option value="${o.option_id }">${o.name }&nbsp;&nbsp;
						${o.product_data_dto.price }원</option>
					</c:forEach>
				</select>
			</c:otherwise>
		</c:choose>
		
		<!-- ajax -->
		
		<br />
		<input type="button" value="장바구니"/>
		<input type="button" value="바로구매"/>
	</form>
</body>
</html>