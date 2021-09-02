<%-- 
    Document   : base
    Created on : Aug 11, 2021, 9:17:13 AM
    Author     : Neet Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            <tiles:insertAttribute name="title"/>
        </title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Free HTML5 Website Template by uicookies.com" />
        <meta name="keywords" content="free bootstrap 4, free bootstrap 4 template, free website templates, free html5, free template, free website template, html5, css3, mobile first, responsive" />
        <meta name="author" content="uicookies.com" />

        <link href="https://fonts.googleapis.com/css?family=Work+Sans" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet" />

        <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
        <link rel="stylesheet" href="<c:url value ="/css/open-iconic-bootstrap.min.css"/>">

        <link rel="stylesheet" href="<c:url value="/css/owl.carousel.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/owl.theme.default.min.css"/>">

        <link rel="stylesheet" href="<c:url value="/css/icomoon.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/flaticon.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/animate.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/bootstrap-datepicker.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/style.css"/>">
        
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark probootstrap-navbar-dark">
            <div class="container">
          <!-- <a class="navbar-brand" href="index.html">Health</a> -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-nav" aria-controls="probootstrap-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

          <div class="collapse navbar-collapse" id="probootstrap-nav">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item active"><a href="<c:url value="/"/>" class="nav-link pl-0">Home</a></li>
              <li class="nav-item"><a href="<c:url value="/departments" />" class="nav-link">Departments</a></li>
              <li class="nav-item"><a href="<c:url value="/about" />" class="nav-link">About</a></li>
              <li class="nav-item"><a href="<c:url value="/contact" />" class="nav-link">Contact</a></li>
              <c:if test="${pageContext.request.userPrincipal.name == null}">
                <li class="nav-item"><a href="<c:url value="/login" />" class="nav-link">Login</a></li>
                <li class="nav-item"><a href="<c:url value="/register" />" class="nav-link">Dang ky</a></li>

              </c:if>
              <c:if test="${pageContext.request.userPrincipal.name != null}">
                <li class="nav-item">
                    <a href="<c:url value="/" />" class="nav-link">${pageContext.request.userPrincipal.name}</a>
                </li>
                <li class="nav-item">
                    <a href="<c:url value="/logout" />" class="nav-link">Logout</a>
                </li>   

              </c:if>

            </ul>
            <div class="ml-auto">
              <form action="#" method="get" class="probootstrap-search-form mb-sm-0 mb-3">
                <div class="form-group">
                  <button class="icon submit"><span class="fa fa-search"></span></button>
                  <input type="text" class="form-control" placeholder="Search">
                </div>
              </form>
            </div>
          </div>
        </div>
        </nav>
        <!-- HEADER -->
        <tiles:insertAttribute name="header"/>
       
        <!-- CONTENT -->
        <tiles:insertAttribute name="content"/>
        
        <!-- FOOTER -->
        <tiles:insertAttribute name="footer"/>
        

        <script src="<c:url value="/js/jquery-3.2.1.min.js"/>"></script>
        <script src="<c:url value="/js/popper.min.js"/>"></script>
        <script src="<c:url value="/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value="/js/owl.carousel.min.js"/>"></script>
        <script src="<c:url value="/js/jquery.waypoints.min.js"/>"></script>
        <script src="<c:url value="/js/bootstrap-datepicker.js"/>"></script>
        <script src="<c:url value="/js/jquery.animateNumber.min.js"/>"></script>

        <script src="<c:url value="/js/main.js"/>"></script>


        
    </body>
</html>
