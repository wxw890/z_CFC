<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ include file="../inc/header1.jsp" %>
<title>home</title>
<%@ include file="../inc/header2.jsp" %>
<body>
<%@ include file="../inc/gnb.jsp" %>
<!-- �����޴� -->
<%@ include file="../inc/snb01.jsp" %>
<!-- //�����޴� -->
<div class="container adm">
<div class="row">


<div class="col-xs-9">

	<div class="cont"> 
	<table class="table">
		<caption>�ۺ���</caption>
		<colgroup>
		<col width="25%" />
		<col width="75%" />
		</colgroup>
		<tr>
			<td colspan="6" bgcolor=#dddddd height=25 align=left class=m colspan=2>${sessionScope.dto.getNoticetitle()}</td>
		</tr>
	    <tr> 
			<td align=left bgcolor=#dddddd width=10%> �� �� </td>
			<td>${sessionScope.id} </td>
			<td align=left bgcolor=#dddddd width=10%> ��ϳ�¥ </td>
			<td>${sessionScope.dto.getNoticedate()}</td>
			<td align=left bgcolor=#dddddd width=10%> ��ȸ�� </td>
			<td>${sessionScope.dto.getNoticecount() }</td>
			<td align=left bgcolor=#dddddd width=10%> ���ϸ���</td>
			<td>${sessionScope.dto.getMileage()}</td>
		</tr>
		<tr> 
			<td>${sessionScope.dto.getNoticecontext()}</td>
			<td>${sessionScope.dto.getNoticenum()}</td>
		</tr>
		<tr>
			<td colspan=4 align=right></td>
		</tr>
		<tr>
			<td>����</td>
			<form method="post" action="/z_CFC/board.action?param=CONFIRM">
			
			<td> <input type="text" name="answer"/></td>
			<td><input type="submit" value="Ȯ��"/>
			<input type="hidden" name ="b_num" value="${sessionScope.dto.getNoticenum()}"/>
			</form>
		</tr>
	</table>
 
	<hr size=1>
	 <a href="/z_CFC/board.action?param=PROBOARD">�� ��</a> 
	<a href="">�� ��</a> 
	<a href="/z_CFC/board.action?param=ALTERBOARD">�� ��</a> 
	<a href="/z_CFC/board.action?param=DELETEBOARD&b_num=${sessionScope.dto.getNoticenum()}">�� ��</a> <br>
	
<form name="list" method="post" action="List.jsp">
	<input type="hidden" name="keyField" value="" />
	<input type="hidden" name="keyWord" value="" />
	<input type="hidden" name="b_num" value="" />
</form>
	</div>

</div>
<!-- //span8 -->
</div>
<!-- //row-fluid -->

</div>
<!-- //container -->

<%@ include file="../inc/footer.jsp" %>