package board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mybean.Dao;
import mybean.Dto;
import register.Command;

public class UpdateOk implements Command {

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		String level = req.getParameter("ub_level");
		String pw = req.getParameter("ub_pass");
		String title = req.getParameter("ub_title");
		String content = req.getParameter("ub_content");
		String answer = req.getParameter("ub_answer");
	
		int mileage = Integer.parseInt(req.getParameter("ub_mileage"));
		
		BoardDto dto = new BoardDto();
		BoardDao dao = new BoardDao();
		dto = (BoardDto) session.getAttribute("dto");
		
		dto.setLevel(level);
		dto.setNoticepw(pw);
		dto.setNoticetitle(title);
		dto.setNoticecontext(content);
		dto.setAnswer(answer);
		dto.setMileage(mileage);
		
		dao.updateBoard(dto, id);
		
		return "board/board1.jsp";
	}

}
