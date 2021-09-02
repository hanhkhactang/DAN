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


