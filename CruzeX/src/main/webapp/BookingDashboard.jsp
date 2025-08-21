<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Order Dashboard - Pahana Edu Bookshop</title>
    
   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
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
            <a class="link-warning nav-link px-5 mx-5" href="AdminHomePage.jsp">
                <i class="fas fa-arrow-left me-2"></i>Go to Home
            </a>
        </li>
        <li class="nav-item">
            <a class="text-white nav-link" href="BookingController">
                <i class="fas fa-shopping-bag me-2"></i>Orders
            </a>
        </li>
        <li class="nav-item">
            <a class="link-secondary nav-link" href="Search-Booking.jsp">
                <i class="fas fa-search me-2"></i>Search & Update Order
            </a>
        </li>
      
    </ul>

    <br/>

    <!-- Show success or error message -->
    <c:if test="${not empty message}">
        <div class="alert alert-info text-center">${message}</div>
    </c:if>

    <div class="container">
        <h2 class="text-center">Order Management</h2>

        <table class="table table-striped">
            <thead>
                <tr class="table-dark">
                    <th>Order ID</th>
                    <th>Customer ID</th>
                    <th>Book ID</th>
                    <th>Staff ID</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Delivery Address</th>
                    <th>Store Location</th>
                    <th>Quantity</th>
                    <th>Subtotal (LKR)</th>
                    <th>Tax</th>
                    <th>Discount</th>
                    <th>Total</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:choose>
                    <c:when test="${not empty sessionScope.bookingList}">
                        <c:forEach var="booking" items="${sessionScope.bookingList}">
                            <tr>
                                <td>${booking.bookingID}</td>
                                <td>${booking.customerID}</td>
                                <td>${booking.vehicleID}</td>
                                <td>${booking.driverID}</td>
                                <td>${booking.bookingDate}</td>
                                <td>${booking.bookingTime}</td>
                                <td>${booking.pickupLocation}</td>
                                <td>${booking.dropLocation}</td>
                                <td>${booking.distance}</td>
                                <td>${booking.fare}</td>
                                <td>${booking.tax}</td>
                                <td>${booking.discount}</td>
                                <td>${booking.totalFare}</td>
                                <td>
                                    <form action="BookingController" method="post" style="display:inline;">
                                        <input type="hidden" name="type" value="delete" />
                                        <input type="hidden" name="bookingID" value="${booking.bookingID}" />
                                        <button type="submit" class="btn btn-danger btn-sm">
                                            <i class="fas fa-trash me-1"></i>Delete
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <tr><td colspan="14" class="text-center">No orders found.</td></tr>
                    </c:otherwise>
                </c:choose>
                        <c:if test="${not empty message}">
    <div class="alert alert-success text-center">${message}</div>
</c:if>
            </tbody>
        </table>
    </div>
</div>
    <script>
    var message = "<%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>";
    if (message.trim() !== "") {
        alert(message);
    }
</script>

</body>
</html>