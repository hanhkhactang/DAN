<%-- 
    Document   : medicine
    Created on : Oct 1, 2021, 9:42:52 AM
    Author     : Neet Nguyen
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Medicine Form</title>
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
                    <li><a href="<c:url value="/login" />">Login</a></li>
                </ul>
            </nav>           
        </header>
        <div class="main">
            <div class="register">
                <h2>Infomation Medicine Here</h2>
                
                <form:form id="register" method="post" action="saveMedicine" modelAttribute="medicine">
                    <form:hidden path="id" />
                    <label for="name">Medicine Name : </label>
                    <br>
                    <form:input path="name" type="text" name="fname" id="name" placeholder="Enter Medicine Name" />
                    <br><br>
                    <label for="chucnang">Drug Effects : </label>
                    <br>
                    <form:input path="chucNang" type="text" name="lname" id="name" placeholder="Enter Drug Effects" />
                    <br><br>
                    <label for="description">Description : </label>
                    <br>
                    <form:input path="des" type="text" name="email" id="name" placeholder="Enter Description" />
                    <br><br>                  
                    <input type="submit" value="Add Medicine" name="submit" id="submit" />
                </form:form>
                
            </div>
            
        </div>
        
        
    </body>
</html>
<c:forEach var="tempCustomer" items="${customers}">
                        <c:if test="${tempCustomer.userRole == 'ROLE_ADMIN'}">
                        <form:option value="${tempCustomer.id}">${tempCustomer.firstName}</form:option>
                        </c:if>>
                        </c:forEach>
