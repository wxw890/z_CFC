<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ include file="../inc/header1.jsp"%>
<title>home</title>
<%
	request.setCharacterEncoding("euc-kr");
%>
<%@ include file="../inc/header2.jsp"%>
<body>
	<%@ include file="../inc/gnb.jsp"%>

	<div class="container min">
	<div class="row">
		<!-- �����޴� -->
		<%@ include file="../inc/snb00.jsp"%>
		<!-- //�����޴� -->

		<div class="col-xs-9">

			<jsp:useBean id="dao" class="mybean.Dao" />
			<jsp:useBean id="dto" class="mybean.Dto" />
			<jsp:setProperty property="*" name="dto" />
			<%
					System.out.println(dto.getBo_name());
					dao.setRegister(dto);
				%>
			<div class="regi_ok_w">
				<h1>���ԿϷ�</h1>

				<div class="regi_ok">
					<em>Code For Coding</em> ȸ�������� �����մϴ�!
					<p>����Ͻ� ������ �α��� �Ͻ� �� <span class="f_bold">���������� > ȸ������ ����</span> �޴����� �����Ͻ� �� �ֽ��ϴ�.</p>
					<a class="btn btn-default" href="/z_CFC/register.action?param=HOME">���� �ٷΰ���</a>
				</div>
			</div>

		</div>
		<!-- //col-xs-9 -->
	</div>
	<!-- //row -->

	</div>
	<!-- //container -->

	<%@ include file="../inc/footer.jsp"%>