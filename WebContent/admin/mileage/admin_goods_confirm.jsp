<%@ page contentType="text/html; charset=EUC-KR"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<%@ include file="/inc/header1.jsp"%>
<title>관리자 &gt; 마일리지 &gt; 상품 등록 완료</title>
<%@ include file="/inc/header2.jsp" %>
<body>
	<%@ include file="/inc/gnb.jsp"%>

	<div class="container w_fix min">
		<div class="row">
			<!-- 좌측메뉴 -->
			<%@ include file="/inc/snb4_3.jsp"%>
			<!-- //좌측메뉴 -->

			<div class="col-xs-9">

				<div class="regi_ok">
					상품등록이 정상적으로 완료되었습니다.<br />
					<a href="/z_CFC/goods.action?param=GoodsList_adm">홈으로</a>
				</div>
				<!-- //regi_ok -->

			</div>	
			<!-- //col-xs-9 -->
		</div>
		<!-- //row -->

	</div>
	<!-- //container -->

<%@ include file="/inc/footer.jsp"%>