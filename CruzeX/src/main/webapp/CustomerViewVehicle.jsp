<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Available Books - Pahana Edu Bookshop</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
            font-family: Arial, sans-serif;
        }
        
        .navbar {
            background-color: #fff !important;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            padding: 0.75rem 1.5rem;
        }
        
        .navbar-brand-section {
            display: flex;
            align-items: center;
        }
        
        .book-icon {
            font-size: 3rem;
            color: #2c5aa0;
            margin-right: 15px;
        }
        
        .brand-text {
            font-size: 1.8rem;
            color: #2c5aa0 !important;
            margin: 0;
            font-weight: bold;
        }
        
        .nav-link {
            color: #333 !important;
            font-weight: 500;
            transition: all 0.3s ease;
            border-radius: 8px;
            margin: 0 5px;
        }
        
        .nav-link:hover,
        .nav-link.active {
            color: #2c5aa0 !important;
            background-color: rgba(44, 90, 160, 0.1);
        }
        
        .page-header {
            text-align: center;
            margin: 2rem 0;
            padding: 2rem;
            background: white;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }
        
        .page-title {
            color: #2c5aa0;
            font-weight: bold;
            font-size: 2.2rem;
            margin-bottom: 0.5rem;
        }
        
        .page-subtitle {
            color: #6c757d;
            font-size: 1.1rem;
        }
        
        .book-card {
            background: white;
            border: none;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
            height: 100%;
        }
        
        .book-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 40px rgba(0,0,0,0.15);
        }
        
        .book-image {
            height: 200px;
            object-fit: cover;
            border-radius: 15px 15px 0 0;
        }
        
        .card-body {
            padding: 1.5rem;
        }
        
        .book-title {
            color: #2c5aa0;
            font-weight: bold;
            font-size: 1.2rem;
            margin-bottom: 1rem;
        }
        
        .book-detail {
            margin-bottom: 0.5rem;
            color: #6c757d;
        }
        
        .book-detail strong {
            color: #333;
        }
        
        .price-text {
            color: #28a745;
            font-weight: bold;
            font-size: 1.1rem;
        }
        
        .btn-order {
            background: linear-gradient(135deg, #2c5aa0, #1e4080);
            border: none;
            color: white;
            font-weight: 600;
            padding: 0.7rem;
            border-radius: 10px;
            transition: all 0.3s ease;
            width: 100%;
        }
        
        .btn-order:hover {
            background: linear-gradient(135deg, #1e4080, #2c5aa0);
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(44, 90, 160, 0.3);
            color: white;
        }
        
        .no-books {
            text-align: center;
            padding: 4rem 2rem;
            background: white;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }
        
        .no-books i {
            font-size: 4rem;
            color: #dee2e6;
            margin-bottom: 1rem;
        }
        
        .no-books h5 {
            color: #6c757d;
            margin-bottom: 0.5rem;
        }
        
        .no-books p {
            color: #adb5bd;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container-fluid">
            <div class="navbar-brand-section">
                <i class="fas fa-book-open book-icon"></i>
                <p class="brand-text">Available Books for Order</p>
            </div>
            <button style="margin:0 30px;" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="margin:0 50px;">
                <div class="navbar-nav">
                    <a class="nav-link mx-0 mx-md-3 fs-6" href="CruzeXHome.jsp">
                        <i class="fas fa-home me-2"></i>Home
                    </a>
                    <a class="nav-link active mx-0 mx-md-3 fs-6" href="VehicleController?type=customer">
                        <i class="fas fa-book me-2"></i>View Books
                    </a>
                    <a class="nav-link mx-0 mx-md-3 fs-6" href="QueryForm.jsp">
                        <i class="fas fa-question-circle me-2"></i>Support
                    </a>
                </div>
            </div>
        </div>
    </nav>

    <!-- Check if the user is logged in -->
    <%
        HttpSession userSession = request.getSession();
        Integer customerID = (Integer) userSession.getAttribute("customerId");
        if (customerID == null) {
            response.sendRedirect("Login-Customer.jsp"); // Redirect if user is not logged in
            return;
        }
    %>

    <div class="container mt-4">
        <!-- Page Header -->
        <div class="page-header">
            <h2 class="page-title">
                <i class="fas fa-books me-3"></i>Book Catalog
            </h2>
            <p class="page-subtitle">Browse our collection of educational books and place your order</p>
        </div>

        <!-- Books Grid -->
        <div class="row">
            <c:choose>
                <c:when test="${not empty sessionScope.bookList}">
                    <c:forEach var="vehicle" items="${sessionScope.bookList}">
                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card book-card">
                                <img src="img/car/${book.image}" class="card-img-top book-image" alt="${book.bookName}">
                                <div class="card-body">
                                    <h5 class="book-title">${book.bookName}</h5>
                                    <p class="book-detail">
                                        <strong><i class="fas fa-layer-group me-2"></i>Category:</strong> ${book.category}
                                    </p>
                                    <p class="book-detail">
                                        <strong><i class="fas fa-tag me-2"></i>Price:</strong> 
                                        <span class="price-text">LKR ${book.monthFee}</span>
                                    </p>
                                    <p class="book-detail">
                                        <strong><i class="fas fa-user-tie me-2"></i>Staff ID:</strong> ${book.bookID}
                                    </p>
                                    <!-- Order button redirects to Add-Booking.jsp with pre-filled values -->
                                    <a href="Add-Booking.jsp?vehicleID=${book.vehicleID}&driverID=${book.bookID}&customerID=<%= customerID %>&monthFee=${book.monthFee}" 
                                       class="btn btn-order">
                                        <i class="fas fa-shopping-cart me-2"></i>Order Now
                                    </a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <div class="col-12">
                        <div class="no-books">
                            <i class="fas fa-book-open"></i>
                            <h5>No Books Available</h5>
                            <p>Currently there are no books in our catalog. Please check back later.</p>
                        </div>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>