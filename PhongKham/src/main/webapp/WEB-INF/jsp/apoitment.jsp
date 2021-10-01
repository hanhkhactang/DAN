<%-- 
    Document   : apoitment
    Created on : Oct 1, 2021, 8:18:53 AM
    Author     : Neet Nguyen
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link href="<c:url value="/css/register.css"/>" rel="stylesheet" />
    </head>
    <body>
        <div class="main">
            <div class="register">
                <h2>Book Appointment Here</h2>
                
                <form:form id="register" method="post" action="addPatient" modelAttribute="patient"> 
                    
                    <label for="name">Full Name : </label>
                    <br>
                    <form:input path="name" type="text" name="name" id="name" placeholder="Enter Your Full Name" />
                    <br><br>
                    <label for="email">Email : </label>
                    <br>
                    <form:input path="email" type="email" name="email" id="name" placeholder="Enter Your Email" />
                    <br><br>
                    <label for="mess">Mess : </label>
                    <br>
                    <form:input path="mess" type="text" name="mess" id="name" placeholder="Enter Your Mess" />
                    <br><br>
                    <label for="lichkham">Date Appointment : </label>
                    <br>
                    <form:input path="lichkham" type="datetime-local" name="lichkham" id="name" placeholder="Enter Your Identity card number" />
                    <br><br>     
                    <input type="submit" value="Sign Up" name="submit" id="submit" />
                </form:form>
                
            </div>
            
        </div>
        
        
    </body>
</html>
