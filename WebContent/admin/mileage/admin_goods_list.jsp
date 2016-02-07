<%@page import="goods.GoodsDto"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="dao" class="goods.GoodsDao" />

<%! 
	public String getParam(HttpServletRequest req, String pName){
		if(req.getParameter(pName) != null){
			return req.getParameter(pName);
		}
		else{
			return "";
		}
	}
	int totalRecord = 0;
	int numPerPage = 5;
	int totalPage = 0;
	int nowPage = 0;
	int beginPerPage = 0;
	int pagePerBlock = 3;
	int totalBlock = 0;
	int nowBlock = 0;
%>

<%
	request.setCharacterEncoding("euc-kr");
	String keyField = request.getParameter("keyField");
	String keyWord = request.getParameter("keyWord");
	
	if(keyField == null){
		keyField = "g_name";
	}
	
	String reload = request.getParameter("reload");
	if(reload != null){
		if(reload.equals("true")){
			keyWord = "";
		}
	}
	
	Vector vec = (Vector)dao.getGoodsList(keyField, keyWord);
	
	// ���⼭���� ����¡ ��� �߰�
	totalRecord = vec.size();
	totalPage = (int)Math.ceil(((double)totalRecord/numPerPage));
	
	if(request.getParameter("nowPage") != null){
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}
	
	if(request.getParameter("nowBlock") != null){
		nowBlock = Integer.parseInt(request.getParameter("nowBlock"));
	}
	
	beginPerPage = nowPage * numPerPage;
	totalBlock = (int)Math.ceil(((double)totalPage/pagePerBlock));
%>

<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ include file="/inc/header1.jsp" %>
<title>������ &gt; ��ǰ����</title>
<%@ include file="/inc/header2.jsp" %>

<script>

	
	function list(){
		document.list.action="List.jsp";
		document.list.submit();
		
	}
	
	function read(g_num){
		document.read.Goods_num.value = g_num;
		document.read.submit();
		
	}
	function noEvent() {
		if (event.keyCode == 116) {
		event.keyCode= 2;
		return false;
		}
		else if(event.ctrlKey && (event.keyCode==78 || event.keyCode == 82))
		{
		return false;
		}
		}
		document.onkeydown = noEvent;
</script>
</head>
<body>

<div class="container adm">
<div class="row">

	<!-- �����޴� -->
	<%@ include file="/inc/snb4_2.jsp" %>
	<!-- //�����޴� -->
	
	<div class="col-xs-9">
	
		<div class="tit">
			<h1>��ǰ ���</h1>
		</div>
		<!-- //tit -->
		
		<div class="cont">
		Total :  <%=totalRecord%> �Խù�(
		<font color=red>  <%=nowPage+1%> / <%=totalPage%> Pages </font>)
		
		<%
		GoodsDto dto = new GoodsDto();
			if(vec == null || vec.isEmpty()){
		%>
			<tr>
				<td>��ϵ� ���� �����ϴ�.</td>
			</tr>
		<%
			}
			else{
		%>
			<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">��ȣ</th>
					<th scope="col">ī�װ�</th>
					<th scope="col">��ǰ�̸�</th>
					<th scope="col">�̹���</th>
					<th scope="col">��ǰ����</th>
					<th scope="col">����</th>
					<th scope="col">����</th>
					<th scope="col">�������</th>
				</tr>
			</thead>
			<tbody>	
		<%		
				for(int i=beginPerPage; i<beginPerPage+numPerPage; i++){
					if(i == totalRecord){
						break;
					}
					
					dto = (GoodsDto)vec.get(i);
		%>
				<tr>
					<td><%=dto.getGoods_num()%></td>
					<td><%=dto.getGoods_category()%></td>
					<td><a href="javascript:read('<%=dto.getGoods_num()%>')"><%=dto.getGoods_name()%></a></td>
					<td><%=dto.getGoods_image()%></td>
					<td><%=dto.getGoods_content() %></td>
					<td><%=dto.getGoods_price() %></td>
					<td><%=dto.getGoods_amount() %></td>
					<td><%=dto.getGoods_date() %></td>
				</tr>
		<%
				}
			}
		%>
			</tbody>
			</table>
			<!-- //table -->
			
		<%if(nowBlock > 0){ %>
			<a href="/z_CFC/goods.action?param=GoodsList_adm&nowBlock=<%=nowBlock-1%>&nowPage=<%=pagePerBlock*(nowBlock-1)%>">���� <%=pagePerBlock %>��</a>&nbsp;&nbsp;&nbsp;
		<%} %>
		
		<%
			for(int i=0; i<pagePerBlock; i++){
				if((nowBlock * pagePerBlock) + i == totalPage){
					break;
				}
		%>
				<a href="/z_CFC/goods.action?param=GoodsList_adm&nowPage=<%=(nowBlock * pagePerBlock)+i%>&nowBlock=<%=nowBlock%>"><%=(nowBlock * pagePerBlock) + i+1%></a>&nbsp;&nbsp;&nbsp;
				
		<%
			}
		%>
		&nbsp;&nbsp;&nbsp;
		<%if(totalBlock > nowBlock+1){ %>
			<a href="/z_CFC/goods.action?param=GoodsList_adm&nowBlock=<%=nowBlock+1%>&nowPage=<%=pagePerBlock*(nowBlock+1)%>">����<%=pagePerBlock %>��</a>
		<%} %>

	<%if(session.getAttribute("id") != null){
					%>

		<a href="/z_CFC/goods.action?param=GoodsWrite_adm">�۾���</a>

	<%
		}
	%>

<form action="List.jsp" name="search" method="post">
	<table>
	<tr>
		<td align=center valign=bottom>
			<select name="keyField" size="1">
				<option value="id" <%if(keyField.equals("id")){%> selected="selected" <%}%>> �̸�
				<option value="goods_name" <%if(keyField.equals("goods_name")){%> selected="selected" <%}%>> ����
				<option value="goods_content" <%if(keyField.equals("goods_content")){%> selected="selected" <%}%>> ����
			</select>

			<input type="text" size="16" name="keyWord" value="<%=getParam(request, "keyWord")%>" />
			<input type="button" value="ã��" onClick="check()">
			<input type="hidden" name="page" value="0">
		</td>
	</tr>
	</table>
</form>

<form name="list" method="post" action="/z_CFC/goods.action?param=ProGoods_adm">
	<input type="hidden" name="reload" value="true" />
</form>

<form name="read" method="post" action="/z_CFC/goods.action?param=GoodsRead_adm">
	<input type="hidden" name="Goods_num" value="<%=dto.getGoods_num()%>"/>
</form>

		<ul class="btn_fl">
			<li>
				<a class="btn btn-primary active" href="/z_CFC/goods.action?param=GoodsWrite_adm">��ǰ���</a>
			</li>
			<li>
				<a class="btn btn-default" href="/z_CFC/goods.action?param=GoodsModify_adm">����</a>
				<a class="btn btn-default" href="#">����</a>
			</li>
		</ul>
	</div>
	<!-- //cont -->
		
		
		
</div>
<!-- //col-xs-9 -->
</div>
<!-- //row -->

</div>
<!-- //container -->

<%@ include file="/inc/footer.jsp" %>