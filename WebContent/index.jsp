<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../inc/header1.jsp" %>
<title>home</title>
<%@ include file="../inc/header2.jsp" %>
<body>
<%@ include file="../inc/gnb.jsp" %>

<div class="container">
<div class="row">
<!-- �����޴� -->
<!-- <%@ include file="../inc/snb00.jsp" %> -->
<!-- //�����޴� -->

<div class="col-xs-9">

	<div id="myCarousel" class="carousel slide" data-ride="carousel" align="center"> 
		<h1 >���� �Դϴ�~</h1>
		���� : ${sessionScope.id} 
	</div>

</div>
<!-- //col-xs-9 -->
</div>
<!-- //row -->

</div>
<!-- //container -->

<%@ include file="../inc/footer.jsp" %>