<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title> Sign In </title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<style>
	html,body{
	box-sizing: border-box;
}

.form-signin{
	  margin: 0 auto;
	  max-width: 400px;
}
#pwd{
	 margin-bottom: 20px;
}
</style>
</head>

<body>
<div class = "container">
	<!-- The servlet url should be the action parameter --> 
	<form method = "post" action="login" name="login" role="form" class="form-signin">
		<h2> Login </h2>
		<!-- The servlet uses name --> 
		<input type = "text" id = "userId"  name = "userId" class="form-control" placeholder="User ID">
		
		<input type = "password" id = "pwd" name = "pwd"   class="form-control" placeholder="Password">

		<button class="btn btn-lg btn-primary" type="submit">Sign in</button>
		
	</form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
</body>
</html>