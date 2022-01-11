<%-- 
    Document   : list-customer
    Created on : Sep 6, 2021, 4:12:56 PM
    Author     : Neet Nguyen
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

 <div class="container">
  <div class="col-md-offset-1 col-md-10">
   

   
    <br/><br/>
   <div class="panel panel-info">
    <div class="panel-heading">
     <div class="panel-title">Danh sách phân ca</div>
    </div>
    <div class="panel-body">
     <table class="table table-striped table-bordered">
      <tr>
       <th>Thu</th>
       <th>Doctor</th>
       <th>Nurse</th>
       <th>Phân ca</th>
      </tr>

      <!-- loop over and print our customers -->
    <c:forEach var="tempCustomer" items="${customers}">

       <!-- construct an "update" link with customer id -->
        <c:url var="updateLink" value="updatephanca">
            <c:param name="customerId" value="${tempCustomer.thu}" />
        </c:url>

       <!-- construct an "delete" link with customer id --> 
        <c:url var="deleteLink" value="delete">
            <c:param name="customerId" value="${tempCustomer.thu}" />
        </c:url>
       
        <tr>
            <td>${tempCustomer.thu}</td>
            <c:forEach var="u" items="${user}">
                <c:if test="${u.id == tempCustomer.id_doctor}">
            <td>${u.firstName}</td>
                </c:if>
            </c:forEach>
            <c:forEach var="u" items="${user}">
                <c:if test="${u.id == tempCustomer.id_nurse}">
            <td>${u.firstName}</td>
                </c:if>
            </c:forEach>
        
        

            <td>
         <!-- display the update link --> <a href="${updateLink}">Update</a>
            </td>

       </tr>


    </c:forEach>

    </table>

    </div>
   </div>
  </div>

 </div>
