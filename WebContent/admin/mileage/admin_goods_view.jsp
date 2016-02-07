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
			<h1>상품 보기 </h1>
		</div>
		<!-- //tit -->
		
		<div class="cont">
		
		<form method="post" action="/z_CFC/goods.action?param=GoodsConfirm_adm">
			<table class="table">
				<caption>상품 보기</caption>
	  			<colgroup>
	  			<col width="25%" />
	  			<col width="75%" />
	  			</colgroup>
	  			
				<tbody>
					<tr>
						<th scope="row"><label for="g_name">상품이름</label></th>
						<td>
							${sessionScope.dto.getGoods_name()}
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="g_cate">카테고리</label></th>
						<td>
							${sessionScope.dto.getGoods_category()}
						</td>
					</tr>
					<tr>
						<th scope="row">이미지</th>
						<td>
							${sessionScope.dto.getGoods_image()}
							<img src="/z_CFC/upload/${sessionScope.dto.getGoods_image()}" />
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="g_txt">제품정보</label></th>
						<td>
							${sessionScope.dto.getGoods_content()}
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="g_price">가격</label></th>
						<td>
							${sessionScope.dto.getGoods_price()}
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="g_amount">수량</label></th>
						<td>
							${sessionScope.dto.getGoods_amount()}
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="g_date">등록일자</label></th>
						<td>
							${sessionScope.dto.getGoods_date()}
						</td>
					</tr>
				</tbody>
			</table>
			<!-- //table -->
			
			<ul class="btn_c_">
	 			<li>
	 				<a class="btn btn-default" href="/z_CFC/goods.action?param=GoodsList_adm">목 록</a>
	 			</li>
	 			<li>
	 				<a class="btn btn-default" href="/z_CFC/goods.action?param=GoodsDelete_adm&b_num=${sessionScope.dto.getGoods_num()}">삭 제</a>
	 				
	 			</li>
	 			<li>
	 				<a class="btn btn-default" href="/z_CFC/goods.action?param=GoodsUpdate_adm&b_num=${sessionScope.dto.getGoods_num()}">수 정</a>
	 				
	 			</li>
			</ul> 
			
<hr size=1>

	 <a href="/z_CFC/board.action?param=PROBOARD">목 록 </a> 
	<a href="">답 변</a> 
	<a href="">수 정</a> 
	<a href="">삭 제</a> <br>

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


<%@ include file="../../inc/footer.jsp" %>