<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ include file="/inc/header1.jsp" %>
<title>관리자 &gt; 상품관리</title>
<%@ include file="/inc/header2.jsp" %>
</head>
<body>

<div class="container adm">
<div class="row">

	<!-- 좌측메뉴 -->
	<%@ include file="/inc/snb4_2.jsp" %>
	<!-- //좌측메뉴 -->
	
	<div class="col-xs-9">
	
		<div class="tit">
		<h1>상품 수정</h1>
		</div>
		<!-- //tit -->
		
		<div class="cont">
		<form name="goodsform" action="./GoodsModifytAcion/ag" method="post">
			<input type="hidden" name="goods_num" value="" />
			
			<table class="table">
				<caption>상품 수정</caption>
	  			<colgroup>
	  			<col width="25%" />
	  			<col width="75%" />
	  			</colgroup>
	  			
				<tbody>
					<tr>
						<th scope="row"><label for="g_cate">카테고리</label></th>
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
						<th scope="row"><label for="g_name">상품이름</label></th>
						<td>
							<div class="form-group">
							  <input type="text" class="form-control" id="g_name" name="g_name" value="" />
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">이미지</th>
						<td>
							<div class="form-group file">
							  <p><label for="g_img1">제품이미지1</label></p><input type="file" id="g_img1" name="g_img1" /><br />
							  <p><label for="g_img2">제품이미지2</label></p><input type="file" id="g_img2" name="g_img2" /><br />
							  <p><label for="g_img3">제품이미지3</label></p><input type="file" id="g_img3" name="g_img3" />
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="g_txt">제품정보</label></th>
						<td>
							<div class="form-group">
							 	<textarea rows="10" cols="50" id="g_txt" name="g_txt">
							 	
							 	</textarea>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="g_price">가격</label></th>
						<td>
							<div class="form-group">
							  <input type="text" class="form-control" id="g_price" name="g_price" value="" />
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="g_amount">수량</label></th>
						<td>
							<div class="form-group">
							  <input type="text" class="form-control" id="g_amount" name="g_amount" value="" />
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="g_date">등록일자</label></th>
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
					<button type="submit" class="btn btn-primary">수정</button>
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
</body>
</html>