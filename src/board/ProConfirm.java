package board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import register.Command;

public class ProConfirm implements Command {

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		BoardDao dao = new BoardDao();
		BoardDto dto = new BoardDto();
		Boolean flag = false;
		HttpSession session = req.getSession();
		int b_num = Integer.parseInt(req.getParameter("b_num"));
		String chk = req.getParameter("answer");
		String id = (String)session.getAttribute("id");
		String matterRepeatFlag = dao.matterCheck(b_num, id);
		
		if(matterRepeatFlag.equals("ม฿บน")){
			return "board/proRepeat.jsp";
		}
		flag = dao.confirm(b_num, chk, id);
		if(flag){
			return "board/proCheck.jsp";
		}
		return "board/proCheckFail.jsp";
	}

}
