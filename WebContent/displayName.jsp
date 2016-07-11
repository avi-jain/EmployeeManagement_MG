<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display through name</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
</head>
<body>

    <table class = "table">
        <thead>
	      <tr>
	         <th>ID</th>
	         <th>Name</th>
	         <th>Age</th>
	         <th>Salary</th>
	      </tr>
   		</thead>
        <c:forEach items="${list}" var="record">
            <tbody class = "table-hover table-striped ">
            <tr>
                <td>${record.ID }</td>
                <td>${record.name }</td>
                <td>${record.age}</td>
                <td>${record.sal }</td>
            </tr>
            </tbody>
        </c:forEach>
    </table>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" ></script>

</body>
</html>