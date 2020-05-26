<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 26/05/2020
  Time: 10:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <h1>Product Management</h1>
    <h2>
        <a href="/product?action=insert">Add new</a>
    </h2>

    <table border="1px solid" cellpadding="5px" cellspacing="0">
    <tr>
        <th>#</th>
        <th>Product Name</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Color</th>
        <th>Category</th>
        <th>Action</th>
    </tr>
    <c:forEach items="${products}" var="product">
        <tr>
            <td>${product.getProductId()}</td>
            <td>${product.getProductName()}</td>
            <td>${product.getPrice()}</td>
            <td>${product.getQuantity()}</td>
            <td>${product.getColor()}</td>
            <td>${product.getCategoryId()}</td>
            <td>
                <a href="/product?action=update&id=${product.getProductId()}">Edit</a>
                <a href="/product?action=delete&id=${product.getProductId()}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</div>
</body>
</html>
