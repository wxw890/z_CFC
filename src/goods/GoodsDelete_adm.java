package goods;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import register.Command;

public class GoodsDelete_adm implements Command {

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("b_num:"+req.getParameter("b_num"));
		int b_num = Integer.parseInt(req.getParameter("b_num").trim());
		GoodsDao d_dao = new GoodsDao();
		GoodsDto d_dto = d_dao.getGoods(b_num);
		d_dao.deleteBoard(b_num);
		return "/admin/mileage/admin_goods_list.jsp";
	}

}