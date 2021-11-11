<%-- 
    Document   : chitiet
    Created on : Nov 11, 2021, 9:42:40 AM
    Author     : Neet Nguyen
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h1 class="text-center text-primary">Chi Tiet Don Thuoc</h1>
<c:if test="${dts == null}">
    <h4 class="text-center text-primary">Chua co thuoc nao duoc ghi nhan</h4>
</c:if>
<c:if test="${dts != null}"> 
    <table class="table">
        <tr>
            <th>Ma Thuoc</th>
            <th>Ten Thuoc</th>
            <th>So Luong</th>
            <th></th>
        </tr>
        <c:forEach items="${dts}" var="c">
        <tr id="medicine${c.medicineId}">
            <td>${c.medicineId}</td>
            <td>${c.medicineName}</td>
            <td>
                <div class="form-group">
                    <input type="number" onblur="updateDt(this, ${c.medicineId})" value="${c.quantity}" />
                </div>
            </td>
            <td>
                <input type="button" 
                       onclick="deleteDt(${c.medicineId})" 
                       value="Xóa" 
                       class="btn btn-primary" />
            </td>
        </tr>
        </c:forEach>
    </table>
    <input type="button" value="Xác nhận" class="btn btn-primary"/>
    <br>
    <br>
</c:if>
    