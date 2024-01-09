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
    <form:errors path="name"/>
    <br>


    Surname <form:input path="surname"/>
    <form:errors path="surname"/>
    <br>


    Salary <form:input path="salary"/>
    <form:errors path="salary"/>
    <br>

   Department <form:select path="department">
   <%-- <form:option value="Informational Technology" label ="IT"/>
    <form:option value="Human Resources" label="HR"/>
    <form:option value="Sales" label="Sales"/>--%>

    <form:options items="${employee.mapDepartments}"/>

</form:select>
    <br>

    Which car do you want?
    <%--BMW <form:radiobutton path="carBrand" value="BMW"/>
    Mersedes <form:radiobutton path="carBrand" value="Mersedes"/>
    Ferrari <form:radiobutton path="carBrand" value="Ferrari"/>
--%>
    <form:radiobuttons path="carBrand" items="${employee.mapCarBrand}"/>

    <br><br>
    Foreign language(s)
   <%-- EN <form:checkbox path="languages" value="English"/>
    FR <form:checkbox path="languages" value="Franche"/>
    RU <form:checkbox path="languages" value="Russian"/>
--%>
    <form:checkboxes path="languages" items="${employee.mapLanguages}"/>

   <br><br>
    Enter your number phone
    <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>
    <br><br>
    Enter your email:
    <form:input path="email"/>
    <form:errors path="email"/>


    <input type="submit" value = "OK">

</form:form>

</body>
</html>