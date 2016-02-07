<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!--header starts-->
<header class="main-header">
	<div class="backbg-color">
	
	<div class="navigation-bar">
		<div class="container w_fix">
	
		<!-- navbar-collapse -->
		<div class="navbar-collapse collapse">
		
			<div class="row">
			<div class="col-xs-12 h_fix">
				<ul class="nav navbar-nav navbar-right">
					
						<c:if test="${id eq null || id == ''}">
							<li class="le"><a href="/z_CFC/register.action?param=LOGIN">�α���</a></li>
							<li class="ri"><a href="/z_CFC/register.action?param=REGISTER">ȸ������</a></li>
						</c:if>
						<c:if test="${fn:length(id) >0 }">
							<li><a href="#">${id}��</a></li>
							<li><a href="/z_CFC/register.action?param=UPDATEUSER">���� ����</a></li>
							<li><a href="/z_CFC/register.action?param=MYPROFILE">����������</a></li>
							<li><a href="#">�ŷ�����</a></li>
							<li><a href="/z_CFC/register.action?param=LOGOUT">�α׾ƿ�</a></li>
						</c:if>	
						
				</ul>
			</div>
			</div>
			<!-- //row -->
		</div>
		<!-- //navbar-collapse -->
		
		<div class="row gnb">
			<div class="col-xs-3">
				<a class="logo" href="/z_CFC/register.action?param=HOME"><img src="/z_CFC/img/main/logo.png" alt="CFC" /></a>
			</div>
					
			<div class="col-xs-9">
				<!--navigation starts-->
				<nav class="navbar navbar-default">
					<div class="collapse navbar-collapse navbar-right" id="myNavbar">
						<ul class="nav navbar-nav">
							<li class="active"><a
								href="/z_CFC/register.action?param=HOME">Ȩ</a></li>
							<li><a href="/z_CFC/board.action?param=PROBOARD">����Ǯ��1</a></li>
							<li><a href="#listed">����Ǯ��2</a></li>
							<li><a href="#agents">Ŀ�´�Ƽ</a></li>
							<li><a href="/z_CFC/goods.action?param=GoodsList">���ϸ���</a></li>
							<li><a href="/z_CFC/goods.action?param=Contact">Contact</a></li>
						</ul>
					</div>
				</nav>
				<!--navigation ends-->
			</div>
			
		</div>
		<!-- //row -->
	
		</div>
	</div>
	<!-- //navigation-bar -->
	
</div>
</header>
<!--header ends-->