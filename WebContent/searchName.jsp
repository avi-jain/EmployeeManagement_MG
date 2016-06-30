<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add employee</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<!-- Bootstrap local stylesheet-->
<!--link rel="stylesheet" href="C:\Users\Avi Jain\Desktop\WD\bootstrap-3.3.5-dist\css\bootstrap.min.css"-->

</head>
<body>
<form role="form" method = "post" action="searchName" name="searchName" >
  <div class="form-group">
    <label for="name">Enter Name </label>
    <input type="text" class="form-control" id="name" required autofocus>
  </div>
  <button type="submit" class="btn btn-default">Get Details</button>
</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" ></script>
</body>
</html>