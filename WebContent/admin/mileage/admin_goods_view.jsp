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
			<h1>��ǰ ���� </h1>
		</div>
		<!-- //tit -->
		
		<div class="cont">
		
		<form method="post" action="/z_CFC/goods.action?param=GoodsConfirm_adm">
			<table class="table">
				<caption>��ǰ ����</caption>
	  			<colgroup>
	  			<col width="25%" />
	  			<col width="75%" />
	  			</colgroup>
	  			
				<tbody>
					<tr>
						<th scope="row"><label for="g_name">��ǰ�̸�</label></th>
						<td>
							${sessionScope.dto.getGoods_name()}
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="g_cate">ī�װ�</label></th>
						<td>
							${sessionScope.dto.getGoods_category()}
						</td>
					</tr>
					<tr>
						<th scope="row">�̹���</th>
						<td>
							${sessionScope.dto.getGoods_image()}
							<img src="/z_CFC/upload/${sessionScope.dto.getGoods_image()}" />
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="g_txt">��ǰ����</label></th>
						<td>
							${sessionScope.dto.getGoods_content()}
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="g_price">����</label></th>
						<td>
							${sessionScope.dto.getGoods_price()}
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="g_amount">����</label></th>
						<td>
							${sessionScope.dto.getGoods_amount()}
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="g_date">�������</label></th>
						<td>
							${sessionScope.dto.getGoods_date()}
						</td>
					</tr>
				</tbody>
			</table>
			<!-- //table -->
			
			<ul class="btn_c_">
	 			<li>
	 				<a class="btn btn-default" href="/z_CFC/goods.action?param=GoodsList_adm">�� ��</a>
	 			</li>
	 			<li>
	 				<a class="btn btn-default" href="/z_CFC/goods.action?param=GoodsDelete_adm&b_num=${sessionScope.dto.getGoods_num()}">�� ��</a>
	 				
	 			</li>
	 			<li>
	 				<a class="btn btn-default" href="/z_CFC/goods.action?param=GoodsUpdate_adm&b_num=${sessionScope.dto.getGoods_num()}">�� ��</a>
	 				
	 			</li>
			</ul> 
			
<hr size=1>

	 <a href="/z_CFC/board.action?param=PROBOARD">�� �� </a> 
	<a href="">�� ��</a> 
	<a href="">�� ��</a> 
	<a href="">�� ��</a> <br>

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


<%@ include file="../../inc/footer.jsp" %>