package com.example.myproject;
import java.io.IOException;
import java.util.ArrayList;

import javax.jdo.PersistenceManager;
import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class WritinghtmltaginsideofjavaServlet extends HttpServlet {
	/*public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/plain");
		resp.getWriter().println("Hello, world");
		resp.getWriter().println("<b>This is servlet output</b>");
	}
	*/
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		PersistenceManager pm=PMF.get().getPersistenceManager();
		Example ex=new Example();
		ex.setImage("<a href=\"index.html\"><img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBJtSDarQv3pKmr3KUsbIrh2g2vXWuisUvQVl56OpIsKQeRJloAw\" width=\"12\" height=\"12\" /></a>");
		pm.makePersistent(ex);
		ArrayList al=new ArrayList();
		for(Example e:pm.getExtent(Example.class,false)){
			
			al.add(e.getImage());
			
	    	
		}
		request.setAttribute("image",al);
		
		
		request.getRequestDispatcher("successs.jsp").forward(request,response);
		
		
		

		pm.close();

		
		
	}

}
