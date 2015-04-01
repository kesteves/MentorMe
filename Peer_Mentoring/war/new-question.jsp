<!DOCTYPE html>
<html lang='en'>
<head>
	<title>Create a New Question</title>
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
		<div class='row well well-lg col-md-8 col-md-offset-2 yellowwell'>
			<h2>Ask a Question</h2>
			<p>Can't find the answer you're looking for? Ask a new question!</p>
			<form action="/question" method="post"> <!-- TODO LINK TO FILE -->
					<div class='input-group'>
						<span class='input-group-addon' id='title-addon'>Title:</span>
						<input type='text' name='title' class='form-control' placeholder='How do I perform a binary search?' aria-describedby='title-addon' />
					</div>
					<br />
					
					<div class='input-group'>
						<span class='input-group-addon' id='tags-addon'>Tags:</span>
						<div  class='form-control' style="float: left; margin:0; height: 60px"">	
							<label><input type='checkbox' name='tags[]' value='IT-106'/> IT-106</label>	
							<label><input type='checkbox' name='tags[]' value='IT-206'/> IT-206</label>
							<label><input type='checkbox' name='tags[]' value='IT-306'/> IT-306</label>	
							<label><input type='checkbox' name='tags[]' value='IT-308'/> IT-308</label>	
							<label><input type='checkbox' name='tags[]' value='IT-406'/> IT-406</label>
							<label><input type='checkbox' name='tags[]' value='IT-214'/> IT-214</label>	
							<label><input type='checkbox' name='tags[]' value='IT-314'/> IT-314</label>
							<label><input type='checkbox' name='tags[]' value='IT-315'/> IT-315</label>	
							<label><input type='checkbox' name='tags[]' value='IT-414'/> IT-414</label>	
							<label><input type='checkbox' name='tags[]' value='IT-390'/> IT-390</label>
							<label><input type='checkbox' name='tags[]' value='IT-490'/> IT-490</label>		
							<label><input type='checkbox' name='tags[]' value='IT-410'/> IT-410</label>
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
	<div align="center">
	<img src="assets/GMU_logo.svg.png" height="30%" width="30%" align="middle">
	</div>
	<!-- BEGIN FOOTER -->
	<jsp:include page="/Footer.jsp" />
	<!-- END FOOTER -->
	

</body>
</html>