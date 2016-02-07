<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ include file="../inc/header1.jsp"%>
<title>home</title>
<%@ include file="../inc/header2.jsp"%>
<body>
	<%@ include file="../inc/gnb.jsp"%>

	<div class="container w_fix min">
		<div class="row">
			<!-- 좌측메뉴 -->
			<%@ include file="../inc/snb00.jsp"%>
			<!-- //좌측메뉴 -->

			<div class="col-xs-9">
				<div class="regi_ok_w">
					<h1>아이디 찾기</h1>

					<div class="regi_ok">

						<p class="fz_20 f_bold">입력하신 정보로 가입된 아이디가 존재하지 않습니다.</p>

						<a class="btn btn-default mt_20" href="/z_CFC/register.action?param=IDSEARCH">돌아가기</a>
					</div>
				</div>

			</div>
			<!-- //col-xs-9 -->
		</div>
		<!-- //row -->


	</div>
	<!-- //container -->

	<%@ include file="../inc/footer.jsp"%>