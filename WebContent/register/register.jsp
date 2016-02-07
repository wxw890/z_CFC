<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ include file="../inc/header1.jsp"%>
<title>���ϸ��� &gt; ���ϸ��� SHOP</title>
<script src="/z_CFC/register/check.js"></script>
<script>
	function fnChkForm(f) {
		
		if (isEmpty(f.bo_id, "���̵� �Է��� �ּ���")) {
			return false;
		}

		if (isEmpty(f.bo_name, "�̸��� �Է��� �ּ���")) {
			return false;
		}
		if (isEmpty(f.bo_age, "���̸� �Է��� �ּ���")) {
			return false;
		}
		if (isGender(f.bo_gender,"������ üũ���ּ���")){
			return false
		}
		if (isEmpty(f.bo_email, "�̸����� �Է��� �ּ���")) {
			return false;
		}
		if (isAgree(f.bo_agree,"����� �������ּ���")){
			return false
		}

		if (isID(f.bo_id)) {
			alert("���̵� ����� �Է��� �ּ���");
			return false;
		}

		if (isEqualPass(f.bo_pass, f.bo_passCheck)) {
			alert("��й�ȣ�� ���� �ʽ��ϴ�");
			return false;
		}

		return true;

	}

	function fnZipSearch() {
		window.open("/z_CFC/register/nameCheck.jsp", "",
				"toolbars=no,width=500,height=400,scrollbars=yes");
	}
</script>
<%@ include file="../inc/header2.jsp"%>

<body>
	<%@ include file="../inc/gnb.jsp"%>

	<div class="container w_fix min">
		<div class="row">

			<div class="col-xs-12">

				<div class="form_regi">
					<div class="contentwrap">
						<article class="container w_fix">
							<div class="page-header">
								<h1>ȸ������</h1>
							</div>
							<form class="form-horizontal"
								action="/z_CFC/register.action?param=REGPROC" method="post" onsubmit="return fnChkForm(this)" name="f1">
								<div class="form-group">
									<div class="col-xs-3">
										<label for="inputId" class="col-xs-2 control-label">���̵�</label>
									</div>
									<div class="col-xs-5">
										<input type="text" class="form-control" name="bo_id"
											placeholder="���̵�" readonly="readonly" value="${sessionScope.checkedid}">
									</div>
									<div class="col-xs-2" style="margin-left: -20px;">
										<input type="button" class="btn btn-primary dupl" value="�ߺ��˻�"
											onclick="fnZipSearch()">
									</div>

								</div>

								<div class="form-group">
									<div class="col-xs-3">
									<label for="inputPassword" class="col-xs-2 control-label">��й�ȣ</label>
									</div>
									<div class="col-xs-7">
										<input type="password" class="form-control" name="bo_pw"
											placeholder="��й�ȣ">
										<p class="help-block">����, Ư������ ���� 8�� �̻�</p>
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-3">
									<label for="inputPasswordCheck" class="col-xs-2 control-label">��й�ȣ
										Ȯ��</label>
									</div>
									<div class="col-xs-7">
										<input type="password" class="form-control"
											name="bo_passCheck" placeholder="��й�ȣ Ȯ��">
										<p class="help-block">��й�ȣ�� �ѹ� �� �Է����ּ���.</p>
									</div>
								</div>

								<div class="form-group">
									<div class="col-xs-3">
									<label for="inputName" class="col-xs-2 control-label">�̸�</label>
									</div>
									<div class="col-xs-7">
										<input type="text" class="form-control" name="bo_name"
											placeholder="�̸�">
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-3">
									<label for="inputAge" class="col-xs-2 control-label">����</label>
									</div>
									<div class="col-xs-7">
										<input type="text" class="form-control" name="bo_age"
											placeholder="����">
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-3">
									<label for="inputAge" class="col-xs-2 control-label">����</label>
									</div>
									<div class="col-xs-7 lh">
										<input type="radio" class="form-control" name="bo_gender" id="bo_gender1" value="����"><label for="bo_gender1">��</label> &nbsp;&nbsp;
										<input type="radio" class="form-control" name="bo_gender" id="bo_gender2" value="����"><label for="bo_gender2">��</label>
									</div>
								</div>


								<div class="form-group">
									<div class="col-xs-3">
									<label for="inputEmail" class="col-xs-2 control-label">�̸���</label>
									</div>
									<div class="col-xs-7">
										<input type="Email" class="form-control" name="bo_email"
											placeholder="�̸���">
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-3">
										<label for="inputAgree" class="col-xs-2 control-label">��� ����</label>
									</div>
									<div class="col-xs-7 checkbox">
										<input id="agree" type="checkbox" name="bo_agree" /> 
										<label for="agree"><a href="/agreement">&nbsp; �̿���</a>�� �����մϴ�.</label>
									</div>
								</div>
								<div class="form-group">
									<label for="inputName" class="col-xs-2 control-label"></label>

									<div class="col-xs-12 ta_c mt_20">
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
		<!-- //row-->

	</div>
	<!-- //container -->

	<%@ include file="../inc/footer.jsp"%>