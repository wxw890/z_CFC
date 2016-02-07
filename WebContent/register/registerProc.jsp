<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ include file="../inc/header1.jsp"%>
<title>home</title>
<%
	request.setCharacterEncoding("euc-kr");
%>
<%@ include file="../inc/header2.jsp"%>
<body>
	<%@ include file="../inc/gnb.jsp"%>

	<div class="container min">
	<div class="row">
		<!-- 좌측메뉴 -->
		<%@ include file="../inc/snb00.jsp"%>
		<!-- //좌측메뉴 -->

		<div class="col-xs-9">

			<jsp:useBean id="dao" class="mybean.Dao" />
			<jsp:useBean id="dto" class="mybean.Dto" />
			<jsp:setProperty property="*" name="dto" />
			<%
					System.out.println(dto.getBo_name());
					dao.setRegister(dto);
				%>
			<div class="regi_ok_w">
				<h1>가입완료</h1>

				<div class="regi_ok">
					<em>Code For Coding</em> 회원가입을 축하합니다!
					<p>등록하신 정보는 로그인 하신 후 <span class="f_bold">마이페이지 > 회원정보 수정</span> 메뉴에서 변경하실 수 있습니다.</p>
					<a class="btn btn-default" href="/z_CFC/register.action?param=HOME">메인 바로가기</a>
				</div>
			</div>

		</div>
		<!-- //col-xs-9 -->
	</div>
	<!-- //row -->

	</div>
	<!-- //container -->

	<%@ include file="../inc/footer.jsp"%>