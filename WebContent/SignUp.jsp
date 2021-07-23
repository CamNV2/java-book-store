<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Signup</title>
	<!-- <style>
      <%@ include file="/CssWed/SignUp.css" %>
    </style> -->

</head>

<body>
	<div class="divsigin">
		<form class="formsignin" action="insertSG" method="get">
			<h1 style="text-align: center;border-bottom: 3px solid;padding-bottom: 10px; ">Create Account</h1>
			<h1 style="text-align: center;"></h1>

			<input type="text" placeholder=" Firstname" name="firstname" required><br>

			<input type="text" placeholder=" Lastname" name="lastname" required><br>

			<input type="text" placeholder=" Username" name="username" required><br>

			<input type="password" placeholder="Password" name="password" required><br>

			<input type="submit" value="Submit" style="margin-left: 30px;" class="button1">
			<a href=""><input type="button" value="Back" style="float: right; margin-right: 10px;" class="button1"> </a>
		</form>

		<div style="text-align: center;font-size: 150%;"><a href="">Back to Home</a></div>
	</div>

</body>

</html>