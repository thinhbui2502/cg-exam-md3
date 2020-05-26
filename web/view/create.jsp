<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 26/05/2020
  Time: 11:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new product</title>
</head>
<body>
<h2>
    <a href="/product">List all users</a>
</h2>
<form method="post">
    <table border="1px solid" cellpadding="5px" cellspacing="0">
        <caption><h2>Add new product</h2></caption>
        <tr>
            <th>Name: </th>
            <td><input type="text" name="name" id="name" size="45"></td>
        </tr>
        <tr>
            <th>Price: </th>
            <td><input type="text" name="price" id="price" size="45"></td>
        </tr>
        <tr>
            <th>Quantity: </th>
            <td><input type="text" name="quantity" id="quantity" size="45"></td>
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
