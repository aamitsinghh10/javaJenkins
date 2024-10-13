<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Service Form</title>
</head>
<body>
    <h1>Service Submission</h1>

    <form action="service.jsp" method="post">
        <label for="serviceName">Service Name:</label>
        <input type="text" id="serviceName" name="serviceName" required>
        <br><br>

        <label for="serviceDescription">Description:</label>
        <textarea id="serviceDescription" name="serviceDescription" required></textarea>
        <br><br>

        <button type="submit">Submit</button>
    </form>

    <%
        String serviceName = request.getParameter("serviceName");
        String serviceDescription = request.getParameter("serviceDescription");

        if (serviceName != null && serviceDescription != null) {
            out.println("<h2>Submitted Service:</h2>");
            out.println("<p><strong>Name:</strong> " + serviceName + "</p>");
            out.println("<p><strong>Description:</strong> " + serviceDescription + "</p>");
        }
    %>
</body>
</html>
