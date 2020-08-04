<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add Customer</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container container-fluid">
    <br>
    <div class="card text-white text-center bg-info">
        <h4>Customer Relationship Manager</h4>
    </div>
    <br>
    <form:form action="saveCustomer" modelAttribute="customer" method="post">

        <form:hidden path="id"/> <!--This line is mandatory for updation-->

        <div class="table-responsive-lg">
            <table class="table table-borderless">
                <tbody>
                <tr class="form-group">
                    <td></td>
                    <td>First Name</td>
                    <td><form:input path="firstName" class="form-control"/></td>
                    <td></td>
                </tr>
                <tr class="form-group">
                    <td></td>
                    <td>Last Name</td>
                    <td><form:input path="lastName" class="form-control"/></td>
                    <td></td>
                </tr>
                <tr class="form-group">
                    <td></td>
                    <td>Email</td>
                    <td><form:input path="email" class="form-control"/></td>
                    <td></td>
                </tr>
                </tbody>
            </table>
        </div>
        <br>
        <div class="text-center">
            <input type="submit" value="Save customer" class="btn btn-info"/>
        </div>
    </form:form>
    <div style="margin-left:20px">
        <p>
            <a href="${pageContext.request.contextPath}/api/list">Back to Home page</a>
        </p>
    </div>
</div>
</body>
</html>
