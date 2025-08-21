<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, CruzeX.webapp.Model.Query" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin - View Queries - Pahana Edu Bookshop</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
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
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-custom">
  <div class="container-fluid">
      <div class="brand-section">
          <i class="fas fa-book-open brand-icon"></i>
          <span class="brand-text">Pahana Edu</span>
      </div>
    <div class="collapse navbar-collapse">
      <div class="navbar-nav">
        <a class="nav-link" href="AdminHomePage.jsp">
            <i class="fas fa-tachometer-alt me-2"></i>Dashboard
        </a>
        <a class="nav-link" href="VehicleController">
            <i class="fas fa-book me-2"></i>Manage Books
        </a>
        <a class="nav-link" href="DriverController">
            <i class="fas fa-users me-2"></i>Manage Staff
        </a>
        <a class="nav-link" href="CustomerController">
            <i class="fas fa-user-friends me-2"></i>Manage Customers
        </a>
        <a class="nav-link active" href="QueryController?type=getAllQueries">
            <i class="fas fa-question-circle me-2"></i>View Queries
        </a>
      </div>
    </div>
  </div>
</nav>

<div class="container mt-5">
    <div class="row">
        <div class="col-12">
            <div class="d-flex justify-content-between align-items-center mb-4">
                <h2><i class="fas fa-envelope me-3"></i>Customer Support Queries</h2>
                <span class="badge bg-primary fs-6">
                    <c:choose>
                        <c:when test="${not empty sessionScope.queryList}">
                            ${sessionScope.queryList.size()} Total Queries
                        </c:when>
                        <c:otherwise>
                            0 Queries
                        </c:otherwise>
                    </c:choose>
                </span>
            </div>
        </div>
    </div>
    
    <c:choose>
        <c:when test="${not empty sessionScope.queryList}">
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead class="table-dark">
                        <tr>
                            <th>#</th>
                            <th><i class="fas fa-user me-2"></i>Customer Name</th>
                            <th><i class="fas fa-envelope me-2"></i>Email</th>
                            <th><i class="fas fa-message me-2"></i>Query Message</th>
                            <th><i class="fas fa-cogs me-2"></i>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:set var="count" value="0"/>
                        <c:forEach var="q" items="${sessionScope.queryList}" varStatus="loop">
                            <tr>
                                <td><strong>${loop.index + 1}</strong></td>
                                <td>${q.name}</td>
                                <td>
                                    <a href="mailto:${q.email}" class="text-decoration-none">
                                        ${q.email}
                                    </a>
                                </td>
                                <td>
                                    <div style="max-width: 300px; overflow: hidden; text-overflow: ellipsis;">
                                        ${q.message}
                                    </div>
                                </td>
                                <td>
                                    <form action="QueryController" method="post" style="display: inline;">
                                        <input type="hidden" name="type" value="delete">
                                        <input type="hidden" name="email" value="${q.email}">
                                        <button class="btn btn-danger btn-sm" 
                                                onclick="return confirm('Are you sure you want to delete this query from ${q.name}?')">
                                            <i class="fas fa-trash me-1"></i>Delete
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:when>
        <c:otherwise>
            <div class="text-center py-5">
                <i class="fas fa-inbox fa-4x text-muted mb-3"></i>
                <h4 class="text-muted">No Customer Queries Yet</h4>
                <p class="text-muted">Customer support queries will appear here when submitted.</p>
            </div>
        </c:otherwise>
    </c:choose>
</div>

<script>
    // Auto-refresh queries every 30 seconds
    setTimeout(function() {
        location.reload();
    }, 30000);
</script>
</body>
</html>