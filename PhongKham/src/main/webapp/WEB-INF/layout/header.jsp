<%-- 
    Document   : header
    Created on : Aug 11, 2021, 9:20:25 AM
    Author     : Neet Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark probootstrap-navbar-dark">
            <div class="container">
          <!-- <a class="navbar-brand" href="index.html">Health</a> -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-nav" aria-controls="probootstrap-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

          <div class="collapse navbar-collapse" id="probootstrap-nav" var="c" items="${customers}">
            <ul class="navbar-nav mr-auto" >
              <li class="nav-item active"><a href="<c:url value="/"/>" class="nav-link pl-0">Home</a></li>
              <li class="nav-item"><a href="<c:url value="/departments" />" class="nav-link">Departments</a></li>
              <li class="nav-item"><a href="<c:url value="/about" />" class="nav-link">About</a></li>
              <li class="nav-item"><a href="<c:url value="/contact" />" class="nav-link">Contact</a></li>
              <c:if test="${pageContext.request.userPrincipal.name == null}">
                <li class="nav-item"><a href="<c:url value="/login" />" class="nav-link">Login</a></li>
                <li class="nav-item"><a href="<c:url value="/register1" />" class="nav-link">Dang ky</a></li>

              </c:if>
                
              <c:if test="${pageContext.request.userPrincipal.name != null}">
                  
                <li class="nav-item">
                    <a href="<c:url value="/updateinformation" />" class="nav-link">
                        <c:if test="${currentUser.avatar != null}">
                            <img style="width: 30px;" src="${currentUser.avatar}" class="rounded-circle"/>
                        </c:if>
                        <c:if test="${currentUser.avatar == null}">
                            <i class="fa fa-user" aria-hidden="true"></i>
                        </c:if>
                        ${pageContext.request.userPrincipal.name}
                    </a>
                </li>
                
               
               
                <li class="nav-item">
                    <a href="<c:url value="/logout" />" class="nav-link">Logout</a>
                </li>  
                
                
              </c:if>
                

            </ul>
            <div class="ml-auto">
                <form action="<c:url value="/doctor/dt/"/>" method="get" class="probootstrap-search-form mb-sm-0 mb-3">
                <div class="form-group">
                  <button type="submit" class="icon submit"><span class="fa fa-search"></span></button>
                  <input type="text" name="kw" class="form-control" placeholder="Search">
                </div>
              </form>
            </div>
          </div>
        </div>
</nav>
<header role="banner" class="probootstrap-header py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-3 mb-4">
            <a href="<c:url value="/" />" class="mr-auto"><img src="images/logo.png" width="212" height="48" class="hires" alt="Free Template by uiCookies"></a>
        </div>  
        <div class="col-md-9">
          <div class="float-md-right float-none">
          <div class="probootstrap-contact-phone d-flex align-items-top mb-3 float-left">
            <span class="icon mr-2"><i class="fa fa-phone"></i></span>
            <span class="probootstrap-text"> +900 123 456 7 <small class="d-block"><a href="#" class="arrow-link">Appointment <i class="fa fa-chevron-right"></i></a></small></span>
          </div>
          </div>
        </div>
      </div>
    </div>
</header>


