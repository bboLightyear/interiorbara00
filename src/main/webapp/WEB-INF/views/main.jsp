<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/main.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<title>Main</title>
</head>
<body>
	<!-- 헤더 -->
	<header>
		<!-- header_top : 헤더 윗부분 -->
		<div class="header_top">
			<!-- 왼쪽 여백 -->
			<div></div>
			<!-- header_logo : 로고 -->
			<div class="header_logo">
				<i class="fas fa-paw"></i>
			</div>
			<!-- header_search_box : 검색창 -->
			<div class="header_search_box">
				<i class="fas fa-search header_search_box_icon"></i> <input
					type="text" class="header_search_box_input" placeholder="검색">
			</div>
			<!-- header_login_box : 회원관리부분 -->
			<div class="header_login_box">
				<div class="header_login">로그인</div>
				<div class="header_join">회원가입</div>
				<div class="header_cs">마이페이지</div>
			</div>
			<!-- 오른쪽 여백 -->
			<div></div>
		</div>
		<!-- header_bottom : 헤더 아랫부분 -->
		<div class="header_bottom">
			<!-- header_category_icon : 카테고리 아이콘 -->
			<div class="header_category_icon">
				<i class="fas fa-bars"></i>
			</div>
			<!-- header_category_list : 카테고리 / list_1~5 : list에 각각 들어갈 내용 -->
			<div class="header_category_list list_1">퀵견적</div>
			<div class="header_category_list list_2">업체 둘러보기</div>
			<div class="header_category_list list_3">소품샵</div>
			<div class="header_category_list list_4">우리 집 자랑하기</div>
			<div class="header_category_list list_5">고객센터</div>
		</div>
	</header>

<<<<<<< HEAD
<P> &#x1F606; TeamProject CheerUp &#x1F44D; </P>
<P> &#x1F606; 모두 화이팅!! &#x1F44D; </P>
<p>test</p>
<p>test</p>
	<!-- 모달 창 열기 버튼 -->
    <button id="openModal">퀵견적</button>
	<jsp:include page="modal/mmain.jsp"/>
=======
	<br>
>>>>>>> a011bea57c6925a5150f014df61d28da91546ceb

	<div class="body_section">

		<!--carousel_main : 최상위 클래스로 캐러셀의 전체 구조를 잡아줍니다.
        carousel_wrapper : 캐러셀 슬라이드의 전체 구조를 잡아줍니다.
        carousel_slide : 캐러셀 이미지를 설정합니다.
        carousel_button_container : 슬라이드를 넘기기 위한 사이드 버튼의 전체 구조를 잡아줍니다.
        carousel_prev / carousel_next : 캐러셀 사이드 버튼을 설정하고 svg 태그를 사용했습니다.
        carousel_pagination : 캐러셀 중앙 버튼의 전체 구조를 잡아줍니다.
        carousel_circle : 캐러셀 중앙 버튼을 설정합니다.-->
		<div class="carousel_whole_wrap">
			<!-- 캐러셀 왼쪽 버튼 -->
			<div class="carousel_prev_button_container">
				<button type="button" class="carousel_prev">
				    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-chevron-double-left" viewBox="0 0 16 16">
				        <path fill-rule="evenodd" d="M8.354 1.646a.5.5 0 0 1 0 .708L2.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z" />
				        <path fill-rule="evenodd" d="M12.354 1.646a.5.5 0 0 1 0 .708L6.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z" />
				    </svg>
				</button>
			</div>
			<div class="carousel_main">
				<div class="carousel_wrapper">
					<div class="carousel_slide">
						<img src="resources/img/mainimg/0.gif" alt="#" />
					</div>
					<div class="carousel_slide">
						<img src="resources/img/mainimg/1.gif" alt="#" />
					</div>
					<div class="carousel_slide">
						<img src="resources/img/mainimg/2.gif" alt="#" />
					</div>
					<div class="carousel_slide">
						<img src="resources/img/mainimg/3.gif" alt="#" />
					</div>
					<div class="carousel_slide">
						<img src="resources/img/mainimg/4.gif" alt="#" />
					</div>
				</div>
			</div>
			<!-- 캐러셀 오른쪽 버튼 -->
			<div class="carousel_next_button_container">
				<button type="button" class="carousel_next">
					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-chevron-double-right" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M3.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L9.293 8 3.646 2.354a.5.5 0 0 1 0-.708z" />
                        <path fill-rule="evenodd" d="M7.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L13.293 8 7.646 2.354a.5.5 0 0 1 0-.708z" />
                    </svg>
				</button>
			</div>
			<!-- 캐러셀 중앙 버튼 -->
			<div class="carousel_pagination">
				<div class="carousel_circle"></div>
				<div class="carousel_circle"></div>
				<div class="carousel_circle"></div>
				<div class="carousel_circle"></div>
			</div>
		</div>
		<!-- 캐러셀 작동 js -->
<script>
    <%-- JSP scriptlet to generate JavaScript code dynamically --%>

    var swiper = document.querySelector('.carousel_wrapper');
    var prevButtons = document.querySelectorAll('.carousel_prev');
    var nextButtons = document.querySelectorAll('.carousel_next');
    var bullets = document.querySelectorAll('.carousel_circle');

    var currentSlide = 0;

    function showSlide(slideIndex) {
        swiper.style.transform = "translateX(-" + slideIndex * 300 + "px)";
        currentSlide = slideIndex;

        bullets.forEach(function (bullet, index) {
            if (index === currentSlide) {
                bullet.classList.add('active');
            } else {
                bullet.classList.remove('active');
            }
        });
    }

    prevButtons.forEach(function (prevButton) {
        prevButton.addEventListener('click', function () {
            if (currentSlide > 0) {
                showSlide(currentSlide - 1);
            }
        });
    });

    nextButtons.forEach(function (nextButton) {
        nextButton.addEventListener('click', function () {
            if (currentSlide < 3) {
                showSlide(currentSlide + 1);
            }
        });
    });

    bullets.forEach(function (bullet, index) {
        bullet.addEventListener('click', function () {
            showSlide(index);
        });
    });

    showSlide(0);
</script>

		<br>
		<div class="category_button_wrap">
			<img src="resources/img/mainimg/gray_circle.png" alt="" class="category_button">
			<img src="resources/img/mainimg/gray_circle.png" alt="" class="category_button">
			<img src="resources/img/mainimg/gray_circle.png" alt="" class="category_button">
			<img src="resources/img/mainimg/gray_circle.png" alt="" class="category_button">
		</div>
		<br>
		<h1>INTERIORBARA</h1>

		<P>&#x1F606; TeamProject CheerUp &#x1F44D;</P>
		<P>&#x1F606; 모두 화이팅!! &#x1F44D;</P>
		<p>test</p>
		<p>test</p>
		<a href="modal">퀵견적</a> <a href="shopProductList">shopProductList</a>
		<br /> <br />
		<p>아래 푸터 있음</p>
		<i class="fas fa-arrow-down"></i> <br /> <i class="fas fa-arrow-down"></i>
		<br /> <i class="fas fa-arrow-down"></i> <br /> <i
			class="fas fa-arrow-down"></i> <br /> <i class="fas fa-arrow-down"></i>
		<br /> <i class="fas fa-arrow-down"></i>
	</div>
	<br>
	<br>
	<!-- 푸터 -->
	<footer>
		<!-- 푸터 로고 -->
		<div class="footer_logo">logo</div>
		<!-- 푸터 내용 -->
		<div class="footer_content">(주) 카피바라 주소 : 대한민국 서울시 양천구 목동 655-19
			대표 : 조보근 전화번호 : 010-3017-5283</div>
		<!-- sns 아이콘 -->
		<div class="footer_sns">
			<i class="fab fa-facebook fa-lg"></i> <i class="fab fa-youtube fa-lg"></i>
			<i class="fab fa-twitter fa-lg"></i> <i class="fab fa-twitch fa-lg"></i>
			<i class="fab fa-instagram fa-lg"></i>
		</div>
	</footer>

<<<<<<< HEAD
	<br />
	<a href="shop/list">list</a>
	<br />
	
	<a href="cshome">고객센터</a>
	
	<img src="resources/upload/oh/star.png" alt="f" />
=======
>>>>>>> a011bea57c6925a5150f014df61d28da91546ceb
</body>
</html>