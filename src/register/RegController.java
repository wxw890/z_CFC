package register;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import register.Command;
import register.CommandFactory;

public class RegController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("euc-kr");
		
		String param = req.getParameter("param");
		System.out.println("param : "+ param);
		String url = null;
		CommandFactory factory = CommandFactory.newInstance();
		
		Command cmd = factory.createCommand(param);
		
		url = (String)cmd.processCommand(req, resp);
		System.out.println("url : "+url);
		
		RequestDispatcher view = req.getRequestDispatcher(url);
		view.forward(req,resp);
		
	}
	

}
