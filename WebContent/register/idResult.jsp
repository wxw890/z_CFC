<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ include file="../inc/header1.jsp"%>
<title>home</title>
<%@ include file="../inc/header2.jsp"%>
<body>
	<%@ include file="../inc/gnb.jsp"%>

	<div class="container w_fix min">
		<div class="row">
			<!-- �����޴� -->
			<%@ include file="../inc/snb00.jsp"%>
			<!-- //�����޴� -->
			
			<div class="col-xs-9">
				<div class="regi_ok_w">
					<h1>���̵� ã��</h1>

					<div class="regi_ok">
						<em>${sessionScope.idsearch}</em>�� �ȳ��ϼ���!
						<p class="fz_20">
							ȸ������ ���̵�� <span class="f_bold">${sessionScope.idsearch}</span>
							�Դϴ�.
						</p>
						<a class="btn btn-default"
							href="/z_CFC/register.action?param=HOME">���� �ٷΰ���</a>
					</div>
				</div>

			</div>
			<!-- //col-xs-9 -->
		</div>
		<!-- //row -->

	</div>
	<!-- //container -->

	<%@ include file="../inc/footer.jsp"%>