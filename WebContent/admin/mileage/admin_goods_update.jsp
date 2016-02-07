<%@page import="goods.GoodsDao"%>
<%@page import="goods.GoodsDto"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<%
	int b_num = Integer.parseInt(request.getParameter("b_num"));
	System.out.println("b_num!!!!!!:"+b_num);
	GoodsDao dao = new GoodsDao();
	GoodsDto dto = dao.getGoods(b_num);
	System.out.println("모냠:"+dto.getGoods_name());


%>
<%@ include file="/inc/header1.jsp"%>
<title>관리자 &gt; 마일리지 &gt; 상품 등록</title>
<%@ include file="/inc/header2.jsp"%>
<script src="/z_CFC/register/check.js"></script>
<script>
	function fnChkForm(f) {

		if (isEmpty(f.g_name, "상품이름를 입력해 주세요")) {
			return false;
		}

		if (isEmpty(f.g_content, "제품정보를 입력해 주세요")) {
			return false;
		}

		if (isEmpty(f.g_price, "가격을 입력해 주세요")) {
			return false;
		}

		if (isEmpty(f.g_amount, "수량을 입력해 주세요")) {
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
			<!-- 좌측메뉴 -->
			<%@ include file="/inc/snb4_3.jsp"%>
			<!-- //좌측메뉴 -->

			<div class="col-xs-9">

				<div class="page-header">
					<h1>상품 등록</h1>
				</div>
				<!-- //tit -->

				<div class="cont">
					<form name="goodsform"
						action="/z_CFC/admin/mileage/admin_goods_update_proc.jsp?b_num=<%=b_num%>" method="post"
						onsubmit="return fnChkForm(this)" enctype="multipart/form-data">
					
						<table class="table">
							<caption>상품 등록(수정)</caption>
							<colgroup>
								<col width="25%" />
								<col width="75%" />
							</colgroup>

							<tbody>
								<tr>
									<th scope="row"><label for="g_cate">카테고리</label></th>
									<td><input type="text" class="form-control" id="g_cate" name="g_cate" value=<%=dto.getGoods_category()%>>
											</td>
								</tr>
								<tr>
									<th scope="row"><label for="g_name">상품이름</label></th>
									<td>
										<div class="form-group">
											<input type="text" class="form-control" 
												name="g_name" value="<%=dto.getGoods_name()%>"/>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row">이미지</th>
									<td>
										<div class="form-group file">
											<p>
												<label for="<%=dto.getGoods_image() %>">제품이미지</label>
											</p>
											<input type="file" id="g_img1" name="g_img1" />
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="g_content">제품정보</label></th>
									<td>
										<div class="form-group">
											<textarea rows="10" cols="50" id="g_content" name="g_content"><%=dto.getGoods_content()%></textarea>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="g_price">가격</label></th>
									<td>
										<div class="form-group">
											<input type="text" class="form-control" id="g_price"
												name="g_price" value="<%=dto.getGoods_price()%>" />
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="g_amount">수량</label></th>
									<td>
										<div class="form-group">
											<input type="text" class="form-control" id="g_amount"
												name="g_amount" value="<%=dto.getGoods_amount()%>" />
										</div>
									</td>
								</tr>

							</tbody>
						</table>
						<!-- //table -->

						<ul class="btn_c">
							<li>
								<button type="submit" class="btn btn-primary">등록</button>
							</li>
							<li>
								<button type="reset" class="btn btn-primary">다시쓰기</button>
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