package goods;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.interceptors.SessionAssociationInterceptor;

import register.Command;

public class GoodsUpdate_adm implements Command {

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		int b_num = Integer.parseInt(req.getParameter("b_num").trim());
		System.out.println("update b_num:"+ b_num);
		GoodsDao dao = new GoodsDao();
		GoodsDto dto = dao.getGoods(b_num);
		session.setAttribute("dto", dto);
		session.setAttribute("b_num", b_num);
		
		
		return "/admin/mileage/admin_goods_update.jsp?b_num="+b_num;
	}

}
