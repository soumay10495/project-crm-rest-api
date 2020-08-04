<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>CRM</title>
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
    <div class="table-responsive-lg">
        <table class="table table-bordered table-striped table-hover">
            <thead class="thead-dark">
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="temp" items="${customers}">
                <c:url var="updateLink" value="/api/updateCustomerForm">
                    <c:param name="id" value="${temp.id}"/>
                </c:url>
                <c:url var="deleteLink" value="/api/removeCustomer">
                    <c:param name="id" value="${temp.id}"/>
                </c:url>
                <tr>
                    <td>${temp.firstName}</td>
                    <td>${temp.lastName}</td>
                    <td>${temp.email}</td>
                    <td>
                        <a href="${updateLink}">Update</a>
                        |
                        <a href="${deleteLink}"
                           onclick="if(!confirm('Remove customer?')) return false">
                            Remove
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <br>
    <div class="text-center">
        <input type="button" value="Add Customer"
               onclick="window.location.href='addCustomerForm';"
               class="btn btn-info"/>
    </div>

</div>
</body>
</html>
