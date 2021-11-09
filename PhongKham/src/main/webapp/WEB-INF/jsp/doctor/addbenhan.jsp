<%-- 
    Document   : apoitment
    Created on : Oct 1, 2021, 8:18:53 AM
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
        <header>
            <a href="<c:url value="/" />"><img src="<c:url value="/images/logo.png"/>" alt="" class="logo"/><a>
            <nav>
                <ul class="nav-area">
                    <li><a href="<c:url value="/"/>">Home</a></li>
                    <li><a href="<c:url value="/departments" />">Departments</a></li>
                    <li><a href="<c:url value="/about" />">About</a></li>
                    <li><a href="<c:url value="/contact" />">Contact</a></li>
                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                        <li>
                            <a href="<c:url value="/updateinformation" />">
                                <c:if test="${currentUser.avatar != null}">
                                    <img src="${currentUser.avatar}" class="avatar"/>
                                    
                                </c:if>
                                <c:if test="${currentUser.avatar == null}">
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                </c:if>
                                ${pageContext.request.userPrincipal.name}
                                    
                            </a>
                        </li>
                    </c:if>
<!--                    <li><a href="<c:url value="/login" />">Login</a></li>-->
                </ul>
            </nav>           
        </header>
        
        <div class="main">
            <div class="register">
                <h2>Book Appointment Here</h2>
                
                <form:form id="register" method="post" action="addbenhan" modelAttribute="benhan"> 
                    
                    
                    <br><br>
                    <label for="mess">Chuon doan : </label>
                    <br>
                    <form:input path="chuandoan" type="text" name="chuandoan" id="name" placeholder="Chuandoan" />
                    <br><br>
                    <label for="mess">Lich uong thuoc : </label>
                    <br>
                    <form:input path="lichuongthuoc" type="text" name="lichuongthuoc" id="name" placeholder="Lich uong thuoc" />
                    <br><br>
                    <label for="mess">Loi khuyen : </label>
                    <br>
                    <form:input path="loikhuyen" type="text" name="loikhuyen" id="name" placeholder="Loi khuyen" />
                    <br><br>
                    <input type="submit" value="Take appointment" name="submit" id="submit" />
                </form:form>
                
            </div>
            
        </div>
        
        
    </body>
</html>
