<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ include file="../inc/header1.jsp"%>
<title>home</title>

<%@ include file="../inc/header2.jsp"%>
<body oncontextmenu="return false">
	<%@ include file="../inc/gnb.jsp"%>

	<div class="container">
		<div class="row">
			<!-- �����޴� -->
			<%@ include file="../inc/snb00.jsp"%>
			<!-- //�����޴� -->

			<div class="col-xs-9">

				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<center>

						<table width=80% cellspacing=0 cellpadding=3 align=center>
							<form name=post method=post action="/z_CFC/board.action?param=REGBOARD">
								<input type="hidden" name="b_ip"
									value="<%=request.getRemoteAddr()%>" />
								<tr>
									<td align=center>
										<table border=0 width=100% align=cente>
											<tr>
												<td width=10%>���Ӹ�<br />
												<br /></td>
												<td width=90%><select class="select" name="b_level"
													maxlength="30">
														<option>�ʱ�</option>
														<option>�߱�</option>
														<option>����</option>
												</select><br />
												<br /></td>
											</tr>
											<tr>
												<td width=10%>����<br />
												<br /></td>
												<td width=90%><input type=text name="b_title" size=30
													maxlength=30 class="field"><br />
												<br /></td>
											</tr>
											<br />
											<tr>
												<td width=10%>����<br />
												<br /></td>
												<td width=90%><textarea name="b_content" rows=10
														cols=50 class="field"></textarea>
												<br /></td>
											</tr>
											<tr>
												<td width=10%>����<br />
												<br /></td>
												<td width=90%><input type="file" name="b_file" size=50
													maxlength=30 class="fileMargin"><br />
												<br /></td>
											</tr>
											<tr>
												<td width=10%>����<br />
												<br /></td>
												<td width=90%><input type="text" name="b_answer"
													size=15 maxlength=15 class="searchButton"><br />
												<br /></td>
											</tr>
											<tr>
												<td width=10%>���ϸ���<br />
												<br /></td>
												<td width=90%><input type="text" name="b_mileage"
													size=15 maxlength=15 class="searchButton"><br />
												<br /></td>
											</tr>
											<tr>
												<td width=10%>��й�ȣ<br />
												<br /></td>
												<td width=90%><input type="password" name="b_pass"
													size=15 maxlength=15 class="searchButton"><br />
												<br /></td>
											</tr>
											<tr>
												<td colspan=2><hr size=1></td>
											</tr>
											<tr>
												<td colspan="2">
												<ul class="btn_fl">
												<li><input type=submit value="���" /></li>
												<li><input type=reset value="�ٽþ���" /></li>
												</ul>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</form>
						</table>
					</center>
				</div>

			</div>
			<!-- //span8 -->
		</div>
		<!-- //row-fluid -->

	</div>
	<!-- //container -->

	<%@ include file="../inc/footer.jsp"%>