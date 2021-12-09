<%-- 
    Document   : register1
    Created on : Oct 26, 2021, 5:06:30 PM
    Author     : Neet Nguyen
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Employee</title>
        <link href="<c:url value="/css/register1.css"/>" rel="stylesheet" />
    </head>
    <body>
        <div class="container"> 
            <div class="title">Add Employee</div>
            <form:form action="saveCustomer" method="post" modelAttribute="customer"> 
                <div class="user-details">
                    <div class="input-box">
                        <span class="details">First Name</span>
                        <form:input path="firstName" type="text" placeholder="Enter Your First Name"/>
                    </div>
                    <div class="input-box">
                        <span class="details">Last Name</span>
                        <form:input path="lastName" type="text" placeholder="Enter Your Last Name"/>
                    </div>
                    <div class="input-box">
                        <span class="details">Email</span>
                        <form:input path="email" type="text" placeholder="Enter Your Email"/>
                    </div>
                    <div class="input-box">
                        <span class="details">Address</span>
                        <form:input path="diaChi" type="text" placeholder="Enter Your Address"/>
                    </div>
                    <div class="input-box">
                        <span class="details">Identity card number</span>
                        <form:input path="cmnd" type="text" placeholder="Enter Your Identity card number"/>
                    </div>
                    <div class="input-box">
                        <span class="details">Phone</span>
                        <form:input path="phone" type="text" placeholder="Enter Phone number"/>
                    </div>
                    <div class="input-box">
                        <span class="details">Username</span>
                        <form:input path="username" type="text" placeholder="Enter Your Username"/>
                    </div>
                    <div class="input-box">
                        <span class="details">Password</span>
                        <form:input path="password" type="password" placeholder="Enter Your Password"/>
                    </div>
                    <div class="input-box">
                        <span class="details">Confirm Password</span>
                        <form:input path="confirmPassword" type="password" placeholder="Enter Your Confirm Password"/>
                    </div>
                    <div class="input-box">
                        <span class="details">Role</span>
                        <form:select id="name" path="userRole">
                            <form:option value="ROLE_ADMIN">Administrator</form:option>
                            <form:option value="ROLE_DOCTOR">Doctor</form:option>
                            <form:option value="ROLE_NURSE">Nurse</form:option>
                        </form:select>       
                    </div>
                    <div class="button">
                        <input type="submit" value="Add Employee" />
                    </div>
                </div>
                
            </form:form>
        </div>
    </body>
</html>
