<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Meals</title>
    <style>
        .normal {
            color: green;
        }

        .exceeded {
            color: red;
        }
    </style>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<table border="1" cellpadding="8" cellspacing="0">
    <tr>
        <th>dateTime</th>
        <th>description</th>
        <th>calories</th>
        <th>excess</th>
    </tr>

    <c:forEach items="${mealList}" var="meal">
        <jsp:useBean id="meal" scope="page" type="ru.javawebinar.topjava.model.MealTo"/>
        <tr class="${meal.excess ? 'exceeded' : 'normal'}">
            <td>
                <fmt:parseDate value="${meal.dateTime}" pattern="y-M-dd'T'H:m" var="parsedDate"/>
                <fmt:formatDate value="${parsedDate}" pattern="yyyy.MM.dd HH:mm"/>
            </td>
            <td>${meal.description}</td>
            <td>${meal.calories}</td>
            <td>${meal.excess}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
