<%-- 
    Document   : informationPatient
    Created on : Sep 22, 2021, 4:34:39 PM
    Author     : Neet Nguyen
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Apoitment</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
 rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="<c:url value="/css/style1.css" />" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css" rel="stylesheet" />
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

</head>
<body>
<div class="container">
        <div class="menu-bar">
            <ul>
                <li class="active1"><a href="<c:url value="/"/>"><i class="f1"></i>Home</a></li>
                <li><a href="<c:url value="/departments" />"><i class="f1"></i>Departments</a></li>
                <li><a href="<c:url value="/about" />"><i class="f1"></i>About</a></li>
                <li><a href="<c:url value="/contact" />"><i class="f1"></i>Contact</a></li>
                <c:if test="${pageContext.request.userPrincipal.name == null}">
                    <li><a href="<c:url value="/login" />"><i class="f1"></i>Login</a></li>
                    <li><a href="<c:url value="/register" />"><i class="f1"></i>Register</a></li>
                </c:if>
                <c:if test="${pageContext.request.userPrincipal.name != null}">
                    <li><a href="<c:url value="/updateinformation" />"><i class="f1"></i>${pageContext.request.userPrincipal.name}</a></li>
                    <li><a href="<c:url value="/logout" />"><i class="f1"></i>Logout</a></li>
                </c:if>
            </ul>
        </div>

    <div class="col-md-offset-2 col-md-7">
    <h2 class="text-center">Take Apoitment</h2>
        
        <form:form action="addPatient" cssClass="form-horizontal"
        method="post" modelAttribute="patient">

      <!-- need to associate this data with customer id -->
        <form:hidden path="id" />


            <div class="form-group">
                <label for="mess" class="col-md-3 control-label">Mess</label>
                <div class="col-md-9">
                    <form:input path="mess" cssClass="form-control" />
                </div>
            </div>
            <div class="form-group">
                <label for="lichkham" class="col-md-3 control-label">lichkham</label>
                <div class="col-md-9">
                    <form:input type="datetime-local" path="lichkham" cssClass="form-control" />
                </div>
            </div>
            <div class="form-group">
                <!-- Button -->
                <div class="col-md-offset-3 col-md-9">
                    <form:button cssClass="btn btn-primary">Confirm</form:button>
                </div>
            </div>

            </form:form>
                </div>
            </div>

</body>
</html>

