<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ include file="../inc/header1.jsp" %>
<title>home</title>
<%@ include file="../inc/header2.jsp" %>
<body>
<%@ include file="../inc/gnb.jsp" %>
<!-- 좌측메뉴 -->
<%@ include file="../inc/snb00.jsp" %>
<!-- //좌측메뉴 -->
<div class="container">
<div class="row">


<div class="col-xs-9">

	<div id="myCarousel" class="carousel slide" data-ride="carousel"> 
		<h1>비밀번호 찾기</h1>
		<form method="post" action="/z_CFC/register.action?param=HOME">
		<div>비밀번호는 ${sessionScope.pwsearch }입니다</div>
		<input type="submit"  value="홈으로" />
		</form>
	</div>

</div>
<!-- //span8 -->
</div>
<!-- //row-fluid -->

</div>
<!-- //container -->

<%@ include file="../inc/footer.jsp" %>