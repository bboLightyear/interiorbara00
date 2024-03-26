<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	.mypage_category {
    	margin: 0;
        padding: 0;
        width: 100%;
        height: 65px;
        /* border-bottom: 1px solid gray; */
        display: flex; 
        justify-content: center;
        align-items: center;
        /* background-color: lightblue; */
	}
    /* 카테고리 list */
   	.mypage_category_list {
        margin-top: -5px;
        margin-left: 10px;
        padding-left: 10px;
        border-left: 1px solid gray;
        display: inline-block;
        width: fit-content;
        height: fit-content;
        font-size: 15px;
        font-weight: bold;
        font-family: sans-serif;
        cursor: pointer;
    }
	.box {
	    width: 150px;
	    height: 150px; 
	    border-radius: 70%;
	    overflow: hidden;
	}
	.profile {
	    width: 100%;
	    height: 100%;
	    object-fit: cover;
	}
	ul li {list-style:none; }
	.fl {float:left; }
	.tc {text-align:center; }
	.board {width: 160px; }
	.w50 {width:50px; }
	.w70 {width:70px; }
	.w80 {width:80px; }
	.w150 {width:150px; }
</style>
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
        <div class="mypage_category_list list_1_4"><a href="mypageinfoedit">회원정보수정</a></div>
        <div class="mypage_category_list list_1_5">비밀번호변경</div>
    </div>
    
    <div>
    	<ul class="board">
    		<li class="fl tc box w150" style="background: gray;">
    			<img class="profile" src="../resources/upload/my/${dto.profileimg}" alt="">
    		</li>
    	</ul>
<%--         <div class="box" style="background: gray;">
            <img class="profile" src="../resources/upload/my/${dto.profileimg}" alt="">
        </div> --%>
        <ul class="board">
        	<li class="fl tc w150">${dto.nickname}님</li>
        </ul>
       	<ul class="board">
       		<li class="fl tc w80"><a href="#"><img class="w50" src="../resources/img/my/bookmark.png" alt="" /></a></li>
       		<li class="fl tc w80"><a href="#"><img class="w50" src="../resources/img/my/heart.png" alt="" /></a></li>        		
       	</ul>
       	<ul class="board">
       		<li class="fl tc w80"><a href="#">북마크</a></li>
       		<li class="fl tc w80"><a href="#">좋아요</a></li>        		
       	</ul>
       	<ul class="board">
       		<li class="fl tc w80">0</li>
       		<li class="fl tc w80">0</li>
       	</ul>
    </div>
    
</body>
</html>