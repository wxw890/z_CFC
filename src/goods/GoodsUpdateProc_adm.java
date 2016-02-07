package goods;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import register.Command;

public class GoodsUpdateProc_adm implements Command {

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//HttpSession session = req.getSession();
		//System.out.println("updateProc1:"+ req.getParameter("b_num").trim());
		//System.out.println("sg_name:"+session.getAttribute("g_name"));
		System.out.println("g_amount:"+req.getParameter("g_amount"));
		//System.out.println("updateProc2:"+ session.getAttribute("b_num"));
		
		//int b_num = (int) session.getAttribute("b_num");
		//GoodsDto dto = (GoodsDto) session.getAttribute("dto");
		
		//GoodsDao dao = new GoodsDao();
		//GoodsDto dto = new GoodsDto();
		int b_num = Integer.parseInt(req.getParameter("b_num").trim());
		System.out.println("b_num ½Ã¹ú222:"+b_num);
		GoodsDao dao = new GoodsDao();
		GoodsDto dto = dao.getGoods(b_num);
		System.out.println("updateProc3:"+ dto.getGoods_num() );
	
		
		
		
		
		
			dto.setGoods_name(req.getParameter("g_name"));
			dto.setGoods_category(req.getParameter("g_cate"));
			dto.setGoods_amount(Integer.parseInt(req.getParameter("g_amount")));
			dto.setGoods_content(req.getParameter("g_content"));
			dto.setGoods_image(req.getParameter("g_img1"));
			dto.setGoods_price(Integer.parseInt(req.getParameter("g_price")));
			
			dto.setGoods_num(b_num);
			
			dao.updateBoard(dto);
		
		
		return "/admin/mileage/admin_goods_list.jsp";
	}

}
