package goods;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import register.Command;

public class GoodsView implements Command {

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		GoodsDao dao = new GoodsDao();
		GoodsDto dto = new GoodsDto();
	
		
		dto = dao.getGoods(Integer.parseInt(req.getParameter("Goods_num").trim()));
		
		session.setAttribute("dto",dto );
		System.out.println("BoardRead"+req.getParameter("Goods_num"));
		return "/mileage/goods_view.jsp";
	}

}
