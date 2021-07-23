<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="/BookStore/insertImg" method="post" enctype="multipart/form-data">
<input type="file" name="img" />
<input type="text" name="prices" />
<input type="text" name="names" />
<input type="text" name="des" />
<input type="submit" value="Save">

</form>
</body>
</html>