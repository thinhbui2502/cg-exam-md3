<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 26/05/2020
  Time: 11:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update product</title>
</head>
<body>
<form method="post">
    <c:if test="${currentProduct != null}">
        <input type="hidden" name="id" value="${currentProduct.productId}">
    </c:if>

    <table>
        <tr>
            <th>Name: </th>
            <td><input type="text" value="${currentProduct.productName}" name="name" id="name" size="45"></td>
        </tr>
        <tr>
            <th>Price: </th>
            <td><input type="text" value="${currentProduct.productPrice}" name="price" id="price" size="45"></td>
        </tr>
        <tr>
            <th>Quantity: </th>
            <td><input type="text" name="quantity" id="quantity" value="${currentProduct.productQuantity}" size="45"></td>
        </tr>

        <tr>
            <th>Color: </th>
            <td><input type="text" name="color" id="color" size="45"></td>
        </tr>

        <tr>
            <th>Category: </th>
            <td><input type="number" name="category" id="category" size="45"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" id="submit" value="Add new">
                <input type="reset" id="reset" value="Cancel">
            </td>
        </tr>
    </table>

</form>
</body>
</html>
