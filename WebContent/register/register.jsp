<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ include file="../inc/header1.jsp"%>
<title>마일리지 &gt; 마일리지 SHOP</title>
<script src="/z_CFC/register/check.js"></script>
<script>
	function fnChkForm(f) {
		
		if (isEmpty(f.bo_id, "아이디를 입력해 주세요")) {
			return false;
		}

		if (isEmpty(f.bo_name, "이름을 입력해 주세요")) {
			return false;
		}
		if (isEmpty(f.bo_age, "나이를 입력해 주세요")) {
			return false;
		}
		if (isGender(f.bo_gender,"성별을 체크해주세요")){
			return false
		}
		if (isEmpty(f.bo_email, "이메일을 입력해 주세요")) {
			return false;
		}
		if (isAgree(f.bo_agree,"약관에 동의해주세요")){
			return false
		}

		if (isID(f.bo_id)) {
			alert("아이디를 제대로 입력해 주세요");
			return false;
		}

		if (isEqualPass(f.bo_pass, f.bo_passCheck)) {
			alert("비밀번호가 맞지 않습니다");
			return false;
		}

		return true;

	}

	function fnZipSearch() {
		window.open("/z_CFC/register/nameCheck.jsp", "",
				"toolbars=no,width=500,height=400,scrollbars=yes");
	}
</script>
<%@ include file="../inc/header2.jsp"%>

<body>
	<%@ include file="../inc/gnb.jsp"%>

	<div class="container w_fix min">
		<div class="row">

			<div class="col-xs-12">

				<div class="form_regi">
					<div class="contentwrap">
						<article class="container w_fix">
							<div class="page-header">
								<h1>회원가입</h1>
							</div>
							<form class="form-horizontal"
								action="/z_CFC/register.action?param=REGPROC" method="post" onsubmit="return fnChkForm(this)" name="f1">
								<div class="form-group">
									<div class="col-xs-3">
										<label for="inputId" class="col-xs-2 control-label">아이디</label>
									</div>
									<div class="col-xs-5">
										<input type="text" class="form-control" name="bo_id"
											placeholder="아이디" readonly="readonly" value="${sessionScope.checkedid}">
									</div>
									<div class="col-xs-2" style="margin-left: -20px;">
										<input type="button" class="btn btn-primary dupl" value="중복검사"
											onclick="fnZipSearch()">
									</div>

								</div>

								<div class="form-group">
									<div class="col-xs-3">
									<label for="inputPassword" class="col-xs-2 control-label">비밀번호</label>
									</div>
									<div class="col-xs-7">
										<input type="password" class="form-control" name="bo_pw"
											placeholder="비밀번호">
										<p class="help-block">숫자, 특수문자 포함 8자 이상</p>
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-3">
									<label for="inputPasswordCheck" class="col-xs-2 control-label">비밀번호
										확인</label>
									</div>
									<div class="col-xs-7">
										<input type="password" class="form-control"
											name="bo_passCheck" placeholder="비밀번호 확인">
										<p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
									</div>
								</div>

								<div class="form-group">
									<div class="col-xs-3">
									<label for="inputName" class="col-xs-2 control-label">이름</label>
									</div>
									<div class="col-xs-7">
										<input type="text" class="form-control" name="bo_name"
											placeholder="이름">
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-3">
									<label for="inputAge" class="col-xs-2 control-label">나이</label>
									</div>
									<div class="col-xs-7">
										<input type="text" class="form-control" name="bo_age"
											placeholder="나이">
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-3">
									<label for="inputAge" class="col-xs-2 control-label">성별</label>
									</div>
									<div class="col-xs-7 lh">
										<input type="radio" class="form-control" name="bo_gender" id="bo_gender1" value="남자"><label for="bo_gender1">남</label> &nbsp;&nbsp;
										<input type="radio" class="form-control" name="bo_gender" id="bo_gender2" value="여자"><label for="bo_gender2">여</label>
									</div>
								</div>


								<div class="form-group">
									<div class="col-xs-3">
									<label for="inputEmail" class="col-xs-2 control-label">이메일</label>
									</div>
									<div class="col-xs-7">
										<input type="Email" class="form-control" name="bo_email"
											placeholder="이메일">
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-3">
										<label for="inputAgree" class="col-xs-2 control-label">약관 동의</label>
									</div>
									<div class="col-xs-7 checkbox">
										<input id="agree" type="checkbox" name="bo_agree" /> 
										<label for="agree"><a href="/agreement">&nbsp; 이용약관</a>에 동의합니다.</label>
									</div>
								</div>
								<div class="form-group">
									<label for="inputName" class="col-xs-2 control-label"></label>

									<div class="col-xs-12 ta_c mt_20">
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
		<!-- //row-->

	</div>
	<!-- //container -->

	<%@ include file="../inc/footer.jsp"%>