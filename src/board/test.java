package board;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import register.Command;

public class test implements Command {

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("euc-kr");
		BoardDao dao = new BoardDao();
		PageDto dto = new PageDto();
		Vector vec = (Vector)dao.getBoardList2();
		dto.setTotalRecord(vec.size());
		System.out.println(vec.size());
		
		
		return "board/board1.jsp";
		
	}

}
