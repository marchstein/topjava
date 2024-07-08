<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="ru">
<head>
    <title>Meals</title>
    <style>
        table, th, td {
            border: 2px solid black;
            height: 7%;
            padding: 10px;
        }

        table {
            border-collapse: collapse;
        }
        .excess {
            color: red;
        }
        .normal {
            color: green;
        }
    </style>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<h2>Meals and milfs</h2>
<a href="addmeal.jsp">Add Meal</a>
<p></p>
<table>
    <thead>
        <tr>
            <th> Date</th>
            <th> Description</th>
            <th> Calories</th>
            <th></th>
            <th></th>
        </tr>
    </thead>
    <tbody>
    <c:forEach var="meals" items="${meals}">
        <tr class="${meal.excess ? 'excess' : 'normal'}">
            <td>${meals.dateTime}</td>
            <td>${meals.description}</td>
            <td>${meals.calories}</td>
            <td><a href="update.jsp">Update</a></td>
            <td><a href="delete.jsp">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
