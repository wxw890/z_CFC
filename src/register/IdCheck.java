package register;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mybean.Dao;

public class IdCheck implements Command {

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		String id = req.getParameter("idCheck");
		System.out.println("id : "+req.getParameter("idCheck"));
		Dao dao = new Dao();
		String msg = dao.idCheck(id);
		if(msg.equals("아이디가 없음")){
			session.setAttribute("checkedid", id);
		}
		
		session.setAttribute("idcheck", msg);
		return "register/nameCheck.jsp";
	}

}
