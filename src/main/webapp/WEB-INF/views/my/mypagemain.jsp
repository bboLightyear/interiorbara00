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
<h3>mypagemain.jsp</h3>
<div class="mypage_category">
        <div class="mypage_category_list list_1">프로필</div>
	    <div class="mypage_category_list list_2">나의쇼핑</div> <br>
    </div>
    <div class="mypage_category">
        <div class="mypage_category_list list_1_1">모두보기</div>
	    <div class="mypage_category_list list_1_2">내사진</div>
        <div class="mypage_category_list list_1_3">내동영상</div>
        <div class="mypage_category_list list_1_4">회원정보수정</div>
        <div class="mypage_category_list list_1_5">비밀번호변경</div>
    </div>
    <div class="profile">
        <div class="profileimg">
            <img src="../resources/upload/my/${dto.profileimg}" alt="">
            ${dto.profileimg }
        </div>
        <div>
            ${sessionNickname}님
        </div>

    </div>
    
</body>
</html>