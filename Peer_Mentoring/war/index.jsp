<!DOCTYPE html>
<html lang='en'>
<head>
	<title>Create a New Question</title>
	<!-- Bootstrap reference may need to be modified depending on file structure -->
	<link href='css/bootstrap.min.css' rel='stylesheet' />
	<link href='css/main2.css' rel='stylesheet' />
</head>
<body>
	<jsp:include page="/navigation.jsp" />

	<!-- BEGIN FORM -->
	
	<!--
		POST METHOD DELIVERY
		
		@param:
		name	- passes input name
		title	- passes title of question
		tags[]	- passes array of selected tags
		content	- passes textual content related to question
	-->
	<div class='container'>
		<div class='row well well-lg col-md-8 col-md-offset-2'>
			<h2>Ask a Question</h2>
			<p>Can't find the answer you're looking for? Ask a new question!</p>
			<form action="/question" method="post"> <!-- TODO LINK TO FILE -->
					<div class='input-group input-group-lg'>
						<span class='input-group-addon' id='title-addon'>Title:</span>
						<input type='text' name='title' class='form-control' placeholder='How do I perform a binary search?' aria-describedby='title-addon' />
					</div>
					<br />
					
					<div class='input-group input-group-lg'>
						<span>Tags:</span>
						<div class='checkbox'>	
							<label><input type='checkbox' name='tags[]' value='IT-106'/> IT-106</label>	
						</div>
						<div class='checkbox'>	
							<label><input type='checkbox' name='tags[]' value='IT-206'/> IT-206</label>
						</div>	
					</div>

					<br />
					<div class='input-group'>
						<span class='input-group-addon' id='content-addon'>Content:</span>
						<textarea name="question" class='form-control' rows='5'  aria-describedby='content-addon'></textarea>
					</div>
					<br />
				<div class='col-md-8 col-md-offset-3'>
					<button type='submit' class='btn btn-default'>Submit</button>
				</div>
			</form>
		</div>

		
		<!--
			<table><tr>
				<td>Name:</td><td><input type="text" name="name" placeholder="John" /></td>
			</tr><tr>
				<td>Question Title:</td><td><input type="text" name="title" size="30px" placeholder="How do I perform a binary search?" /></td>
				<td class="submit" colspan="2"><input type="submit" value="Submit" /></td>
			</tr><tr>
			</tr></table>
			-->

	</div>
	
	<!-- BEGIN FOOTER -->
		 <!-- TODO -->
	<!-- END FOOTER -->
	

</body>
</html>