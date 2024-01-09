<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

<body>

<h2>Dear Employee, WELCOME to this page</h2>
<br>
<br>
<br>
<br>
<%--Your name: ${param.employeeName}--%>
Your name: ${employee.name}
<br>
Your surname: ${employee.surname}
<br>
Your salary: ${employee.salary}
<br>
Your department: ${employee.department}
<br>
Your car: ${employee.carBrand}
<br>
Your language(s):
<ul>

    <c:forEach var="lang" items="${employee.languages}">
        <li>
                ${lang}
        </li>
    </c:forEach>
</ul>
<br>
Your phone number: ${employee.phoneNumber}
<br><br>
Email: ${employee.email}



</body>
</html>