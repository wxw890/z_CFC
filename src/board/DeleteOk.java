package board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mybean.Dao;
import register.Command;

public class DeleteOk implements Command {

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		BoardDao dao = new 	BoardDao();
		HttpSession session = req.getSession();
		int b_num = Integer.parseInt((String)session.getAttribute("b_num"));
		String pw = req.getParameter("dropBpw");
		dao.dropBoard(b_num,pw);
		return "board/board1.jsp";
	}

}
