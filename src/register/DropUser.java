package register;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mybean.Dao;
import mybean.Dto;

public class DropUser implements Command {

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		Dao dao = new Dao();
		Boolean flag = false;
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		String pw = req.getParameter("droppw");
		flag = dao.dropUser(id,pw);
		session.invalidate();
		if(flag){
			return "register/dropOk.jsp";
		}
		return "register/dropFail.jsp";
		
	}

}
