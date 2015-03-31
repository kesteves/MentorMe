<%@ page import="peermentoring.Question" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang='en'>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>View All Questions</title>
	<!-- Bootstrap reference may need to be modified depending on file structure -->
	<link href='css/bootstrap.min.css' rel='stylesheet' />
	<link href='css/main2.css' rel='stylesheet' />
	<!-- HARD CODED STYLES HERE -->
	<link href="css/footer.css" rel="stylesheet">
	<style>
		
		.navbar {
		background-color: #265931;
		
		}
		.navbar-brand{
		background-color: gold;
		}
	</style>
	<!-- END HARD CODED STYLES HERE -->
</head>
<body>
	<jsp:include page="/navigation.jsp" />
	<div class="container">
		<%
			List<peermentoring.Question> allQuestions = peermentoring.Question.getAllQuestions();
			if (allQuestions.isEmpty()){
		%>
			<div class="container">
				<div class="row well well-sm col-md-6 col-md-offset-3">
					<h2>No questions are available.</h2>
				</div>
			</div>
		<%
			}
				else {
		%>

		<%
				for (peermentoring.Question questions : allQuestions) {
					
					int questionID = questions.getQuestionID();
					String title = questions.getTitle();
					String question = questions.getQuestionContent();
			%>
		<div class="container">
			<div class="row col-md-8">
				<h2><a href="/question.jsp?qid=<%=questionID%>"><%=title %></a></h2>
				<p><%=question %></p>
				<hr />
			</div>
		</div>	
		<% 	}
		} %>
	</div>
		<!-- BEGIN FOOTER -->
	<jsp:include page="/Footer.jsp" />
	<!-- END FOOTER -->
</body>
</html>