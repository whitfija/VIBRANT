<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%-- 
    Document   : ProductListing
    Created on : May 8, 2018, 2:45:44 AM
    Author     : CaptainStar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>List of Products</h1>
         <f:view>
        <h:form>
            <h:form>
               
            </h:form>

        </h:form>
    </f:view>
    <sql:query var="result" dataSource="jdbc/myDatasource">
        SELECT ProductID, ProductName, SupplierID, UnitPrice, UnitsInStock  FROM products
    </sql:query>
       
        <table border = "1" width = "100%">
         <tr>
            <th>ProductID</th>
             <th>ProductName</th>
             <th>Supplier_ID</th>
             <th>UnitPrice</th>
            <th>UnitsInStock</th>
            
                         
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.ProductID}"/></td> 
               <td><c:out value = "${row.ProductName}"/></td>
               <td><c:out value = "${row.Supplier_ID}"/></td>
               <td><c:out value = "${row.UnitPrice}"/></td>
               <td><c:out value = "${row.UnitsInStock}"/></td>
               
               
            </tr>
         </c:forEach>
      </table>
    </body>
</html>
