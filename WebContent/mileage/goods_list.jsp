<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ include file="../inc/header1.jsp" %>

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
	
	// 여기서부터 페이징 기능 추가
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
<title>마일리지 &gt; 마일리지 경품</title>
<%@ include file="../inc/header2.jsp" %>
<!-- 슬라이드 -->
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script>

	function check(){
		if(document.search.keyWord.value == ""){
			alert("검색어를 입력하세요.");
			document.search.keyWord.focus();
			return;
		}
		document.search.submit();
	}
	
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
<body>
<%@ include file="../inc/gnb.jsp"%>
		
	<div class="container w_fix min">
		<div class="row">
			<!-- 좌측메뉴 -->
			<%@ include file="../inc/snb4_1.jsp"%>
			<!-- //좌측메뉴 -->

			<div class="col-xs-9">

			<div id="myCarousel" class="carousel slide" data-ride="carousel"> 
				
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
			
				<div class="carousel-inner">
				
					<div class="item active"> 
						<img src="http://www.blueb.co.kr/SRC2/_image/w01.jpg" alt="First slide">
						<div class="container">
							<div class="carousel-caption">
								<h1>Slide 1</h1>
								<p>텍스트 1</p>
							</div>
						</div>
					</div>
					<!--//item-->
			
					<div class="item"> 
						<img src="http://www.blueb.co.kr/SRC2/_image/w02.jpg" data-src="" alt="Second slide">
						<div class="container">
							<div class="carousel-caption">
								<h1>Slide 2</h1>
								<p>텍스트 2</p>
							</div>
						</div>
					</div>
					<!--//item-->
					
					<div class="item"> 
						<img src="http://www.blueb.co.kr/SRC2/_image/w03.jpg" data-src="" alt="Third slide">
						<div class="container">
							<div class="carousel-caption">
								<h1>Slide 3</h1>
								<p>텍스트 3</p>
							</div>
						</div>
					</div>
					<!--//item-->
					
				</div>
				<!-- //carousel-inner -->
				
				<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
				<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> 
			</div>
			<!-- //slide -->
	

			<div class="show-grid">
				<div class="mile_shop">
					
					<%
		GoodsDto dto = new GoodsDto();
			if(vec == null || vec.isEmpty()){
		%>
			
				<div>등록된 글이 없습니다.</div>
			
		<%
			}
			else{
		%>
			<ul>
						<%		
				for(int i=beginPerPage; i<beginPerPage+numPerPage; i++){
					if(i == totalRecord){
						break;
					}
					
					dto = (GoodsDto)vec.get(i);
					%>		
					
                  	
                  <li>
                     <a href="javascript:read('<%=dto.getGoods_num()%>')">
                     <span><img id="img" src="/z_CFC/upload/<%=dto.getGoods_image()%>" alt="<%=dto.getGoods_image()%>" /></span>
                     <span class="txt"><%=dto.getGoods_name()%><br /><em>M <%=dto.getGoods_price() %></em></span>
                     </a>
                  </li>
						<%
				}
			}
		%>
					
					</ul>
				</div>
				<!-- //mile_shop -->
				</div>
				
			</div>	
			<!-- //col-xs-9 -->
		</div>
		<!-- //row -->

	</div>
	<!-- //container -->
	
	<form name="list" method="post" action="/z_CFC/goods.action?param=GoodsList">
	<input type="hidden" name="reload" value="true" />
</form>

<form name="read" method="post" action="/z_CFC/goods.action?param=GoodsView">
	<input type="hidden" name="Goods_num" value="<%=dto.getGoods_num()%>"/>
</form>

<%@ include file="../inc/footer.jsp"%>