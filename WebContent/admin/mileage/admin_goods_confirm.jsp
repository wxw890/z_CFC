<%@ page contentType="text/html; charset=EUC-KR"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<%@ include file="/inc/header1.jsp"%>
<title>������ &gt; ���ϸ��� &gt; ��ǰ ��� �Ϸ�</title>
<%@ include file="/inc/header2.jsp" %>
<body>
	<%@ include file="/inc/gnb.jsp"%>

	<div class="container w_fix min">
		<div class="row">
			<!-- �����޴� -->
			<%@ include file="/inc/snb4_3.jsp"%>
			<!-- //�����޴� -->

			<div class="col-xs-9">

				<div class="regi_ok">
					��ǰ����� ���������� �Ϸ�Ǿ����ϴ�.<br />
					<a href="/z_CFC/goods.action?param=GoodsList_adm">Ȩ����</a>
				</div>
				<!-- //regi_ok -->

			</div>	
			<!-- //col-xs-9 -->
		</div>
		<!-- //row -->

	</div>
	<!-- //container -->

<%@ include file="/inc/footer.jsp"%>