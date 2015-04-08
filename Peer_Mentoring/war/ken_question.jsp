<%@ page import="peermentoring.Answer" %>
<%@ page import="peermentoring.Question" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<link href="css/bootstrap.min.css" rel="stylesheet" />
	<link href="css/ken-main.css" rel="stylesheet" />
	<title>Mentor Me | Viewing Question # <% //QUESTIONID// %></title>
</head>
<body>
	<!-- TODO IMPORT NAVIGATION BAR --><jsp:include page="/navigation.jsp" />
	<div class="container">
	    <div class="row">
	        <div class="col-md-12 well">
	            <h1>How do I create an array?</h1> <!-- Question Title JSP -->
	            <p>asked by Kenlightening</p> <!-- Question Asker JSP -->
	            <br />
	            <p class="subtle">
	            	Posted under:
	            	<!-- Question Courses JSP
	            		 Requires loop for each element in array.
	            	 -->
					<a href="questions.jsp?class=106"><span class="label label-default">IT-106</span></a>
					<a href="questions.jsp?class=206"><span class="label label-default">IT-206</span></a>
					<a href="questions.jsp?class=306"><span class="label label-default">IT-306</span></a>
					<a href="questions.jsp?class=390"><span class="label label-default">IT-390</span></a>
	            </p>
	            <p class="subtle">Tagged with:
	            	<!-- Question Tags JSP 
	            		 Requires loop for each element in array.
	            	-->
	            	<a href="questions.jsp?tag=arrays"><span class="label label-default">Arrays</span></a>
	            	<a href="questions.jsp?tag=containers"><span class="label label-default">Containers</span></a>
	            </p>
	            <hr align="left" class="greenline" />
	           	<!--  Question Content JSP -->
	           	<p>Hi everyone, we just reviewed arrays in class today, but I'm not quite sure how to declare a new array of integers. Any help you could provide would be greatly appreciated, thank!</p>
	  			
	  			<br />
	  			<br />
	  			
	  			<!-- Answer Count JSP -->
	  			<h2>2 Answers</h2>
	  			<hr align="left" class="greenline" />
	  			<!--  ANSWER JSP LOOP -->
	  			<h3><!-- Answer Author JSP -->
	  				<a data-toggle="collapse" href="#answer1" class="nodec">Response 1<span class="subtle"> , by Kenpowering <span class='caret'></span></span></a>
	  			</h3>
	  			<div id="answer1" class="collapse in">
		  			<p>There's a few ways to declare an array depending on what you are doing. You can declare one or define a literal. Both have different uses.</p><!-- Answer Content JSP -->
		        	<br />
		        	<div class="codeblock"><!-- Answer JSP Code Block -->
		        		<p>int[] anArray = new int[10];		// will create an array with ten spaces.</p>
		        		<p>int[] anArray = {1, 2, 3, 4, 5};	// will create an array with five places and populate it.</p>
		        	</div>
		        </div>
		        <!--  ANSWER JSP LOOP END -->
		        
		        <h3><!-- Answer Author JSP -->
	  				<a data-toggle="collapse" href="#answer2" class="nodec">Response 2<span class="subtle"> , by StealthNinja <span class='caret'></span></span></a>
	  			</h3>
	  			<div id="answer2" class="collapse">
		  			<p>For more information on arrays, consult the Big Java Late Objects and look at chapter 4.</p><!-- Answer Content JSP -->
		        	<br />
		        	<div class="codeblock"><!-- Answer JSP Code Block -->
		        		<p>No code specified</p>
		        	</div>
		        </div>
		        
		        <hr align="left" class="greenline" />
		        
		        <br />
		        <h3>Think you can do better?</h3>
		       	<form action="#" method="post"><!-- Link to Answer Servlet? -->
			       	<div class="form-group">
			       		<label for="username">Username</label>
			       		<input type="text" class="form-control" id="username" placeholder="Enter username" />
			       	</div>
			       	<div class="form-group">
			       		<label for="answer-text">Answer</label>
			       		<textarea class="form-control" rows="5" id="#answer-text" placeholder="Enter your answer here."></textarea>
			       	</div>
			        <div class="form-group">
			       		<label for="answer-code">Code</label>
			       		<textarea class="form-control" rows="5" id="#answer-code" placeholder="Enter any code you wish to provide here."></textarea>
			       	</div>
			       	<button type="submit" class="btn btn-default">Submit</button>
		       	</form>
	        </div>
	    </div>
	</div>
	
	
	<!-- TODO IMPORT FOOTER -->
	<script src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js'></script>
	<script src='js/bootstrap.min.js'></script>
</body>

</html>