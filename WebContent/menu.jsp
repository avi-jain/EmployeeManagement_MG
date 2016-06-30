<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<!-- Bootstrap local stylesheet-->
<!--link rel="stylesheet" href="C:\Users\Avi Jain\Desktop\WD\bootstrap-3.3.5-dist\css\bootstrap.min.css"-->
<style>
html,body{
	box-sizing: border-box;
}
#sidebar-wrapper{
	background-color: black;/*WTF*/
}
.sidebar-nav {
    position: absolute;
    /*top: 0;*/
    width: 250px;
    /*margin: 0;*/
    /*padding: 0;*/
    list-style: none;
}
.sidebar-nav li {
    text-indent: 20px;
    line-height: 40px;
}
.sidebar-nav li a{
	text-decoration: none;
	display: block;
	color : #999999;
}
.sidebar-nav li a:hover {
    text-decoration: none;
    color: black;
    background: rgba(255,255,255,0.2);
}
.sidebar-nav li a:active,
.sidebar-nav li a:focus {
    text-decoration: none;
}
/*Styling for the brand name*/
.sidebar-brand {
    height: 65px;
    font-size: 18px;
    line-height: 60px;
}
.sidebar-nav > .sidebar-brand p {
    color: #999999;
}

.sidebar-nav > .sidebar-brand p:hover {
    color: black;
    background: none;
}
</style>
</head>
<body>
<!-- Simple SideBar Template. May need to add wrapper class -->

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <div class="sidebar-brand">
                    <p> EMS </p>
                </div>
                <li>
                    <a href="#" onClick = searchNumber()>Search By No.</a>
                </li>
                <li>
                    <a href="#" onClick = searchName()>Search By Name</a>
                </li>
                <li>
                    <a href="#" onClick = addEmp()>Add Employee</a>
                </li>
                <li>
                    <a href="#" onClick = edit()>Edit Details</a>
                </li>
                <li>
                    <a href="#" onClick = getAll()>Get All Details</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->
        
<!-- Better add bootstrap local files-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" ></script>

<script language="javascript">
function addEmp(){
	$('#content').load("add.jsp");
}
function searchName(){
	$('#content').load("searchName.jsp");
}
function searchNumber(){
	$('#content').load("searchNumber.jsp");
}
function getAll(){
	$('#content').load("getAllDetails.jsp");
}
function edit(){
	$('#content').load("editDetails.jsp");
}
</script>

</body>
</html>