<!DOCTYPE html>
<html>

<head>
   <meta charset="ISO-8859-1">
   <title>Book Store Application</title>
   <style>
      body {
         background-image: url("https://msmobile.com.vn/upload_images/images/hinh-nen-3d-cho-may-tinh-cuc-dep-15.jpg");
      }
   </style>

</head>

<body>
   <center>
      <h2>
         <a href="/BookStore/new" id="bt" class="bt1">Add Data</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <a href="/BookStore/Admin" id="bt" class="bt1">Back</a>
      </h2>
   </center>

   <div align="center">

      <c:if test="${book != null}">
         <form action="update" method="get">
      </c:if>

      <c:if test="${book == null}">
         <form action="insertImg" method="post" enctype="multipart/form-data">
      </c:if>

      <table border="1" cellpadding="4">

         <caption>
            <c:if test="${book != null}">
               <h2 class="h2">Edit Data</h2>
            </c:if>
            <c:if test="${book == null}">
               <h2 class="h2">Add New Data</h2>
            </c:if>

         </caption>
         <c:if test="${book != null}">
            <input type="hidden" name="id" value="<c:out value=" ${book.id}" />"/>
         </c:if>
         <tr>
            <th>Title</th>
            <td><input type="text" name="title" value="<c:out value=" ${book.title}" />"/></td>
         </tr>

         <tr>
            <th>Detail</th>
            <td><input type="text" name="detail" value="<c:out value=" ${book.detail}" />"/></td>
         </tr>

         <tr>
            <th>Price</th>
            <td><input type="text" name="price" value="<c:out value=" ${book.price}" />"></td>
         </tr>
         <tr>
            <th>IMG</th>
            <td><input type="file" name="img" value='<img src="data:image/jpg;base64,${book.base64Image}" />' /></td>
         </tr>
      </table>
      <input id="savebt" class="savebt1" type="submit" value="Save" />
      </form>
   </div>
</body>

</html>