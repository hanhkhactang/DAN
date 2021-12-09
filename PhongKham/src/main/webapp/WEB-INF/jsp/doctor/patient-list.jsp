<%-- 
    Document   : patient-list
    Created on : Sep 22, 2021, 2:01:36 PM
    Author     : Neet Nguyen
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

 <div class="container">
  <div class="col-md-offset-1 col-md-10">
   <h2>Patient List</h2>
   <hr />

  
   <br/><br/>
   <div class="panel panel-info">
    <div class="panel-heading">
     <div class="panel-title">Patient List</div>
    </div>
    <div class="panel-body">
     <table class="table table-striped table-bordered">
      <tr>
       <th>Name</th>
       <th>Email</th>
       <th>Mess</th>
       <th>Action</th>
      </tr>

      <!-- loop over and print our customers -->
      <c:forEach var="tempPatient" items="${patients}">
          <c:if test="${tempPatient.active==true}">

       <!-- construct an "update" link with customer id -->
       <c:url var="confirmLink" value="benhan">
            <c:param name="patientId" value="${tempPatient.id_user}" />
       </c:url>

       <!-- construct an "delete" link with customer id --> 
       <c:url var="deleteLink" value="addbenhan">
        <c:param name="patientId" value="${tempPatient.id_user}" />
       </c:url>
       
       <tr>
        <td>${tempPatient.name}</td>
        <td>${tempPatient.email}</td>
        <td>${tempPatient.mess}</td>
        
        

        <td>
         <!-- display the update link --> <a href="${confirmLink}">Xem benh an</a>
         | <a href="${deleteLink}"> Them benh an</a>
        </td>

       </tr>
       </c:if>
       
      </c:forEach>

     </table>

    </div>
   </div>
  </div>

 </div>
