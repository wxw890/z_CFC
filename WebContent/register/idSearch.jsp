<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ include file="../inc/header1.jsp"%>
<title>home</title>
<%@ include file="../inc/header2.jsp"%>
<body>
	<%@ include file="../inc/gnb.jsp"%>

	<div class="container w_fix min">
		<div class="row">
			<!-- 좌측메뉴 -->
			<%@ include file="../inc/snb00.jsp"%>
			<!-- //좌측메뉴 -->
			<div class="col-xs-9">

				<div class="form_regi drop">
					<div class="contentwrap">
						<article class="container">
							<div class="page-header">
								<h1>아이디 찾기</h1>
							</div>
							
							<form class="form-horizontal" method="post"	action="/z_CFC/register.action?param=IDSEARCHPROC">
								<div class="form-group">
									<div class="col-xs-4">
										<label for="ids_name" class="col-sm-2 control-label">이름</label>
									</div>
									<div class="col-xs-6">
										<input type="text" class="form-control" name="ids_name" id="ids_name" />
									</div>
								</div>
								
								<div class="form-group">
									<div class="col-xs-4">
										<label for="ids_email" class="col-sm-2 control-label">이메일</label>
									</div>
									<div class="col-xs-6">
										<input type="text" class="form-control" name="ids_email" id="ids_email" />
									</div>
								</div>
								
								<div class="form-group">
									<div class="col-xs-12 ta_c">
										 <input class="btn btn-primary" type="submit" value="확인" />
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