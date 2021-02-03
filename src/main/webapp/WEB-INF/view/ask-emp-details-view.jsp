<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<body>

<br>
<h2>Insert in form your name:</h2>

<%--@elvariable id="employee" type="by.anton.spring.mvc.Employee"--%>
<form:form action="showDetails" modelAttribute="employee" >
    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br><br>
    Surname<form:input path="surname"/>
    <br><br>
    Mail<form:input path="mail"/>
        <form:errors path="mail"/>
    <br><br>
    Department <form:select path="department">
        <form:options items="${employee.departments}"/>

</form:select>
<br>    Car? <form:radiobuttons path="car" items="${employee.cars}"/>

<br>    Languages? <form:checkboxes path="language" items="${employee.languages}"/>

<br>



    <input type="submit" value="Add">

</form:form>



</body>






</html>