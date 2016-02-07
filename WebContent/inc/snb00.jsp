<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="col-xs-3">
<c:set var="id" value="${sessionScope.id}"></c:set>

	<ul class="nav nav-list snb">
		<li class="nav-header">ȸ������</li>
		<c:if test="${id eq null || id == ''}">
		<li><a href="/z_CFC/register.action?param=IDSEARCH">���̵� ã��</a></li>
		<li><a href="/z_CFC/register.action?param=PWSEARCH">��й�ȣ ã��</a></li>
		</c:if>
		<c:if test="${fn:length(id) >0 }">
		<li><a href="/z_CFC/register.action?param=UPDATEUSER">ȸ������ ����</a></li>
		<li><a href="/z_CFC/register.action?param=GODROP">Ż��</a></li>
		</c:if>
		<li class="divider"></li>
	</ul>
</div>