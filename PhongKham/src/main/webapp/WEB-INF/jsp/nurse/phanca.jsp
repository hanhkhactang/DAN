<%-- 
    Document   : list-customer
    Created on : Sep 6, 2021, 4:12:56 PM
    Author     : Neet Nguyen
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

 <div class="container">
  <div class="col-md-offset-1 col-md-10">
   <h2>CRM - Customer Relationship Manager</h2>
   <hr />

   <input type="button" value="Add Customer"
    onclick="window.location.href='showForm'; return false;"
    class="btn btn-primary" />
    <br/><br/>
   <div class="panel panel-info">
    <div class="panel-heading">
     <div class="panel-title">Customer List</div>
    </div>
    <div class="panel-body">
     <table class="table table-striped table-bordered">
      <tr>
       <th>Day</th>
       <th>Action</th>
      </tr>

      <!-- loop over and print our customers -->
    <c:forEach var="tempCustomer" items="${customers}">
        <tr>
            <td> ${tempCustomer.thu}</td>
            <c:if test="${tempCustomer.id_nurse == currentUser.id}">
            <td>Truc</td>
            </c:if>
            <c:if test="${tempCustomer.id_nurse != currentUser.id}">
            <td>Nghi</td>
            </c:if>

       </tr>
    </c:forEach>

    </table>

    </div>
   </div>
  </div>

 </div>
