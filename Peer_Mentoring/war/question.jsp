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
	<div class="container well yellowwell col-md-10 col-md-offset-1" >
			<%  int qid = Integer.parseInt(request.getParameter("qid"));
	    Question aQuestion = Question.getAQuestion(qid);
	    if (aQuestion != null){
	%>
	
	<div class='row col-md-10 col-md-offset-1'>
			<div class="row col-md-10">
		<h2><%=aQuestion.getTitle() %></h2>
		<p class='bywho'>asked by User#1</p>
		
		<p class='tags'>
			Posted under: IT-206<br/>
			Tagged with: Java, Arrays
		</p>
		<hr class='greenhr'/>
		<p><%=aQuestion.getQuestionContent() %></p>
	
	<%}else { %>
		
		<h2>Error!</h2>
		
	<% }	%>
		<br/><br/><br/><br/><br/>
			</div>

				</div>
				
				
			<div class='row col-md-10 col-md-offset-1'>
			<div class="row col-md-10">
	<h2>Answer:</h2>
	<hr class='greenhr'/>
	<br/>
	<%
	if (qid == 1){
	%>
		<h3>Response from: mentor#1</h3>
			<hr class='greenhr half'/>
		<p> Hi! Could you be more specific please? Most of the information should be on page 232 of your Big Java Book. More accurate answer will be posted when you update your questions.</p>
		<p> --Mentor#1</p>
	<%}
	else{
		%>
		<p> Sorry, none of the mentors have answered your question yet. </p>
		<%
	}
		
		
	
	%>
	<br/>
	</div>

				</div>
				
	<!-- form for new response -->
	<div class='row col-md-10 col-md-offset-1'>
		<div>
			<h2> Post a response:</h2>
		</div>
		
		<div>
			<div class='input-group col-md-4'>
				<span class='input-group-addon' id='title-addon'>Name:</span>
				<input type='text' name='name' class='form-control' aria-describedby='title-addon' />
			</div>
		</div>
		<br/>
		<div class='input-group'>
			<span class='input-group-addon' id='content-addon'>Explanation:</span>
			<textarea name="explanation" class='form-control' rows='5'  aria-describedby='content-addon'></textarea>
		</div>
		<br/>
		<div class='input-group'>
			<span class='input-group-addon' id='content-addon'>Code:</span>
			<textarea name="code" class='form-control' rows='5'  aria-describedby='content-addon'></textarea>
		</div>
		<div class='col-md-8 col-md-offset-5'>
			<button type='submit' class='btn btn-default'>Submit</button>
		</div>
	</div>
				
						
				
				
				
				
		</div>
	<!-- BEGIN FOOTER -->
	<jsp:include page="/Footer.jsp" />
	<!-- END FOOTER -->
</body>
</html>