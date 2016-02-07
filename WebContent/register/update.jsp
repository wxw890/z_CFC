<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ include file="../inc/header1.jsp"%>
<title>마일리지 &gt; 마일리지 SHOP</title>
<%@ include file="../inc/header2.jsp"%>
<script src="/z_CFC/register/check.js"></script>
<script>
	function fnChkForm(f) {		
		
		if (isEmpty(f.bo_name2, "이름을 입력해 주세요")) {
			return false;
		}
		if (isEmpty(f.bo_age2, "나이를 입력해 주세요")) {
			return false;
		}
		if (isEmpty(f.bo_email2, "이메일을 입력해 주세요")) {
			return false;
		}
		if (isEqualPass(f.bo_pw2, f.bo_passCheck2)) {
			alert("비밀번호가 맞지 않습니다");
			return false;
		}

		return true;

	}
</script>

<body>
<%@ include file="../inc/gnb.jsp" %>

<div class="container w_fix min">
<div class="row">
<!-- 좌측메뉴 -->
<%@ include file="../inc/snb00.jsp" %>
<!-- //좌측메뉴 -->
			<div class="col-xs-9">

				<div class="form_regi">
					<div class="contentwrap">
						<article class="container">
							<div class="page-header pd">
								<h1>회원 정보 수정 </h1>
							</div>
							<form class="form-horizontal" action="/z_CFC/register.action?param=UPDATEPROC" method="post" onsubmit="return fnChkForm(this)">
								<div class="form-group">
									<div class="col-xs-3">
										<label for="inputPassword" class="col-sm-2 control-label">비밀번호</label>
									</div>
									<div class="col-xs-7">
										<input type="password" class="form-control" name="bo_pw2"
											placeholder="비밀번호" >
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-3">
										<label for="inputPasswordCheck" class="col-sm-2 control-label">비밀번호
										확인</label>
									</div>
									<div class="col-xs-7">
										<input type="password" class="form-control"
											name="bo_passCheck2" placeholder="비밀번호 확인">
										<p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
									</div>
								</div>

								<div class="form-group">
									<div class="col-xs-3">
										<label for="inputName" class="col-sm-2 control-label">이름</label>
									</div>
									<div class="col-xs-7">
										<input type="text" class="form-control" name="bo_name2"
											placeholder="이름" value="${sessionScope.updateDto.getBo_name()}">
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-3">
										<label for="inputAge" class="col-sm-2 control-label">나이</label>
									</div>
									<div class="col-xs-7">
										<input type="text" class="form-control" name="bo_age2"
											placeholder="나이" value="${sessionScope.updateDto.getBo_age()}">
									</div>
								</div>


								<div class="form-group">
									<div class="col-xs-3">
										<label for="inputEmail" class="col-sm-2 control-label">이메일</label>
									</div>
									<div class="col-xs-7">
										<input type="Email" class="form-control" name="bo_email2"
											placeholder="이메일" value="${sessionScope.updateDto.getBo_email()}">
									</div>
								</div>
						
								<div class="form-group">
									<div class="col-xs-12 ta_c">
										<button type="submit" class="btn btn-primary">확인</button>
									</div>
								</div>
							</form>
						</article>
					</div>
				</div>

			</div>
			<!-- //col-xs-12 -->
		</div>
		<!-- //row -->

	</div>
	<!-- //container -->

	<%@ include file="../inc/footer.jsp"%>