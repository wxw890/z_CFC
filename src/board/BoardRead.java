package board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import register.Command;

public class BoardRead implements Command {

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, NumberFormatException {
		HttpSession session = req.getSession();
		BoardDao dao = new BoardDao();
		BoardDto dto = new BoardDto();
		
		
		dto = dao.getBoard(Integer.parseInt(req.getParameter("noticenum").trim()));
		dao.increaseCount(Integer.parseInt(req.getParameter("noticenum").trim()));
		dto.setNoticenum(Integer.parseInt(req.getParameter("noticenum").trim()));
		session.setAttribute("dto",dto );
		System.out.println("BoardRead"+req.getParameter("noticenum"));
		return "board/Read.jsp";
	}

}
