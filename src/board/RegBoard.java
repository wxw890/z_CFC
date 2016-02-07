package board;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import register.Command;

public class RegBoard implements Command {

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		
		String level = req.getParameter("b_level");
		String title = req.getParameter("b_title");
		String pass = req.getParameter("b_pass");
		String context = req.getParameter("b_content");
		int mileage = Integer.parseInt(req.getParameter("b_mileage"));
		String answer = req.getParameter("b_answer");
		String id = (String)session.getAttribute("id");
	
		BoardDto dto = new BoardDto();
		BoardDao dao = new BoardDao();
		dto.setNoticetitle(title);
		dto.setLevel(level);
		dto.setNoticepw(pass);
		dto.setNoticecontext(context);
		dto.setMileage(mileage);
		dto.setAnswer(answer);
		dto.setId(id);
		
		
		dao.setBoardRegister(dto);
		
		return "board/board1.jsp";
	}

}
