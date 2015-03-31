/** 

* Copyright 2015 -  

* Licensed under the Academic Free License version 3.0 

* http://opensource.org/licenses/afl-3.0  

*  

* Authors: Keith Yarborough, Ken Esteves

*/

package peermentoring;

import peermentoring.Tags;

import java.io.IOException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class TagServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
		Boolean valid = false;
		
		String tag = request.getParameter("tag");
		valid = Tags.createTag(tag);
		
		if (valid) {
			response.sendRedirect("/tag_success.jsp");
		}
		else {
			response.sendRedirect("/tag_failure.jsp");
		}
	}

}
