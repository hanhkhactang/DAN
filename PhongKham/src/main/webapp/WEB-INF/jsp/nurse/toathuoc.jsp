<%-- 
    Document   : patient-list
    Created on : Sep 22, 2021, 2:01:36 PM
    Author     : Neet Nguyen
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

 <div class="container">
  <div class="col-md-offset-1 col-md-10">
   <h2>Patient List</h2>
   <hr />

  
   <br/><br/>
   <div class="panel panel-info">
       <c:forEach var="benhan" items="${benhan}">
          <c:if test="${u.id == benhan.id_patient}">
              <c:forEach var="user" items="${user}">
               <c:if test="${user.id == benhan.id_doctor && benhan.xacnhanyta == true}">
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
      </tr>

      <!-- loop over and print our customers -->
      

       
       <tr>
           
            <td>${user.firstName}</td>
               
            
            <td>${u.firstName}</td>


        
        

        <td>
         ${benhan.ngaykham}
        </td>
        <td>
         ${benhan.chuandoan}
        </td>

       </tr>


     </table>

    </div>
           <div class="panel-body">
     <table class="table table-striped table-bordered">
      <tr>
       <th>Ten thuoc</th>
       <th>so luong</th>
      </tr>

      <!-- loop over and print our customers -->
      <c:forEach var="detail" items="${detail}">
          <c:if test="${benhan.id == detail.idbenhan}">

       <!-- construct an "update" link with customer id -->
       
       <tr>
           <c:forEach var="medicine" items="${medicine}">
                <c:if test="${medicine.id == detail.idmedicine}">
            <td>${medicine.name}</td>
                </c:if>
            </c:forEach>
            
                
            <td>${detail.soluong}</td>

       </tr>

       </c:if>
      </c:forEach>

     </table>

    </div>
        <br>
        <br>
        <br>
        <br>
        <br><h6>-------------------------------------------------</h6>
         </c:if>
            </c:forEach>
       </c:if>
      </c:forEach>
   </div>
  </div>

 </div>
