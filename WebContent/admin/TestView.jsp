<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <script src="js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="js/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/startmin.js"></script>

    <title>Startmin - Bootstrap Admin Theme</title>
     
    <!-- Bootstrap Core CSS -->
    <style>
	     <%@ include file="css/bootstrap.min.css"%>
		</style>


    <!-- MetisMenu CSS -->
    <style>
<%@ include file="css/table.css"%>
</style>
    <style>
	     <%@ include file="css/metisMenu.min.css"%>
		</style>

    <!-- Timeline CSS -->
    <style>
	     <%@ include file="css/timeline.css"%>
		</style>

    <!-- Custom CSS -->
    <style>
	     <%@ include file="css/startmin.css"%>
		</style>

    <!-- Morris Charts CSS -->
    <style>
	     <%@ include file="css/morris.css"%>
		</style>

    <!-- Custom Fonts -->
    <style>
	     <%@ include file="css/font-awesome.min.css"%>
		</style>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery -->
</head>
<body>

<div id="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="navbar-header">
            <a class="navbar-brand" href="/BookStore/Reload">Startmin</a>
        </div>

        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>

        <!-- Top Navigation: Left Menu -->
        <ul class="nav navbar-nav navbar-left navbar-top-links">
            <li><a href="#"><i class="fa fa-home fa-fw"></i> Website</a></li>
        </ul>

        <!-- Top Navigation: Right Menu -->
        <ul class="nav navbar-right navbar-top-links">
            <li class="dropdown navbar-inverse">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-bell fa-fw"></i> <b class="caret"></b>
                </a>
                <ul class="dropdown-menu dropdown-alerts">
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-comment fa-fw"></i> New Comment
                                <span class="pull-right text-muted small">4 minutes ago</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>See All Alerts</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i> secondtruth <b class="caret"></b>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </li>
                </ul>
            </li>
        </ul>

        <!-- Sidebar -->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">

                <ul class="nav" id="side-menu">
                    <li class="sidebar-search">
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                        </div>
                    </li>
                    <li>
                        <a href="#" class="active"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-fw"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#">Second Level Item</a>
                            </li>
                            <li>
                                <a href="#">Third Level <span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="#">Third Level Item</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>

            </div>
        </div>
    </nav>

    <!-- Page Content -->
    <div id="page-wrapper">
        <div class="container-fluid">

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Hi Boss!</h1>
                </div>
            </div>
       <center>
   <h2>
     <a href="/BookStore/new">Add Data</a>
          &nbsp;&nbsp;&nbsp;
     <a href="/BookStore/Admin">List Server</a>
   </h2>
   </center>

   
<div align="center">
           <table border="1" cellpadding="5">
             <caption><h2>List of Server</h2></caption>
               <tr>
                   <th>ID</th>
                   <th>Title</th>
                   <th>Detail</th>
                   <th>Price</th>
                   <th>Image</th>
<!--                    <th>Action</th> -->
                </tr>
    
       <c:forEach items="${listbook}" var="book">
         <tr>
          <td><c:out value="${book.id}"></c:out></td>
          <td><c:out value="${book.title}"></c:out></td>
          <td><c:out value="${book.detail}"></c:out></td>
          <td><c:out value="${book.price}"></c:out></td>
          <td><img style="width: 30px" src="data:image/jpg;base64,${book.base64Image}"/></td> 
          
<%--           <td>
            <a href="/BookStore/edit?id=<c:out value="${book.id}"></c:out>">Edit</a>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <a href="/BookStore/delete?id=<c:out value='${book.id}'></c:out>">delete</a>
          </td> --%>
      
        </tr>
     </c:forEach>
  </table>
</div>
            <!-- ... Your content goes here ... -->

        </div>
    </div>

</div>



</body>
</html>
