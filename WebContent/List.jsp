<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%-- <style>
<%@ include file="table.css"%>
</style> --%>
<title>Management</title>
</head>
<body>
  <center>
   <h2>
     <a href="/BookStore/new">Add Data</a>
          &nbsp;&nbsp;&nbsp;
     <a href="/BookStore/Admin">List Server</a>
   </h2>
   </center>

   
<div align="center">
  <table border="1" cellpadding="6">
    <caption><h2>List of Server</h2></caption>
    <tr>
      <th>ID</th>
      <th>Title</th>
      <th>Author</th>
      <th>Price</th>
      <th>Image</th>
      <th>Action</th>

    </tr>
    
       <c:forEach items="${listbook}" var="book">
         <tr>
          <td><c:out value="${book.id}"></c:out></td>
          <td><c:out value="${book.title}"></c:out></td>
          <td><c:out value="${book.detail}"></c:out></td>
          <td><c:out value="${book.price}"></c:out></td>
          <td><img style="width:50%;" src="data:image/jpg;base64,${book.base64Image}"/></td> 
          
          <td>
            <a href="/BookStore/edit?id=<c:out value="${book.id}"></c:out>">Edit</a>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <a href="/BookStore/delete?id=<c:out value='${book.id}'></c:out>">delete</a>
          </td>
      
        </tr>
     </c:forEach>
    
  </table>
</div>
</body>
</html>