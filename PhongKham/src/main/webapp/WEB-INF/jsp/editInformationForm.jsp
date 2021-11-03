<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Employee</title>
        <link href="<c:url value="/css/register.css"/>" rel="stylesheet" />
    </head>
    <body>
        <header>
            <a href="<c:url value="/" />"><img src="<c:url value="/images/logo.png"/>" alt="" class="logo"/><a>
            <nav>
                <ul class="nav-area">
                    <li><a href="<c:url value="/"/>">Home</a></li>
                    <li><a href="<c:url value="/departments" />">Departments</a></li>
                    <li><a href="<c:url value="/about" />">About</a></li>
                    <li><a href="<c:url value="/contact" />">Contact</a></li>
                    <li><a href="<c:url value="/logout" />">Logout</a></li>
                </ul>
            </nav>           
        </header>
        <div class="main">
            <div class="register">
                <h2>Edit Information Here</h2>
                
                <form:form enctype="multipart/form-data" id="register" method="post" action="updateUser" modelAttribute="customer"> 
                    <form:hidden path="id" />
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
                    <form:hidden path="username" />
                    <form:hidden path="password"/>
                    <form:hidden path="userRole"/>
                    <label for="avatar">Avatar : </label>
                    <br>
                    <form:input path="file" type="file" name="avatar"  />
                    <input type="submit" value="Save information" name="submit" id="submit" />
                </form:form>
                
            </div>
            
        </div>
        
        
    </body>
</html>