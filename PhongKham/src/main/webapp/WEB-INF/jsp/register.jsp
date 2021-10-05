<%-- 
    Document   : register1
    Created on : Sep 30, 2021, 6:19:21 PM
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
                <h2>Register Here<c:if test="${currentUser != null}">
    ${currentUser.email}
</c:if></h2>
                
                <form:form id="register" method="post" action="${action}" modelAttribute="user"> 
                    <label for="firsname">First Name : </label>
                    <br>
                    <form:input path="firstName" type="text" name="fname" id="name" placeholder="Enter Your First Name" />
                    <br><br>
                    <label for="lastname">Last Name : </label>
                    <br>
                    <form:input path="lastName" type="text" name="lname" id="name" placeholder="Enter Your Last Name" />
                    <br><br>
                    <label for="email">Email : </label>
                    <br>
                    <form:input path="email" type="email" name="email" id="name" placeholder="Enter Your Email" />
                    <br><br>
                    <label for="diachi">Address : </label>
                    <br>
                    <form:input path="diaChi" type="text" name="adress" id="name" placeholder="Enter Your Address" />
                    <br><br>
                    <label for="cmnd">Identity card number : </label>
                    <br>
                    <form:input path="cmnd" type="text" name="cmnd" id="name" placeholder="Enter Your Identity card number" />
                    <br><br>
                    <label for="username">Username : </label>
                    <br>
                    <form:input path="username" type="text" name="username" id="name" placeholder="Enter Your Username" />
                    <br><br>
                    <label for="password">Password : </label>
                    <br>
                    <form:input path="password" type="password" name="password" id="name" placeholder="Enter Your Password" />
                    <br><br>
                    <label for="confirm-password">Confirm Password : </label>
                    <br>
                    <form:input path="confirmPassword" type="password" name="confirm-password" id="name" placeholder="Enter Your Confirm Password" />
                    <br><br>
                    <input type="submit" value="Sign Up" name="submit" id="submit" />
                </form:form>
                
            </div>
            
        </div>
        
        
    </body>
</html>
