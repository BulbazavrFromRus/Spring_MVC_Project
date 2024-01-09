form:form=""
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">

<body>

<h2>Dear Employee, enter your details</h2>

<br>
<br>

<%--@elvariable id="employee" type=""--%>
<form:form action="showDetails" modelAttribute="employee">
    Name <form:input path="name"/>
    <br>
    Surname <form:input path="surname"/>
    <br>
    Salary <form:input path="salary"/>
    <br>
   Department <form:select path="department">
   <%-- <form:option value="Informational Technology" label ="IT"/>
    <form:option value="Human Resources" label="HR"/>
    <form:option value="Sales" label="Sales"/>--%>

    <form:options items="${employee.mapDepartments}"/>

</form:select>
    <br>
    
    
    <input type="submit" value = "OK">

</form:form>

</body>
</html>