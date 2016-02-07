package board;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import register.Command;

public class Search implements Command {

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("proboard 클래스 실행");
		req.setCharacterEncoding("euc-kr");
		HttpSession session = req.getSession();
		String keyField = req.getParameter("keyField");
		String keyWord = req.getParameter("keyWord");
		BoardDao dao = new BoardDao();
		PageDto dto = new PageDto();
		Vector vec = (Vector)dao.getSearchResultList(keyField,keyWord);
		int totalRecord = vec.size();
		dto.setTotalRecord(totalRecord);
		
		int totalPage = (int)Math.ceil(((double)dto.getTotalRecord()/dto.getNumPerPage()));
		dto.setTotalPage(totalPage);
		int nowPage = dto.getNowPage();
		int nowBlock = dto.getNowBlock();
		int beginPerPage = dto.getBeginPerPage();
		int totalBlock = dto.getTotalBlock();
		int numPerPage = dto.getNumPerPage();
		int pagePerBlock = dto.getPagePerBlock();
		
		System.out.println("nowblock : "+req.getParameter("nowBlock"));
		System.out.println(req.getParameter("nowPage")+"끝");
		if(req.getParameter("nowPage") == null || req.getParameter("nowPage").equals("")){
			nowPage = 0;
		}
		else{
			nowPage = Integer.parseInt(req.getParameter("nowPage"));
		}
		
		if(req.getParameter("nowBlock") == null || req.getParameter("nowBlock").equals("")){
			nowBlock = 0;
		}
		else{
			nowBlock = Integer.parseInt(req.getParameter("nowBlock"));
		}
		
		
		beginPerPage = nowPage * numPerPage;
		totalBlock = (int)Math.ceil(((double)dto.getTotalPage()/dto.getPagePerBlock()));
		System.out.println();
		System.out.println("totalBlock : "+totalBlock);
		System.out.println("vec size: "+vec.size());
		System.out.println("nowPage:"+req.getParameter("nowPage")+nowPage);
		System.out.println("nowBlock:"+req.getParameter("nowBlock")+nowBlock);
		System.out.println(totalPage);
		
		
		
		dto.setBeginPerPage(beginPerPage);
		dto.setNowBlock(nowBlock);
		dto.setNowPage(nowPage);
		dto.setNumPerPage(numPerPage);
		dto.setPagePerBlock(pagePerBlock);
		dto.setTotalBlock(totalBlock);
		
		session.setAttribute("vec",vec);
		session.setAttribute("pagedto", dto);
		return "board/board1.jsp";
	}

}
