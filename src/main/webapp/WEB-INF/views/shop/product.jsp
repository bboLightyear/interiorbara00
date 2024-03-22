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
		function selectOption() {
			$.ajax({
				type: "post",
				async: true,
				url: "optionSet",
				data: {
					"product_id" : ${product.product_id },
					"option_id" : event.target.value
				},
				success: function(data) {
					var htmlText = "";
					for (var i in data) {
						htmlText = htmlText + '<option value="' + data[i].option_id + '">' + data[i].name + '</option>';
					}
					$("#subOptionSet").append(htmlText);
				}
			});
		}
	</script>
</head>
<body>
	<h3>product.jsp</h3>
	
	id: ${product.product_id } <br />
	이름: ${product.name } <br />
	
	옵션셋id: ${optionSet1.option_set_id } <br />
	<select name="optionSet1" id="optionSet1" onchange="selectOption()">
		<option selected disabled>${optionSet1.name }</option>
		<c:forEach items="${options }" var="o">
			<option value="${o.option_id }">${o.name }</option>
		</c:forEach>
	</select>
	<br />
	<c:if test="${subOptionSet ne null }">
		<select name="subOptionSet" id="subOptionSet">
			<option selected disabled>${subOptionSet.name }</option>
		</select>
	</c:if>

</body>
</html>