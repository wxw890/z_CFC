package register;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mybean.Dao;
import mybean.Dto;

public class UpdateInsert implements Command {

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		String pw = req.getParameter("bo_pw2");
		String name = req.getParameter("bo_name2");
		String age = req.getParameter("bo_age2");
		String email = req.getParameter("bo_email2");
		String id = (String)session.getAttribute("id");
		Dto dto = new Dto();
		Dao dao = new Dao();
		dto.setBo_pw(pw);
		dto.setBo_name(name);
		dto.setBo_age(age);
		dto.setBo_email(email);
		
		dao.updateInsert(dto,id);
		return "index.jsp";
	}

}
