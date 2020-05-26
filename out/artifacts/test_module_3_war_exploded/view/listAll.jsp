<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 26/05/2020
  Time: 10:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>List Product</title>
</head>
<body>
<table>
    <tr>
        <th>#</th>
        <th>Product Name</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Color</th>
        <th>Category</th>
        <th>Action</th>
    </tr>
    <c:forEach items="products" var="product">
        <tr>
            <td>${product.getProductId()}</td>
            <td>${product.getProductName()}</td>
            <td>${product.getPrice()}</td>
            <td>${product.getQuantity()}</td>
            <td>${product.getColor()}</td>
            <td>${product.getCategoryId()}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
