<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Staff List - Pahana Edu Bookshop</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            padding-top: 20px;
        }
        .nav-link {
            color: #ffffff;
        }
        .table th, .table td {
            vertical-align: middle;
        }
        .btn-remove {
            padding: 0.375rem 0.75rem;
        }
        
        .navbar-custom {
            background: linear-gradient(135deg, #2c5aa0, #1e4080) !important;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
        }
        
        .brand-section {
            display: flex;
            align-items: center;
            margin-right: 2rem;
        }
        
        .brand-icon {
            font-size: 2rem;
            color: white;
            margin: 0 15px 0 35px;
        }
        
        .brand-text {
            font-size: 1.5rem;
            font-weight: bold;
            color: white;
            margin: 0;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <ul class="nav justify-content-center navbar-custom py-2">
        <div class="brand-section">
            <i class="fas fa-book-open brand-icon"></i>
            <span class="brand-text">Pahana Edu</span>
        </div>
        
        <li class="nav-item">
            <a class="link-warning nav-link px-5 mx-5" aria-current="page" href="AdminHomePage.jsp">
                <i class="fas fa-arrow-left me-2"></i>Go to Home
            </a>
        </li>
        <li class="nav-item">
            <a class="text-white nav-link" aria-current="page" href="DriverController">
                <i class="fas fa-users me-2"></i>Staff List
            </a>
        </li>
        <li class="nav-item">
            <a class="link-secondary nav-link" href="Search-Driver-Details.jsp">
                <i class="fas fa-search me-2"></i>Search & Update Staff
            </a>
        </li>
        <li class="nav-item">
            <a class="link-secondary nav-link" href="Add-Driver-Details.jsp">
                <i class="fas fa-plus me-2"></i>Add Staff
            </a>
        </li>
    </ul>
    <br/>
     <c:if test="${not empty message}">
        <div class="alert alert-info text-center">${message}</div>
    </c:if>
    <br/>
    <div class="container">
        <h2 class="text-center mb-4">Staff Management</h2>
        <table class="table table-striped">
            <thead>
                <tr class="table-dark">
                    <th>Staff ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Employee Number</th>
                    <th>Email</th>
                    <th>Remove from List</th>
                </tr>
            </thead>
            <tbody>
                <c:choose>
                    <c:when test="${not empty sessionScope.driverList}">
                <c:forEach var="driver" items="${sessionScope.driverList}">
                    <tr>
                        <td>${driver.driverID}</td>
                        <td>${driver.firstName}</td>
                        <td>${driver.lastName}</td>
                        <td>${driver.licenseNumber}</td>
                        <td>${driver.email}</td>
                        <td>
                            <form method="post" action="DriverController">
                                <input type="hidden" name="driverId" value="${driver.driverID}"/>
                                <input type="hidden" name="type" value="delete"/>
                                <button type="submit" class="btn btn-danger">
                                    <i class="fas fa-trash me-1"></i>Remove
                                </button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
                     </c:when>
                    <c:otherwise>
                        <tr><td colspan="6" class="text-center">No staff members found.</td></tr>
                    </c:otherwise>
                </c:choose>
            </tbody>
        </table>
    </div>
</div>
<br/>
<!-- Improved JavaScript message handling -->
<script>
    var message = "<%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>";
    if (message.trim() !== "") {
        alert(message);
    }
</script>
</body>
</html>