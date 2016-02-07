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

				<div class="form_regi">
					<div class="contentwrap">
						<article class="container w_fix">
							<div class="page-header">
								<h1>����������</h1>
							</div>
							<form class="form-horizontal"
								action="/z_CFC/register.action?param=REGPROC" method="post" onsubmit="return fnChkForm(this)" name="f1">
								<div class="form-group">
									<div class="col-xs-3">
										<p class="control-label">�̸� : </p>
									</div>
									<div class="col-xs-5">
										${sessionScope.updateDto.getBo_name()}
									</div>
								</div>
								
								<div class="form-group">
									<div class="col-xs-3">
										<p class="control-label">���� : </p>
									</div>
									<div class="col-xs-5">
										${sessionScope.updateDto.getBo_age()}
									</div>
								</div>
								
								<div class="form-group">
									<div class="col-xs-3">
										<p class="control-label">�̸��� : </p>
									</div>
									<div class="col-xs-5">
										${sessionScope.updateDto.getBo_email()}
									</div>
								</div>
								
								<div class="form-group">
									<div class="col-xs-3">
										<p class="control-label">Ǭ ���� : </p>
									</div>
									<div class="col-xs-5">
										${sessionScope.updateDto.getBo_sumatter()}
									</div>
								</div>
								
								<div class="form-group">
									<div class="col-xs-3">
										<p class="control-label">���� ���� : </p>
									</div>
									<div class="col-xs-5">
										${sessionScope.updateDto.getBo_totalmatter()}
									</div>
								</div>
				
							</form>
						</article>
					</div>
				</div>

			</div>
			<!-- //col-xs-9 -->
		</div>
		<!-- //row -->

	</div>
	<!-- //container -->

	<%@ include file="../inc/footer.jsp"%>