<%@page import="mybean.Dto"%>
<%@page import="java.util.Vector"%>
<%@ page  contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script>
	function refresh(){
		window.opener.location.reload();
		window.close();
	}
</script>
</head>
<body>
<h2>���̵� �ߺ��˻�</h2>
<form method="post" action="/z_CFC/register.action?param=IDCHECK">
	<input type="hidden" name="param" value="IDSEARCH" />
	<table>
		<tr>
			<td> ���̵� : <input type="text" name="idCheck" value="${sessionScope.checkedid}" />
				&nbsp;&nbsp;<input type="submit" value="�˻�"  />
			</td>
		</tr>
		<!-- �˻��� ��� ����Ʈ ��� -->
		<tr>
			<td>${sessionScope.idcheck}</td>
		</tr>
		
		
		
	</table>
	<br/><br/>
	
	<input type="button" value="����ϱ�" onclick="refresh();" />
	<input type="button" value="�ݱ�" onclick="self.close();" />
</form>
</body>
</html>