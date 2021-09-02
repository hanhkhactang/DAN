<%-- 
    Document   : register
    Created on : Aug 26, 2021, 3:00:16 PM
    Author     : Neet Nguyen
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1 class="text-center text-danger">Dang ky</h1>
<c:url value="/register" var="action" />

<form:form class="text-danger" method="post" action="${action}" modelAttribute="user">
    <form:errors path="*" element="div" cssClass="alert alert-danger" />
    <c:if test="${errMsg != null}">
        <div class="alert alert-danger">
            ${errMsg}
        </div>
    </c:if>
    <div class="form-group">
        <lable for="firstname">First Name</lable>
        <form:input type="text" id="username" path="firstName"  />
    </div>
    <div class="form-group">
        <lable for="lastname">Last Name</lable>
        <form:input type="text" id="lastname" path="lastName"  />
    </div>
    <div class="form-group">
        <lable for="email">Email</lable>
        <form:input type="email" id="email" path="email"  />
    </div>
    <div class="form-group">
        <lable for="username">Username</lable>
        <form:input type="text" id="username" path="username"  />
    </div>
    <div class="form-group">
        <lable for="password">Password</lable>
        <form:input type="password" id="password" path="password"  />
    </div>
    <div class="form-group">
        <lable for="confirm-password">Confirm Password</lable>
        <form:input type="password" id="confirm-password" path="confirmPassword"  />
    </div>
    <div class="form-group">
        <input type="submit" value="Sign up" />
    </div>
    
    
</form:form>
