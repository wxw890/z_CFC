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
								<h1>회원 탈퇴</h1>
							</div>
							
							<form class="form-horizontal" method="post" action="/z_CFC/register.action?param=DROPUSER">
							
								<div class="form-group">
									<div class="col-xs-4">
										<label for="i_id" class="col-sm-2 control-label">아이디</label>
									</div>
									<div class="col-xs-6">
										<input type="text" class="form-control" value="${sessionScope.id}" readonly="readonly" name="i_id" id="i_id" />
									</div>
								</div>
								
								<div class="form-group">
									<div class="col-xs-4">
										<label for="i_pass" class="col-sm-2 control-label">비밀번호</label>
									</div>
									<div class="col-xs-6">
										<input type="password" name="droppw" class="form-control" id="i_pass" />
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