<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<head>
    <title>Employee</title>

    <style>
        table {
            width: 50%; /* Ширина таблицы */
            background: white; /* Цвет фона таблицы */
            color: white; /* Цвет текста */
            border-spacing: 1px; /* Расстояние между ячейками */
        }
        td, th {
            background: #7c6262; /* Цвет фона ячеек */
            padding: 5px; /* Поля вокруг текста */
        }
        h2 {
            color: #b01d1d; /* Цвет фона ячеек */
            padding: 5px; /* Поля вокруг текста */
        }
    </style>
</head>
<body>


<h2>Dear Employee, you are Welcome!</h2>
<br>
<br>


<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Mail</th>
        <th>Department</th>
        <th>Car</th>
        <th>Languages</th>
        <th>Phone</th>
    </tr>
    <tr>
        <td>${employee.name}</td>
        <td>${employee.surname}</td>
        <td>${employee.mail}</td>
        <td>${employee.department}</td>
        <td>${employee.car}</td>
        <td><c:forEach var="language" items="${employee.language}">
            ${language}
        </c:forEach></td>
        <td>${employee.phone}</td>
    </tr>
    <tr>


    </tr>
</table>
<%--Your name   :     ${employee.name} <br>--%>
<%--Your surname:     ${employee.surname} <br>--%>
<%--Your mail:        ${employee.mail} <br>--%>
<%--Your depart:      ${employee.department} <br>--%>
<%--Your car:         ${employee.car} <br>--%>
<%--Your languages:--%>
<%--<ul>--%>
<%--    <c:forEach var="language" items="${employee.language}">--%>

<%--        <li>${language}</li>--%>

<%--    </c:forEach>--%>



<%--</ul>--%>


</body>



</html>