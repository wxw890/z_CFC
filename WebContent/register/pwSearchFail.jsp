<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ include file="../inc/header1.jsp" %>
<title>home</title>
<%@ include file="../inc/header2.jsp" %>
<body>
<%@ include file="../inc/gnb.jsp" %>
<!-- �����޴� -->
<%@ include file="../inc/snb00.jsp" %>
<!-- //�����޴� -->
<div class="container">
<div class="row">


<div class="col-xs-9">

	<div id="myCarousel" class="carousel slide" data-ride="carousel"> 
		<h1>��й�ȣ ã��</h1>
		<form method="post" action="/z_CFC/register.action?param=PWSEARCH">
		<div>�´� ������ �����ϴ�</div>
		<input type="submit"  value="Ȩ����" />
		</form>
	</div>

</div>
<!-- //span8 -->
</div>
<!-- //row-fluid -->

</div>
<!-- //container -->

<%@ include file="../inc/footer.jsp" %>