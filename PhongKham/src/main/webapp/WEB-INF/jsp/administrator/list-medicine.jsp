<%-- 
    Document   : list-medicine
    Created on : Sep 13, 2021, 9:10:43 AM
    Author     : Neet Nguyen
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

 <div class="container">
  <div class="col-md-offset-1 col-md-10">
   

   <input type="button" value="Add Medicine"
    onclick="window.location.href='showFormMedicine'; return false;"
    class="btn btn-primary" />
    <br/><br/>
   <div class="panel panel-info">
    <div class="panel-heading">
     <div class="panel-title">Medicine List</div>
    </div>
    <div class="panel-body">
     <table class="table table-striped table-bordered">
      <tr>
       <th>Ten thuoc</th>
       <th>Chuc nang</th>
       <th>decription</th>
       <th>Action</th>
      </tr>

      <!-- loop over and print our customers -->
      <c:forEach var="tempMedicine" items="${medicines}">

       <!-- construct an "update" link with customer id -->
       <c:url var="updateLink" value="updateFormMedicine">
        <c:param name="medicineId" value="${tempMedicine.id}" />
       </c:url>

       <!-- construct an "delete" link with customer id --> 
       <c:url var="deleteLink" value="deleteMedicine">
        <c:param name="medicineId" value="${tempMedicine.id}" />
       </c:url>
       
       <tr>
        <td>${tempMedicine.name}</td>
        <td>${tempMedicine.chucNang}</td>
        <td>${tempMedicine.des}</td>
      
        
        

        <td>
         <!-- display the update link --> <a href="${updateLink}">Update</a>
         | <a href="${deleteLink}"
         onclick="if (!(confirm('Are you sure you want to delete this Medicine?'))) return false">Delete</a>
        </td>

       </tr>
       </c:forEach>
       

      

     </table>

    </div>
   </div>
  </div>

 </div>

