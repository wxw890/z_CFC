<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../inc/header1.jsp" %>
<title>home</title>
<%@ include file="../inc/header2.jsp" %>
<body>
<%@ include file="../inc/gnb.jsp" %>

<div class="container">
<div class="row">
<!-- 좌측메뉴 -->
<!-- <%@ include file="../inc/snb00.jsp" %> -->
<!-- //좌측메뉴 -->

<div class="col-xs-9">

	<div id="myCarousel" class="carousel slide" data-ride="carousel" align="center"> 
		<h1 >메인 입니다~</h1>
		내용 : ${sessionScope.id} 
	</div>

</div>
<!-- //col-xs-9 -->
</div>
<!-- //row -->

</div>
<!-- //container -->

<%@ include file="../inc/footer.jsp" %>