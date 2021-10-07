<%-- 
    Document   : editEmployee
    Created on : Oct 1, 2021, 10:06:48 AM
    Author     : Neet Nguyen
--%>

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
        <div class="main">
            <div class="register">
                <h2>Edit Employee Here</h2>
                
                <form:form id="register" method="post" action="updatephanca" modelAttribute="customer"> 
                    
                    <label for="thu">Ngay Truc</label>
                    <br>
                    <form:input path="thu" type="text" name="fname" id="name" placeholder="Enter First Name"  />
                    <br><br>
                    <label  for="id_doctor">DOCTOR :</label>
                    <br>
                    
                    <form:select id="name" path="id_doctor">
                    <c:forEach var="tempCustomer" items="${user}">
                        <c:if test="${tempCustomer.userRole == 'ROLE_DOCTOR'}">
                        <form:option value="${tempCustomer.id}">${tempCustomer.firstName}</form:option>
                        </c:if>
                    </c:forEach>
                    </form:select>
                    <br><br>
                    <label for="id_nurse">NURSE : </label>
                    <br>
                    <form:select id="name" path="id_nurse">
                    <c:forEach var="tempCustomer" items="${user}">
                        <c:if test="${tempCustomer.userRole == 'ROLE_NURSE'}">
                        <form:option value="${tempCustomer.id}">${tempCustomer.firstName}</form:option>
                        </c:if>
                    </c:forEach>
                    </form:select>

                    <input type="submit" value="Edit Employee" name="submit" id="submit" />
                    
                </form:form>
                
            </div>
            
        </div>
        
        
    </body>
</html>