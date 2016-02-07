package board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mybean.Dao;
import register.Command;

public class DeleteBoard implements Command {

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String b_num = req.getParameter("b_num");
		HttpSession session = req.getSession();
		session.setAttribute("b_num",b_num);
		return "board/deleteBoard.jsp";
	}

}
