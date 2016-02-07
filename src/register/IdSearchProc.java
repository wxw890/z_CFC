package register;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mybean.Dao;
import mybean.Dto;

public class IdSearchProc implements Command {

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		String name = req.getParameter("ids_name");
		String email = req.getParameter("ids_email");
		Dao dao = new Dao();
	
		String id = dao.idSearch(name, email);
		
		if(id.equals("일치하는 회원정보가 없습니다")){
			return "register/IdSearchFail.jsp";
			
		}
		session.setAttribute("idsearch", id);
		return "register/idResult.jsp";
		
	}

}
