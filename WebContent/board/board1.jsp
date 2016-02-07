<%@page import="board.BoardDto"%>
<%@page import="java.util.Vector"%>
<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="dao" class="board.BoardDao" />

<c:set var="keyField" value="${keyField}" />
<c:set var="keyWord" value="${keyWord}" />

<c:if test="${keyField eq null}">
	<c:set var="keyField" value="b_name" />
</c:if>

<c:set var="reload" value="${reload} " />
<c:if test="${reload ne null}" >
	<c:if test="${reload eq 'true' }" >
		<c:set var="keyWord" value='' />
	</c:if>
</c:if>

<%@ include file="../inc/header1.jsp" %>
<title>home</title>
<script>
	function check(){
	
		document.search.submit();
	}
	
	function list(){
		document.list.action="List.jsp";
		document.list.submit();
		
	}
	
	function read(b_num){
		document.read.noticenum.value = b_num;
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
<%@ include file="../inc/header2.jsp" %>

<body>
<%@ include file="../inc/gnb.jsp" %>
   <div class="container w_fix min adm">
      <div class="row">
<!-- 좌측메뉴 -->
<%@ include file="../inc/snb01.jsp" %>
<!-- //좌측메뉴 -->

         <div class="col-xs-9">

            <div class="page-header">
               <h1 class="ta_l">문제풀이1 게시판 ${numPerPage}</h1>
            </div>
            <!-- //tit -->

            <div class="cont">
            
<c:set var="totalRecord" value="${sessionScope.pagedto.getTotalRecord()}" />
<c:set var="numPerPage" value="${sessionScope.pagedto.getNumPerPage() }" />
<c:set var="totalPage" value="${sessionScope.pagedto.getTotalPage()}" />
<c:set var="nowPage" value="${sessionScope.pagedto.getNowPage()}" />
<c:set var="beginPerPage" value="${sessionScope.pagedto.getBeginPerPage()}" />
<c:set var="pagePerBlock" value="${sessionScope.pagedto.getPagePerBlock()}" />
<c:set var="totalBlock" value="${sessionScope.pagedto.getTotalBlock()}" />
<c:set var="nowBlock" value="${sessionScope.pagedto.getNowBlock()}" />


<table class="table table_board mt_10">
	<caption>상품 보기</caption>
	<colgroup>
	<col width="10%" />
	<col width="*" />
	<col width="15%" />
	<col width="20%" />
	<col width="10%" />
	</colgroup>
     
   <thead>
         <tr align=center bgcolor=#D0D0D0 height=120%>
            <th scope="col"> 번호 </th>
            <th scope="col"> 제목 </th>
            <th scope="col"> 이름 </th>
            <th scope="col"> 날짜 </th>
            <th scope="col"> 조회수 </th>
         </tr>
   </thead>
   
   <tbody>
      <c:set var="doneLoop" value="false"/>
      
      <c:forEach items="${vec}"  varStatus="status" begin="${beginPerPage}" end="${beginPerPage+numPerPage-1}" var="list" >
       
       <c:if test="${not doneLoop}">
            <c:if test="${numPerPage*beginPerPage+status.index == totalRecord}">
                  <c:set var="doneLoop" value="true"/>
               </c:if>
         
         <tr>
            <td class="">${list.getNoticenum()}</td>
            <td class="ta_l"><a href="javascript:read(' ${list.getNoticenum()}')">${list.getNoticetitle()}</a></td> 
            <td class="">${list.getId()}</td>
            <td class="">${list.getNoticedate() }</td>
            <td class="">${list.getNoticecount()}</td>
         </tr>
   
       </c:if>
      </c:forEach>
      </tbody>
      </table>
<div class="btn_w">
	
	<form action="/z_CFC/board.action?param=SEARCH" name="search" method="post">
	<table border=0 width=527 align=center cellpadding=4 cellspacing=0 style="margin:0 auto;">
	<tr>
		<td align=center valign=bottom>
			<select name="keyField" size="1">
				<option value="id"> 이름
				<option value="noticetitle" > 제목
				<option value="noticecontext" > 내용
			</select>

			<input type="text" size="16" name="keyWord" class="i_34" />
			<input type="button" value="찾기" onClick="check()" class="btn btn-default" />
			<input type="hidden" name="page" value= "0" />
		</td>
	</tr>
	</table>
	</form>
	
   	<ul class="pagination">

      <c:if test="${nowBlock > 0}">
      	<li><a href="/z_CFC/board.action?param=PROBOARD&nowBlock=${nowBlock-1}&nowPage=${pagePerBlock*(nowBlock-1)}">이전 ${pagePerBlock}개</a></li>
      </c:if>
      
      <c:forEach begin="1" end="${sessionScope.pagedto.getPagePerBlock()}" varStatus="status">
      <c:if test="${not doneLoop}">
      
         <c:if test="${(nowBlock*pagePerBlock)+status.index == totalPage}">
             <c:set var="doneLoop" value="true"/>
         </c:if>
         <li><a href="/z_CFC/board.action?param=PROBOARD&nowPage=${(nowBlock*pagePerBlock)+status.index-1}&nowBlock=${nowBlock}">${(nowBlock*pagePerBlock)+status.index}</a></li>
         
      </c:if>
      </c:forEach>      
      
      <c:if test="${totalBlock > nowBlock+1 }">
      	<li><a href="/z_CFC/board.action?param=PROBOARD&nowBlock=${nowBlock+1}&nowPage=${pagePerBlock*(nowBlock+1)}">다음 ${pagePerBlock} 개</a></li>
      </c:if>

      
   </ul>
   <%if(session.getAttribute("id") != null){
               %>
	<ul class="btn_r">
		<li><a href="/z_CFC/board.action?param=WRITEPRO" class="btn btn-primary">글쓰기</a></li>
   
   <%
            }
            %>
	</ul>
		
</div>
<!-- //btn_w -->

	

<form name="list" method="post" action="/z_CFC/board.action?param=PROBOARD">
	<input type="hidden" name="reload" value="true" />
</form>

<form name="read" method="post" action="/z_CFC/board.action?param=READPRO">
	<input type="hidden" name="noticenum"/>
	
</form>
</center>



		</div>
      	<!-- //cont -->
   
         </div>
         <!-- //col-xs-9 -->
      </div>
      <!-- //row -->

   </div>
   <!-- //container -->

   <%@ include file="/inc/footer.jsp"%>