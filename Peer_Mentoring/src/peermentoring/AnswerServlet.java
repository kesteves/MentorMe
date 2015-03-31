/** 

* Copyright 2015 -  

* Licensed under the Academic Free License version 3.0 

* http://opensource.org/licenses/afl-3.0  

*  

* Authors: Luis Velasco, Kevin Bughao

*/

package peermentoring;

import java.io.IOException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class AnswerServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException{
		
		String answer = request.getParameter("answer");
		int questionId = Integer.parseInt(request.getParameter("questionID"));
		Answer.createAnswer(answer, questionId);
		
		response.sendRedirect("/question.jsp?qid=" + questionId);
		
	}
}
