package register;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mybean.Dao;

public class LoginProc implements Command {

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String id = req.getParameter("log_id");
		String pass = req.getParameter("log_pw");
		Dao dao = new Dao();
		boolean loginFlag= dao.getUser(id, pass);
		
		if(loginFlag==true){
			HttpSession session = req.getSession();
			session.setAttribute("id", id);
			
			return "/index.jsp";
		}
		else{
			return "/login/login.jsp";	
		}
		
		
	}

}
