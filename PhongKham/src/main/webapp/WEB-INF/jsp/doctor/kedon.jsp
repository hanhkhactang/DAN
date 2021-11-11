<%-- 
    Document   : kedon
    Created on : Nov 11, 2021, 8:54:30 AM
    Author     : Neet Nguyen
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="row">
    <div class="col-md-3 col-xs-12">
        <c:forEach var="p" items="${medicines}">
        <div class="card">
            <div class="card-body">
                <h4>${p.name}</h4>
                <p>${p.chucNang}</p>
                <a href="#" onclick="addToDonThuoc(${p.id}, '${p.name}')" class="btn btn-primary">Chon</a>
            </div>
        </div>
        </c:forEach>
    </div>  
</div>
