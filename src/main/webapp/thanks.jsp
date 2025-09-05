<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Survey Result</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/main.css" type="text/css"/>
</head>
<body>
    <div class="result-box">
        <h1>Thanks for filling out our survey!</h1>
        <p>Here is the information that you entered:</p>

        <label>Email:</label> <span><c:out value="${requestScope.user.email}"/></span><br>
        <label>First Name:</label> <span><c:out value="${requestScope.user.firstName}"/></span><br>
        <label>Last Name:</label> <span><c:out value="${requestScope.user.lastName}"/></span><br>
        <label>Date of Birth:</label> <span><c:out value="${requestScope.user.dob}"/></span><br>
        <label>Heard About Us:</label> <span><c:out value="${requestScope.user.hear}"/></span><br>
        <label>Preferred Contact:</label> <span><c:out value="${requestScope.user.contact}"/></span><br>

        <h3>Extra Information</h3>
        <p>Current Year: <c:out value="${requestScope.currentYear}"/></p>
        <p>First User Email: <c:out value="${sessionScope.users[0].email}"/></p>
        <p>Second User Email: <c:out value="${sessionScope.users[1].email}"/></p>
        <p>Customer Service Email: <c:out value="${initParam.custServEmail}"/></p>

        <p>To enter another response, click below:</p>
        <form action="index.jsp" method="get">
            <input type="submit" value="Return" class="btn">
        </form>
    </div>

    <jsp:include page="footer.jsp"/>
</body>
</html>
