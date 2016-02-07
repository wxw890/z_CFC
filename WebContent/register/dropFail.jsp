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
					<h1>회원탈퇴</h1>

					<div class="regi_ok">
						<em>Code For Coding</em> 회원탈퇴가 완료되지 않았습니다.
						<p>비밀번호가 다릅니다.</p>
						<a class="btn btn-default"
							href="/z_CFC/register.action?param=GODROP">뒤로가기</a>
					</div>
				</div>

			</div>
			<!-- //span8 -->
		</div>
		<!-- //row-fluid -->

	</div>
	<!-- //container -->

	<%@ include file="../inc/footer.jsp"%>