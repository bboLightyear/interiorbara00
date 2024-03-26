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
<!-- 평수 선택 모달 창 영역 -->
<div id="serviceCheckModal" class="modal">
    <div class="modal_content">
        <div class="modal_leftside">
            <div class=modal_leftside_progress>
                <ul>
                    <li data-step-name="services" class="">
                        <div>
                            <span>어떤 서비스가 필요하신가요?</span>
                        </div>
                    </li>
                    <li data-step-name="service_select" class="">
                        <div>
                            <span>원하는 서비스 선택하기</span>
                        </div>
                    </li>
                    <li data-step-name="ask" class="">
                        <div>
                            <span>추가질문</span>
                        </div>
                    </li>
                    <li data-step-name="biz" class="">
                        <div>
                            <span>업체추천</span>
                        </div>
                    </li>
                    <li data-step-name="info" class="">
                        <div>
                            <span>정보입력</span>
                        </div>
                    </li>
                    <li data-step-name="date" class="">
                        <div>
                            <span>날짜선택</span>
                        </div>
                    </li>
                    <li data-step-name="complete" class="">
                        <div>
                            <span>견적완료</span>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="modal_leftside_content">
                <h4>원하는 서비스 선택하기</h4>
                <div>원하는 서비스를 선택해 주세요.</div>
            </div>
            <div class="modal_leftside_question">
                <h5>바로문의</h5>
                123-456-7890
            </div>
        </div>
			<div class="modal_center">
				<div class="modal_center_header">
					<h3>서비스를 선택해주세요.</h3>
					<span id="closeServiceCheckModal" class="close">&times;</span>
				</div>
				<div class="serviceCheckModal_center_body">
					<div>
						<div class="serviceCheckBox">
							<%-- ${db데이터 } --%>
						</div>	
					</div>
				</div>
				
				<div class="modal_center_footer">
					<button id="privBtn">이전</button>
					<button id="nextBtn">다음</button>	
						
				</div>			
			</div>
			
			<div class="modal_rightside">
				<div class="modal_rightside_header">
				<p>요약</p>
				</div>
				<div class="service_box">
				<div class="selectedSize" ></div>
				<div class="selectedService" >
					<span id="selectedService"></span>
				</div>
				</div>
				
			</div>
		</div>
</div>
<script>
$(document).ready(function() {
    var sizeModal = $('#sizeModal');
    var closeSizeModalBtn = $('#closeSizeModal');
    var sizeInput = $('#sizeInput');
    var decreaseBtn = $('#decreaseSize');
    var increaseBtn = $('#increaseSize');
    var privBtn = $('#privBtn');

    closeSizeModalBtn.click(function() {
        sizeModal.css('display', 'none');
    });

    decreaseBtn.click(function() {
        var currentSize = parseInt(sizeInput.val());
        if (currentSize > 1) {
            sizeInput.val(currentSize - 1);
        }
    });

    increaseBtn.click(function() {
        var currentSize = parseInt(sizeInput.val());
        if (currentSize < 99) {
            sizeInput.val(currentSize + 1);
        }
    });

    $('#nextBtn').click(function() {
        var selectedSize = $('#sizeInput').val();
        var selectedService = $('#selectedService').text();

        $('.selectedSize').text(selectedSize + '평');
        $('.selectedService').text(selectedService);

        $('.selectedSize, .selectedService').show(); 

        $('#sizeModal').css('display', 'none');
        //다음 단계로 이동하는 로직 추가
    });

    privBtn.click(function() {
        sizeModal.css('display', 'none');
        $('#myModal').css('display', 'block');
    });
});
</script>
</body>
</html>