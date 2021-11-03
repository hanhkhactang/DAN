<%-- 
    Document   : login1
    Created on : Sep 30, 2021, 5:04:52 PM
    Author     : Neet Nguyen
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="<c:url value="/css/login.css" />" />
    </head>
    <body>
        <c:if test="${param.error!=null}">
            <div class="alert alert-danger">
            Da co loi! vui long quay lai sau!
        
            </div>
            
        </c:if>
        
        <c:if test="${param.accessDenied != null}">
            <div class="alert alert-danger">
                Ban khong co quyen truy cap!!
        
             </div>
     
        </c:if>
        <header>
            <a href="<c:url value="/" />"><img src="<c:url value="/images/logo.png"/>" alt="" class="logo"/><a>
            <nav>
                <ul class="nav-area">
                    <li><a href="<c:url value="/"/>">Home</a></li>
                    <li><a href="<c:url value="/departments" />">Departments</a></li>
                    <li><a href="<c:url value="/about" />">About</a></li>
                    <li><a href="<c:url value="/contact" />">Contact</a></li>
                    <li><a href="<c:url value="/register1" />">Sign Up</a></li>
                </ul>
            </nav>           
        </header>
 
        <div class="center">
            <h1>Login</h1>
            <c:url value="/login" var="action"/>
            <form method="post" action="${action}">
                <div class="txt_field">
                    <input id="username" name="username" type="text" required />
                    <span></span>
                    <label for="username">Username</label>
                </div>
                <div class="txt_field">
                    <input id="password" name="password" type="password" required />
                    <span></span>
                    <label for="password">Password</label>
                </div>
                <div class="pass">Forgot Password</div>
                <input type="submit" value="Login" />
                <div class="signup_link">
                    Not a member? <a href="<c:url value="/register1" />">Sign up</a>
                </div>
            </form>
            
            
        </div>
    </body>
</html>
