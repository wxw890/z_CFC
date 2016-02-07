<%@ page import="goods.GoodsDto"%>
<%@ page import="goods.GoodsDao"%>
<%@ page contentType="text/html; charset=EUC-KR"%>

<%
	request.setCharacterEncoding("euc-kr");
	int b_num = Integer.parseInt(request.getParameter("b_num"));
	//String userInputPass = request.getParameter("pass");
	System.out.println("b_num:"+ b_num);
	System.out.println("g_name:"+request.getParameter("goods_name"));
	System.out.println("g_name:"+request.getAttribute("goods_name"));
	GoodsDao dao = new GoodsDao();
	//GoodsDto db_dto = dao.getGoods(b_num);
	
		GoodsDto dto = new GoodsDto();
		
		
		
		dto.setGoods_name(request.getParameter("g_name"));
		dto.setGoods_category(request.getParameter("g_cate"));
		//dto.setGoods_amount(Integer.parseInt(request.getParameter("g_amount")));
		dto.setGoods_content(request.getParameter("g_content"));
		//dto.setGoods_image(request.getParameter("g_img1"));
		//dto.setGoods_price(Integer.parseInt(request.getParameter("g_price")));
		
		dto.setGoods_num(b_num);
		
		dao.updateBoard(dto);
		
		response.sendRedirect("admin_goods_list.jsp");
	
%>
