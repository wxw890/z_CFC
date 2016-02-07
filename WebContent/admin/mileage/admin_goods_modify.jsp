<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ include file="/inc/header1.jsp" %>
<title>������ &gt; ��ǰ����</title>
<%@ include file="/inc/header2.jsp" %>
</head>
<body>

<div class="container adm">
<div class="row">

	<!-- �����޴� -->
	<%@ include file="/inc/snb4_2.jsp" %>
	<!-- //�����޴� -->
	
	<div class="col-xs-9">
	
		<div class="tit">
		<h1>��ǰ ����</h1>
		</div>
		<!-- //tit -->
		
		<div class="cont">
		<form name="goodsform" action="./GoodsModifytAcion/ag" method="post">
			<input type="hidden" name="goods_num" value="" />
			
			<table class="table">
				<caption>��ǰ ����</caption>
	  			<colgroup>
	  			<col width="25%" />
	  			<col width="75%" />
	  			</colgroup>
	  			
				<tbody>
					<tr>
						<th scope="row"><label for="g_cate">ī�װ�</label></th>
						<td>
							<select class="form-control" id="g_cate" name="g_cate" value="">
								<option value="">A</option>
								<option value="">B</option>
								<option value="">C</option>
								<option value="">D</option>
							</select>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="g_name">��ǰ�̸�</label></th>
						<td>
							<div class="form-group">
							  <input type="text" class="form-control" id="g_name" name="g_name" value="" />
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">�̹���</th>
						<td>
							<div class="form-group file">
							  <p><label for="g_img1">��ǰ�̹���1</label></p><input type="file" id="g_img1" name="g_img1" /><br />
							  <p><label for="g_img2">��ǰ�̹���2</label></p><input type="file" id="g_img2" name="g_img2" /><br />
							  <p><label for="g_img3">��ǰ�̹���3</label></p><input type="file" id="g_img3" name="g_img3" />
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="g_txt">��ǰ����</label></th>
						<td>
							<div class="form-group">
							 	<textarea rows="10" cols="50" id="g_txt" name="g_txt">
							 	
							 	</textarea>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="g_price">����</label></th>
						<td>
							<div class="form-group">
							  <input type="text" class="form-control" id="g_price" name="g_price" value="" />
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="g_amount">����</label></th>
						<td>
							<div class="form-group">
							  <input type="text" class="form-control" id="g_amount" name="g_amount" value="" />
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="g_date">�������</label></th>
						<td>
							<div class="form-group">
							  <input type="text" class="form-control" id="g_date" name="g_date" value="" />
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			<!-- //table -->
			
			<ul class="btn_c">
				<li>
					<button type="submit" class="btn btn-primary">����</button>
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
</body>
</html>