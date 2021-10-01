<%-- 
    Document   : addDoctor
    Created on : Sep 6, 2021, 3:31:08 PM
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
        <link href="<c:url value="/css/register.css"/>" rel="stylesheet" />
    </head>
    <body>
        <div class="main">
            <div class="register">
                <h2>Add Employee Here</h2>
                
                <form:form id="register" method="post" action="saveCustomer" modelAttribute="customer"> 
                    <label for="firsname">First Name : </label>
                    <br>
                    <form:input path="firstName" type="text" name="fname" id="name" placeholder="Enter First Name"  />
                    <br><br>
                    <label for="lastname">Last Name : </label>
                    <br>
                    <form:input path="lastName" type="text" name="lname" id="name" placeholder="Enter Last Name"  />
                    <br><br>
                    <label for="email">Email : </label>
                    <br>
                    <form:input path="email" type="email" name="email" id="name" placeholder="Enter Email"  />
                    <br><br>
                    <label for="phone">Phone : </label>
                    <br>
                    <form:input path="phone" type="text" name="phone" id="name" placeholder="Enter Phone"  />
                    <br><br>
                    <label for="diachi">Address : </label>
                    <br>
                    <form:input path="diaChi" type="text" name="adress" id="name" placeholder="Enter Address" />
                    <br><br>
                    <label for="cmnd">Identity card number : </label>
                    <br>
                    <form:input path="cmnd" type="text" name="cmnd" id="name" placeholder="Enter Identity card number"  />
                    <br><br>
                    <label for="username">Username : </label>
                    <br>
                    <form:input path="username" type="text" name="username" id="name" placeholder="Enter Username"  />
                    <br><br>
                    <label for="password">Password : </label>
                    <br>
                    <form:input path="password" type="password" name="password" id="name" placeholder="Enter Password"  />
                    <br><br>
                    <label for="confirm-password">Confirm Password : </label>
                    <br>
                    <form:input path="confirmPassword" type="password" name="confirm-password" id="name" placeholder="Enter Confirm Password" />
                    <br><br>
                    <label for="confirm-password">Role : </label>
                    <br>
                    <form:select id="name" path="userRole">
                        <form:option value="ROLE_ADMIN">Administrator</form:option>
                        <form:option value="ROLE_DOCTOR">Doctor</form:option>
                        <form:option value="ROLE_NURSE">Nurse</form:option>
                    </form:select>  
                    <br><br>
                    <input type="submit" value="Add Employee" name="submit" id="submit" />
                </form:form>
                
            </div>
            
        </div>
        
        
    </body>
</html>
