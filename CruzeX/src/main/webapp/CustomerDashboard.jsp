<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customer Management - Pahana Edu Bookshop</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .nav-link {
            color: #ffffff;
        }
        .table th, .table td {
            vertical-align: middle;
            text-align: center;
        }
        .btn-action {
            padding: 0.375rem 0.75rem;
        }
        .container {
            margin-top: 30px;
        }
        .table-responsive {
            overflow-x: auto;
        }
        
        .navbar-custom {
            background: linear-gradient(135deg, #2c5aa0, #1e4080) !important;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
        }
        
        .brand-section {
            display: flex;
            align-items: center;
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
        
        .nav-link {
            color: #ffffff !important;
            font-weight: 500;
            transition: all 0.3s ease;
            border-radius: 8px;
            margin: 0 5px;
        }
        
        .nav-link:hover,
        .nav-link.active {
            color: #ffd700 !important;
            background-color: rgba(255, 255, 255, 0.1);
        }
        
        .text-warning {
            color: #ffc107 !important;
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-custom">
        <div class="brand-section">
            <i class="fas fa-book-open brand-icon"></i>
            <span class="brand-text">Pahana Edu</span>
        </div>
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="CustomerController">
                            <i class="fas fa-users me-2"></i>Customers
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="SearchCustomer.jsp">
                            <i class="fas fa-search me-2"></i>Search & Update
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Register.jsp">
                            <i class="fas fa-user-plus me-2"></i>Add Customer
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-warning" href="AdminHomePage.jsp">
                            <i class="fas fa-arrow-left me-2"></i>Go Back
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Message Alert -->
    <div class="container">
        <c:if test="${not empty message}">
            <div class="alert alert-info text-center">${message}</div>
        </c:if>

        <!-- Customer List -->
        <h3 class="text-center mt-4">
            <i class="fas fa-user-friends me-3"></i>Customer Management
        </h3>

        <div class="table-responsive mt-3">
            <table class="table table-striped table-bordered">
                <thead class="table-dark">
                    <tr>
                        <th>Customer ID</th>
                        <th>Full Name</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Username</th>
                        <th>Address</th>
                        <th>Gender</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="customer" items="${customerList}">
                        <tr>
                            <td>${customer.customerID}</td>
                            <td>${customer.customerFullName}</td>
                            <td>${customer.customerPhoneNumber}</td>
                            <td>${customer.customerEmail}</td>
                            <td>${customer.customerUsername}</td>
                            <td>${customer.customerAddress}</td>
                            <td>${customer.gender}</td>
                            <td>
                                <!-- Edit Button -->
                                <a href="SearchCustomer.jsp?customerID=${customer.customerID}" class="btn btn-warning btn-sm me-1">
                                    <i class="fas fa-edit me-1"></i>Edit
                                </a>

                                <!-- Delete Button -->
                                <form action="CustomerController" method="post" style="display:inline;">
                                    <input type="hidden" name="customerID" value="${customer.customerID}">
                                    <input type="hidden" name="type" value="delete">
                                    <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete customer ${customer.customerFullName}?')">
                                        <i class="fas fa-trash me-1"></i>Delete
                                    </button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <c:if test="${empty customerList}">
                <div class="text-center py-4">
                    <i class="fas fa-users fa-3x text-muted mb-3"></i>
                    <p class="text-muted h5">No customers found.</p>
                    <a href="Register.jsp" class="btn btn-primary">
                        <i class="fas fa-user-plus me-2"></i>Add First Customer
                    </a>
                </div>
            </c:if>
        </div>
    </div>
</body>
</html>