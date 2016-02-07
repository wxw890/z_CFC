package board;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import register.Command;

public class Uploadimg implements Command {

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		ServletContext context = req.getSession().getServletContext();
		String saveDir = context.getRealPath("up_file");

		MultipartRequest multiReq = new MultipartRequest(req, saveDir, 50*1024*1024,
				"euc-kr", new DefaultFileRenamePolicy()); 
		Enumeration enumer = multiReq.getFileNames();
		while(enumer.hasMoreElements()){
			String name = (String)enumer.nextElement();
			
		}
		
		return "board/uploadResult.jsp";
	}

}
