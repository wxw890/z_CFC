package register;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mybean.Dao;
import mybean.Dto;

public class PwSearchProc implements Command {

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		String id = req.getParameter("pws_id");
		String email = req.getParameter("pws_email");
		Dao dao = new Dao();
		System.out.println("id : "+id + "email :"+email);
		
		String pw = dao.pwSearch(id, email);
		
		if(pw.equals("일치하는 회원정보가 없습니다")){
			return "register/pwSearchFail.jsp";
			
		}
		session.setAttribute("pwsearch", pw);
		return "register/pwResult.jsp";
	}

}
