<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="image" items="${listImage}">
					  		<div class="img">
						  		<img  src="data:image/jpg;base64,${image.base64Image}"/>
						  		<a><c:out value="${image.name}"/></a>
				  		</div>
					  		
  </c:forEach>
</body>
</html>