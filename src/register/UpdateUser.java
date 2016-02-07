package register;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mybean.Dao;
import mybean.Dto;

public class UpdateUser implements Command {

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		Dao dao = new Dao();
		Dto dto = new Dto();
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		dto = dao.updateUser(id);
		session.setAttribute("updateDto", dto);
		return "register/update.jsp";
	}

}
