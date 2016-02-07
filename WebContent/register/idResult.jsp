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
						<em>${sessionScope.idsearch}</em>님 안녕하세요!
						<p class="fz_20">
							회원님의 아이디는 <span class="f_bold">${sessionScope.idsearch}</span>
							입니다.
						</p>
						<a class="btn btn-default"
							href="/z_CFC/register.action?param=HOME">메인 바로가기</a>
					</div>
				</div>

			</div>
			<!-- //col-xs-9 -->
		</div>
		<!-- //row -->

	</div>
	<!-- //container -->

	<%@ include file="../inc/footer.jsp"%>