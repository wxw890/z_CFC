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
				<div class="loginPadding">

					<div class="loginForm">
						<form method="post"
							action="/z_CFC/register.action?param=LOGINPROC">
							<table>
								<tr>
									<td><label for="inputId">���̵�</label></td>&nbsp;&nbsp;&nbsp;
									<td><input type="text" name="log_id" placeholder="���̵�" /></td>
								</tr>

								<tr>
									<td><label for="inputPw">��й�ȣ</label>&nbsp;&nbsp;&nbsp;</td>
									<td><input type="password" name="log_pw"
										placeholder="��й�ȣ" /></td>
								</tr>
								<tr>
									<td colspan="2"><button type="submit"
											class="loginFormBtn btn btn-primary">Ȯ��</button></td>
								</tr>

							</table>


						</form>
					</div>
				</div>

			</div>
			<!-- //col-xs-9 -->
		</div>
		<!-- //row -->

	</div>
	<!-- //container -->

	<%@ include file="../inc/footer.jsp"%>