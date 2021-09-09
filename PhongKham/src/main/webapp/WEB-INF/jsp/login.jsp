<%-- 
    Document   : login
    Created on : Aug 26, 2021, 9:58:15 AM
    Author     : Neet Nguyen
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h1 class="text-danger text-center" >Dang Nhap</h1>

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

<c:url value="/login" var="action" />
<form class="text-danger" method="post" action="${action}">
    <div class="form-group">
        <lable for="username">Username</lable>
        <input type="text" id="username" name="username" />
    </div>
    <div class="form-group">
        <lable for="password">Password</lable>
        <input type="password" id="password" name="password" />
    </div>
    <div class="form-group">
        <input type="submit" value="Sign in" />
    </div>
    
    
</form>
