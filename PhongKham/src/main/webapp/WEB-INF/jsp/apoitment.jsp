<%-- 
    Document   : apoitment
    Created on : Sep 19, 2021, 9:06:46 AM
    Author     : Neet Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div>
            <form:form modelAttribute="apoitment" method="post">
                <form:hidden path="id"/>
                <div class="form-group">
                    <form:input type="text" path="name" />
                </div>
                <div class="form-group">
                    <form:input type="text" path="email" />
                </div>
                <div class="form-group">
                    <form:input type="text" path="mess" />
                </div>
                <div class="form-group">
                    <form:input type="text" path="ngayHen" />
                </div>                 
            </form:form>
        </div>      
    </body>
</html>
