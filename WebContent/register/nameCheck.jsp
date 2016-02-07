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
<h2>아이디 중복검사</h2>
<form method="post" action="/z_CFC/register.action?param=IDCHECK">
	<input type="hidden" name="param" value="IDSEARCH" />
	<table>
		<tr>
			<td> 아이디 : <input type="text" name="idCheck" value="${sessionScope.checkedid}" />
				&nbsp;&nbsp;<input type="submit" value="검색"  />
			</td>
		</tr>
		<!-- 검색된 결과 리스트 출력 -->
		<tr>
			<td>${sessionScope.idcheck}</td>
		</tr>
		
		
		
	</table>
	<br/><br/>
	
	<input type="button" value="사용하기" onclick="refresh();" />
	<input type="button" value="닫기" onclick="self.close();" />
</form>
</body>
</html>