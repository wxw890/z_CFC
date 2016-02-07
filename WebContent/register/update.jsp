<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ include file="../inc/header1.jsp"%>
<title>���ϸ��� &gt; ���ϸ��� SHOP</title>
<%@ include file="../inc/header2.jsp"%>
<script src="/z_CFC/register/check.js"></script>
<script>
	function fnChkForm(f) {		
		
		if (isEmpty(f.bo_name2, "�̸��� �Է��� �ּ���")) {
			return false;
		}
		if (isEmpty(f.bo_age2, "���̸� �Է��� �ּ���")) {
			return false;
		}
		if (isEmpty(f.bo_email2, "�̸����� �Է��� �ּ���")) {
			return false;
		}
		if (isEqualPass(f.bo_pw2, f.bo_passCheck2)) {
			alert("��й�ȣ�� ���� �ʽ��ϴ�");
			return false;
		}

		return true;

	}
</script>

<body>
<%@ include file="../inc/gnb.jsp" %>

<div class="container w_fix min">
<div class="row">
<!-- �����޴� -->
<%@ include file="../inc/snb00.jsp" %>
<!-- //�����޴� -->
			<div class="col-xs-9">

				<div class="form_regi">
					<div class="contentwrap">
						<article class="container">
							<div class="page-header pd">
								<h1>ȸ�� ���� ���� </h1>
							</div>
							<form class="form-horizontal" action="/z_CFC/register.action?param=UPDATEPROC" method="post" onsubmit="return fnChkForm(this)">
								<div class="form-group">
									<div class="col-xs-3">
										<label for="inputPassword" class="col-sm-2 control-label">��й�ȣ</label>
									</div>
									<div class="col-xs-7">
										<input type="password" class="form-control" name="bo_pw2"
											placeholder="��й�ȣ" >
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-3">
										<label for="inputPasswordCheck" class="col-sm-2 control-label">��й�ȣ
										Ȯ��</label>
									</div>
									<div class="col-xs-7">
										<input type="password" class="form-control"
											name="bo_passCheck2" placeholder="��й�ȣ Ȯ��">
										<p class="help-block">��й�ȣ�� �ѹ� �� �Է����ּ���.</p>
									</div>
								</div>

								<div class="form-group">
									<div class="col-xs-3">
										<label for="inputName" class="col-sm-2 control-label">�̸�</label>
									</div>
									<div class="col-xs-7">
										<input type="text" class="form-control" name="bo_name2"
											placeholder="�̸�" value="${sessionScope.updateDto.getBo_name()}">
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-3">
										<label for="inputAge" class="col-sm-2 control-label">����</label>
									</div>
									<div class="col-xs-7">
										<input type="text" class="form-control" name="bo_age2"
											placeholder="����" value="${sessionScope.updateDto.getBo_age()}">
									</div>
								</div>


								<div class="form-group">
									<div class="col-xs-3">
										<label for="inputEmail" class="col-sm-2 control-label">�̸���</label>
									</div>
									<div class="col-xs-7">
										<input type="Email" class="form-control" name="bo_email2"
											placeholder="�̸���" value="${sessionScope.updateDto.getBo_email()}">
									</div>
								</div>
						
								<div class="form-group">
									<div class="col-xs-12 ta_c">
										<button type="submit" class="btn btn-primary">Ȯ��</button>
									</div>
								</div>
							</form>
						</article>
					</div>
				</div>

			</div>
			<!-- //col-xs-12 -->
		</div>
		<!-- //row -->

	</div>
	<!-- //container -->

	<%@ include file="../inc/footer.jsp"%>