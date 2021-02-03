<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add your information</title>
</head>
<body>
<%--@elvariable id="employee" type="by.anton.spring.mvc.Employee.class"--%>
<form:form action="showDetails" modelAttribute="employee">


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
        <td><form:input path="name"/><form:errors path="name"/> </td>
        <td><form:input path="surname"/><form:errors path="surname"/></td>
        <td><form:input path="mail"/><form:errors path="mail"/></td>
        <td><form:select path="department">
            <form:options items="${employee.departments}"/>

        </form:select></td>
        <td><form:radiobuttons path="car" items="${employee.cars}"/></td>
        <td><form:checkboxes path="language" items="${employee.languages}"/></td>
        <td><form:input path="phone"/><form:errors path="phone"/> </td>
    </tr>
    <tr>


    </tr>
</table>

    <input type="submit" value="Add">
</form:form>


</body>





</html>