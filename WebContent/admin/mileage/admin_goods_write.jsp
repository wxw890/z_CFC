<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ include file="/inc/header1.jsp"%>
<title>������ &gt; ���ϸ��� &gt; ��ǰ ���</title>
<%@ include file="/inc/header2.jsp"%>
<script src="/z_CFC/register/check.js"></script>
<script>
	function fnChkForm(f) {

		if (isEmpty(f.g_name, "��ǰ�̸��� �Է��� �ּ���")) {
			return false;
		}

		if (isEmpty(f.g_content, "��ǰ������ �Է��� �ּ���")) {
			return false;
		}

		if (isEmpty(f.g_price, "������ �Է��� �ּ���")) {
			return false;
		}

		if (isEmpty(f.g_amount, "������ �Է��� �ּ���")) {
			return false;
		}

		return true;

	}
</script>
</head>
<body>
	<%@ include file="/inc/gnb.jsp"%>

	<div class="container w_fix min adm">
		<div class="row">
			<!-- �����޴� -->
			<%@ include file="/inc/snb4_3.jsp"%>
			<!-- //�����޴� -->

			<div class="col-xs-9">

				<div class="page-header">
					<h1>��ǰ ���</h1>
				</div>
				<!-- //tit -->

				<div class="cont">
					<form name="goodsform"
						action="/z_CFC/goods.action?param=GoodsConfirm_adm" method="post"
						onsubmit="return fnChkForm(this)" enctype="multipart/form-data">

						<table class="table">
							<caption>��ǰ ���</caption>
							<colgroup>
								<col width="25%" />
								<col width="75%" />
							</colgroup>

							<tbody>
								<tr>
									<th scope="row"><label for="g_cate">ī�װ�</label></th>
									<td><select class="form-control" id="g_cate" name="g_cate">
											<option value="a">A</option>
											<option value="b">B</option>
											<option value="c">C</option>
											<option value="d">D</option>
									</select></td>
								</tr>
								<tr>
									<th scope="row"><label for="g_name">��ǰ�̸�</label></th>
									<td>
										<div class="form-group">
											<input type="text" class="form-control" id="g_name"
												name="g_name" />
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row">�̹���</th>
									<td>
										<div class="form-group file">
											<p>
												<label for="g_img1">��ǰ�̹���</label>
											</p>
											<input type="file" id="g_img1" name="g_img1" />
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="g_content">��ǰ����</label></th>
									<td>
										<div class="form-group">
											<textarea rows="10" cols="50" id="g_content" name="g_content"></textarea>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="g_price">����</label></th>
									<td>
										<div class="form-group">
											<input type="text" class="form-control" id="g_price"
												name="g_price" />
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="g_amount">����</label></th>
									<td>
										<div class="form-group">
											<input type="text" class="form-control" id="g_amount"
												name="g_amount" />
										</div>
									</td>
								</tr>

							</tbody>
						</table>
						<!-- //table -->

						<ul class="btn_c">
							<li>
								<button type="submit" class="btn btn-primary">���</button>
							</li>
							<li>
								<button type="reset" class="btn btn-primary">�ٽþ���</button>
							</li>
						</ul>

					</form>
				</div>
				<!-- //cont -->

			</div>
			<!-- //col-xs-9 -->
		</div>
		<!-- //row -->

	</div>
	<!-- //container -->

	<%@ include file="/inc/footer.jsp"%>