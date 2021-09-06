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

<!--        <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

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
