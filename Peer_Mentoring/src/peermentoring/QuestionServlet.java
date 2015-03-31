/** 

* Copyright 2015 -  

* Licensed under the Academic Free License version 3.0 

* http://opensource.org/licenses/afl-3.0  

*  

* Authors: Keith Yarborough, Luis Velasco

*/

package peermentoring;

import java.io.IOException;
import javax.servlet.http.*;

import peermentoring.Question;

@SuppressWarnings("serial")
public class QuestionServlet extends HttpServlet{
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//String[] tags;
		
		String title = request.getParameter("title");
		String question = request.getParameter("question");
		//tags = request.getParameterValues("tags[]");
		Question.createQuestion(title, question);		
		response.sendRedirect("/submit_question.jsp");
	}
	
	
	//Added this on 3/3/2015 by Luis Velasco
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, NumberFormatException {
		try{
			//get question id from front end
			int qId = Integer.parseInt(request.getParameter("questionId"));
			//get question based on questionId from datastore
			Question theQuestion = Question.getAQuestion(qId);
			//set the found question object as a request attribute so it is available within the jsp for display of contents.
			request.setAttribute(null, theQuestion);
			//redirect to appropriate page, make sure you guys name the page containing the question's content according to
			//the below format, or change the code below to match what you've already named the jsp files. up to you.
			response.sendRedirect("/question_" + theQuestion.getQuestionID() + ".jsp");
		}catch(NumberFormatException e){
			throw e;
		}		
	}
}
