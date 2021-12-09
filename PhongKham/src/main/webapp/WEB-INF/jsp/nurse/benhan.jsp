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
       <th>Bac Sy Kham</th>
       <th>Ten benh Nhan</th>
       <th>Ngay Kham</th>
       <th>chuan Doan</th>
       <th>Tinh trang</th>
      </tr>

      <!-- loop over and print our customers -->
      <c:forEach var="benhan" items="${benhan}">
          
       <!-- construct an "update" link with customer id -->
       <c:url var="confirmLink" value="benhanbenhnhan">
            <c:param name="benhanid" value="${benhan.id}" />
       </c:url>

       <!-- construct an "delete" link with customer id --> 
       <c:url var="updateLink" value="dt">
        <c:param name="benhanid" value="${benhan.id}" />
       </c:url>
       
       <tr>
           <c:forEach var="u" items="${user}">
                <c:if test="${u.id == benhan.id_doctor}">
            <td>${u.firstName}</td>
                </c:if>
            </c:forEach>
            <c:forEach var="u" items="${user}">
                <c:if test="${u.id == benhan.id_patient}">
            <td>${u.firstName}</td>
                </c:if>
            </c:forEach>

        
        

        <td>
         ${benhan.ngaykham}
        </td>
        <td>
         ${benhan.chuandoan}
        </td>

        
         
            <td><a href="${confirmLink}">Xem chi ti?t</a></td>
      
       </tr>

      
      </c:forEach>

     </table>

    </div>
   </div>
  </div>

 </div>
