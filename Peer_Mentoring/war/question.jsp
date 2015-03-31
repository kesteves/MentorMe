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
			<%  int qid = Integer.parseInt(request.getParameter("qid"));
	    Question aQuestion = Question.getAQuestion(qid);
	    if (aQuestion != null){
	%>
	
	<div class='row well well-lg col-md-10 col-md-offset-1'>
			<div class="row col-md-10">
		<h2><%=aQuestion.getTitle() %></h2>
		<hr/>
		<p><%=aQuestion.getQuestionContent() %></p>
	
	<%}else { %>
		
		<h2>Error!</h2>
		
	<% }	%>
		<br/><br/>
			</div>

				</div>
			<div class='row well well-lg col-md-10 col-md-offset-1'>
			<div class="row col-md-10">
	<h2>Answer:</h2>
	<%
	if (qid == 1){
	%>
		<p> Hi! Could you be more specific please? Most of the information should be on page 232 of your Big Java Book. More accurate answer will be posted when you update your questions.</p>
		<p> --Mentor#1</p>
	<%}
	else{
		%>
		<p> Sorry, none of the mentors have answered your question yet. </p>
		<%
	}
		
		
	
	%>
	</div>

				</div>
		</div>
	<!-- BEGIN FOOTER -->
	<jsp:include page="/Footer.jsp" />
	<!-- END FOOTER -->
</body>
</html>