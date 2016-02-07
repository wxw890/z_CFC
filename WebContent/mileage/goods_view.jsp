<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ include file="../inc/header1.jsp" %>
<title>마일리지 &gt; 마일리지 SHOP &gt; 상세페이지</title>
<%@ include file="../inc/header2.jsp" %>
<body>
<%@ include file="../inc/gnb.jsp"%>

	<div class="container w_fix min">
		<div class="row">
			<!-- 좌측메뉴 -->
			<%@ include file="../inc/snb4_1.jsp"%>
			<!-- //좌측메뉴 -->

<div class="col-xs-9">

	<div class="tit">마일리지 SHOP</div>
	
	<hr />
	
	<div class="row">
	
		<div class="col-xs-3">
			<img src="/z_CFC/upload/${sessionScope.dto.getGoods_image()}" />
		</div>
		<!-- //col-xs-3 -->
		
		<div class="col-xs-9">
			<p>상품명 : <span>${sessionScope.dto.getGoods_name()}</span></p>
			<p>가격 : <span>${sessionScope.dto.getGoods_price()}</span></p>
			<p>수량 : <span>${sessionScope.dto.getGoods_amount()}</span></p>
			<p>등록일자 : <span>${sessionScope.dto.getGoods_date()}</span></p>
			<p>제품정보 : <span>${sessionScope.dto.getGoods_content()}</span></p>
			
			
			
			<a href="#">바로구매</a>
		</div>
		<!-- //col-xs-9 -->
	
	</div>
	<!-- //row -->
		

	<!-- //col-xs-12 -->

</div>
<!-- //col-xs-9 -->
</div>
<!-- //row -->

</div>
<!-- //container -->

<%@ include file="../inc/footer.jsp" %>