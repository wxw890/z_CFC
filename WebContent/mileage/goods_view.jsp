<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ include file="../inc/header1.jsp" %>
<title>���ϸ��� &gt; ���ϸ��� SHOP &gt; ��������</title>
<%@ include file="../inc/header2.jsp" %>
<body>
<%@ include file="../inc/gnb.jsp"%>

	<div class="container w_fix min">
		<div class="row">
			<!-- �����޴� -->
			<%@ include file="../inc/snb4_1.jsp"%>
			<!-- //�����޴� -->

<div class="col-xs-9">

	<div class="tit">���ϸ��� SHOP</div>
	
	<hr />
	
	<div class="row">
	
		<div class="col-xs-3">
			<img src="/z_CFC/upload/${sessionScope.dto.getGoods_image()}" />
		</div>
		<!-- //col-xs-3 -->
		
		<div class="col-xs-9">
			<p>��ǰ�� : <span>${sessionScope.dto.getGoods_name()}</span></p>
			<p>���� : <span>${sessionScope.dto.getGoods_price()}</span></p>
			<p>���� : <span>${sessionScope.dto.getGoods_amount()}</span></p>
			<p>������� : <span>${sessionScope.dto.getGoods_date()}</span></p>
			<p>��ǰ���� : <span>${sessionScope.dto.getGoods_content()}</span></p>
			
			
			
			<a href="#">�ٷα���</a>
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