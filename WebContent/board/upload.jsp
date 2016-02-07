<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ include file="../inc/header1.jsp" %>
<title>home</title>
<%@ include file="../inc/header2.jsp" %>
<body>
<%@ include file="../inc/gnb.jsp" %>

<div class="container">
<div class="row">
<!-- ÁÂÃø¸Þ´º -->
<%@ include file="../inc/snb00.jsp" %>
<!-- //ÁÂÃø¸Þ´º -->

<div class="col-xs-9">

	<div id="myCarousel" class="carousel slide" data-ride="carousel"> 
		<form method="post" action="/z_CFC/board.action?param=UPLOAD">
		<input type="file" name="up_file" />
		
		
		<input type="submit" value="È®ÀÎ"/>
		</form>
	</div>

</div>
<!-- //span8 -->
</div>
<!-- //row-fluid -->

</div>
<!-- //container -->

<%@ include file="../inc/footer.jsp" %>