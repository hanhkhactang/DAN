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
       <th>First Name</th>
       <th>Last Name</th>
       <th>Email</th>
       <th>Action</th>
      </tr>

      <!-- loop over and print our customers -->
      <c:forEach var="tempCustomer" items="${customers}">
          <c:if test="${tempCustomer.userRole == 'ROLE_USER'}">  

       <!-- construct an "update" link with customer id -->
       <c:url var="updateLink" value="updateForm">
            <c:param name="customerId" value="${tempCustomer.id}" />
       </c:url>

       <!-- construct an "delete" link with customer id --> 
       <c:url var="deleteLink" value="delete">
        <c:param name="customerId" value="${tempCustomer.id
            }" />
       </c:url>
       
       <tr>
        <td>${tempCustomer.firstName}</td>
        <td>${tempCustomer.lastName}</td>
        <td>${tempCustomer.email}</td>
        
        

        <td>
         <!-- display the update link --> <a href="${updateLink}">Update</a>
         | <a href="${deleteLink}"
         onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
        </td>

       </tr>
        </c:if> 
      </c:forEach>

     </table>

    </div>
   </div>
  </div>

 </div>
