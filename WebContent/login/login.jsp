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
				<div class="loginPadding">

					<div class="loginForm">
						<form method="post"
							action="/z_CFC/register.action?param=LOGINPROC">
							<table>
								<tr>
									<td><label for="inputId">아이디</label></td>&nbsp;&nbsp;&nbsp;
									<td><input type="text" name="log_id" placeholder="아이디" /></td>
								</tr>

								<tr>
									<td><label for="inputPw">비밀번호</label>&nbsp;&nbsp;&nbsp;</td>
									<td><input type="password" name="log_pw"
										placeholder="비밀번호" /></td>
								</tr>
								<tr>
									<td colspan="2"><button type="submit"
											class="loginFormBtn btn btn-primary">확인</button></td>
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