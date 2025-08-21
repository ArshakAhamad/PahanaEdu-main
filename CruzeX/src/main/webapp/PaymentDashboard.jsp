<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment Dashboard - Pahana Edu Bookshop</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        :root {
            --primary-color: #2c5aa0;
            --secondary-color: #f8f9fa;
            --accent-color: #28a745;
            --text-color: #333;
            --border-color: #dee2e6;
            --error-color: #dc3545;
            --success-color: #28a745;
            --warning-color: #ffc107;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
            color: var(--text-color);
            padding-top: 20px;
        }

        .container-fluid {
            padding-top: 20px;
        }

        .navbar-custom {
            background: linear-gradient(135deg, var(--primary-color), #1e4080) !important;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            border-radius: 10px;
            margin: 0 20px;
        }

        .nav-link {
            color: #ffffff !important;
            font-weight: 500;
            transition: all 0.3s ease;
            border-radius: 8px;
            margin: 0 5px;
        }

        .nav-link:hover {
            color: #ffd700 !important;
            background-color: rgba(255, 255, 255, 0.1);
            transform: translateY(-2px);
        }

        .nav-link.active {
            background-color: rgba(255, 255, 255, 0.2);
            color: #ffffff !important;
        }

        .dashboard-header {
            text-align: center;
            margin-bottom: 2rem;
            padding: 2rem;
            background: white;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        .dashboard-header h3 {
            color: var(--primary-color);
            font-weight: bold;
            font-size: 2.2rem;
            margin-bottom: 0.5rem;
        }

        .dashboard-header p {
            color: #6c757d;
            margin: 0;
            font-size: 1.1rem;
        }

        .stats-cards {
            margin-bottom: 2rem;
        }

        .stat-card {
            background: white;
            border-radius: 15px;
            padding: 1.5rem;
            text-align: center;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
            border: none;
            height: 100%;
        }

        .stat-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 40px rgba(0,0,0,0.15);
        }

        .stat-icon {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 1rem;
            color: white;
            font-size: 1.5rem;
        }

        .stat-icon.payments {
            background: linear-gradient(135deg, var(--primary-color), #1e4080);
        }

        .stat-icon.revenue {
            background: linear-gradient(135deg, var(--success-color), #20c997);
        }

        .stat-icon.pending {
            background: linear-gradient(135deg, var(--warning-color), #fd7e14);
        }

        .stat-icon.customers {
            background: linear-gradient(135deg, #6f42c1, #5a189a);
        }

        .stat-number {
            font-size: 2rem;
            font-weight: bold;
            color: var(--primary-color);
            margin-bottom: 0.5rem;
        }

        .stat-label {
            color: #6c757d;
            font-size: 0.9rem;
            font-weight: 500;
        }

        .table-container {
            background: white;
            border-radius: 15px;
            padding: 1.5rem;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            overflow: hidden;
        }

        .table-header {
            display: flex;
            justify-content: between;
            align-items: center;
            margin-bottom: 1.5rem;
            padding-bottom: 1rem;
            border-bottom: 2px solid var(--border-color);
        }

        .table-title {
            color: var(--primary-color);
            font-weight: bold;
            font-size: 1.3rem;
            margin: 0;
        }

        .table {
            margin-bottom: 0;
        }

        .table th {
            background: linear-gradient(135deg, var(--primary-color), #1e4080);
            color: white;
            font-weight: 600;
            border: none;
            padding: 1rem 0.75rem;
            vertical-align: middle;
            text-align: center;
        }

        .table th:first-child {
            border-radius: 10px 0 0 10px;
        }

        .table th:last-child {
            border-radius: 0 10px 10px 0;
        }

        .table td {
            vertical-align: middle;
            padding: 1rem 0.75rem;
            text-align: center;
            border-bottom: 1px solid #f1f3f4;
        }

        .table tbody tr {
            transition: all 0.3s ease;
        }

        .table tbody tr:hover {
            background-color: rgba(44, 90, 160, 0.05);
            transform: scale(1.01);
        }

        .btn-remove {
            background: linear-gradient(135deg, var(--error-color), #c82333);
            border: none;
            color: white;
            padding: 0.5rem 1rem;
            border-radius: 8px;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .btn-remove:hover {
            background: linear-gradient(135deg, #c82333, var(--error-color));
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(220, 53, 69, 0.3);
            color: white;
        }

        .card-number-masked {
            font-family: 'Courier New', monospace;
            font-weight: bold;
            color: var(--primary-color);
        }

        .payment-status {
            padding: 0.25rem 0.75rem;
            border-radius: 15px;
            font-size: 0.85rem;
            font-weight: 500;
        }

        .status-completed {
            background: rgba(40, 167, 69, 0.1);
            color: var(--success-color);
        }

        .status-pending {
            background: rgba(255, 193, 7, 0.1);
            color: #b8860b;
        }

        .no-data {
            text-align: center;
            padding: 3rem;
            color: #6c757d;
        }

        .no-data i {
            font-size: 3rem;
            margin-bottom: 1rem;
            color: var(--border-color);
        }

        .alert-custom {
            border: none;
            border-radius: 10px;
            padding: 1rem;
            margin-bottom: 1.5rem;
            font-weight: 500;
        }

        .alert-success {
            background: rgba(40, 167, 69, 0.1);
            color: var(--success-color);
            border-left: 4px solid var(--success-color);
        }

        .alert-danger {
            background: rgba(220, 53, 69, 0.1);
            color: var(--error-color);
            border-left: 4px solid var(--error-color);
        }

        @media (max-width: 768px) {
            .navbar-custom {
                margin: 0 10px;
            }
            
            .dashboard-header h3 {
                font-size: 1.8rem;
            }
            
            .stat-number {
                font-size: 1.5rem;
            }
            
            .table-responsive {
                border-radius: 10px;
            }
            
            .table th, .table td {
                padding: 0.5rem;
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <nav class="navbar navbar-expand-lg navbar-custom py-3">
        <div class="container">
            <ul class="nav justify-content-center w-100">
                <li class="nav-item">
                    <a class="nav-link" href="AdminHomePage.jsp">
                        <i class="fas fa-arrow-left me-2"></i>Go to Home
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="PaymentDashboard.jsp">
                        <i class="fas fa-home me-2"></i>Payment Home
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Search-Payment.jsp">
                        <i class="fas fa-search me-2"></i>Search & Update
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Add-Payment.jsp">
                        <i class="fas fa-plus-circle me-2"></i>Add Payment
                    </a>
                </li>
            </ul>
        </div>
    </nav>
    
    <div class="container">
        <!-- Dashboard Header -->
        <div class="dashboard-header">
            <h3><i class="fas fa-credit-card me-3"></i>Payment Dashboard</h3>
            <p>Manage customer payments and transaction records for Pahana Edu Bookshop</p>
        </div>

        <!-- Statistics Cards -->
        <div class="stats-cards">
            <div class="row g-4">
                <div class="col-lg-3 col-md-6">
                    <div class="stat-card">
                        <div class="stat-icon payments">
                            <i class="fas fa-receipt"></i>
                        </div>
                        <div class="stat-number">47</div>
                        <div class="stat-label">Total Payments</div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="stat-card">
                        <div class="stat-icon revenue">
                            <i class="fas fa-chart-line"></i>
                        </div>
                        <div class="stat-number">LKR 125,480</div>
                        <div class="stat-label">Total Revenue</div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="stat-card">
                        <div class="stat-icon pending">
                            <i class="fas fa-clock"></i>
                        </div>
                        <div class="stat-number">3</div>
                        <div class="stat-label">Pending Payments</div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="stat-card">
                        <div class="stat-icon customers">
                            <i class="fas fa-users"></i>
                        </div>
                        <div class="stat-number">28</div>
                        <div class="stat-label">Unique Customers</div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Payment Records Table -->
        <div class="table-container">
            <div class="table-header">
                <h4 class="table-title">
                    <i class="fas fa-table me-2"></i>Payment Records
                </h4>
            </div>
            
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th><i class="fas fa-hashtag me-2"></i>Payment ID</th>
                            <th><i class="fas fa-user me-2"></i>Cardholder Name</th>
                            <th><i class="fas fa-credit-card me-2"></i>Card Number</th>
                            <th><i class="fas fa-calendar me-2"></i>Expiry Date</th>
                            <th><i class="fas fa-calendar-check me-2"></i>Payment Date</th>
                            <th><i class="fas fa-user-tag me-2"></i>Customer ID</th>
                            <th><i class="fas fa-cogs me-2"></i>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:choose>
                            <c:when test="${not empty sessionScope.paymentList}">
                                <c:forEach var="payment" items="${sessionScope.paymentList}">
                            <tr>
                                <td><strong>${payment.paymentId}</strong></td>
                                <td>${payment.cardholderName}</td>
                                <td class="card-number-masked">
                                    **** **** **** ${payment.cardNumber.substring(payment.cardNumber.length() - 4)}
                                </td>
                                <td>${payment.expiryDate}</td>
                                <td>${payment.paymentDate}</td>
                                <td>
                                    <span class="badge bg-primary">${payment.customerId}</span>
                                </td>
                                <td>
                                    <form method="post" action="PaymentController" style="display: inline;">
                                        <input type="hidden" name="paymentId" value="${payment.paymentId}"/>
                                        <input type="hidden" name="type" value="delete"/>
                                        <button type="submit" class="btn btn-remove" 
                                                onclick="return confirm('Are you sure you want to remove this payment record?')">
                                            <i class="fas fa-trash me-1"></i>Remove
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <tr>
                                    <td colspan="7" class="no-data">
                                        <i class="fas fa-inbox"></i>
                                        <h5>No Payment Records Found</h5>
                                        <p class="text-muted">No payment transactions have been recorded yet.</p>
                                        <a href="Add-payment.jsp" class="btn btn-primary">
                                            <i class="fas fa-plus me-2"></i>Add First Payment
                                        </a>
                                    </td>
                                </tr>
                            </c:otherwise>
                        </c:choose>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- Success/Error Message Display -->
<script>
    var message = "<%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>";
    if (message && message.trim() !== "" && message.trim() !== "null") {
        // Create a custom alert
        setTimeout(function() {
            const alertDiv = document.createElement('div');
            alertDiv.className = 'alert alert-success alert-dismissible fade show position-fixed';
            alertDiv.style.cssText = 'top: 20px; right: 20px; z-index: 9999; min-width: 300px;';
            alertDiv.innerHTML = `
                <i class="fas fa-check-circle me-2"></i>${message}
                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
            `;
            document.body.appendChild(alertDiv);
            
            // Auto-dismiss after 5 seconds
            setTimeout(function() {
                if (alertDiv.parentNode) {
                    alertDiv.parentNode.removeChild(alertDiv);
                }
            }, 5000);
        }, 500);
    }

    // Add confirmation for delete actions
    document.querySelectorAll('.btn-remove').forEach(function(button) {
        button.addEventListener('click', function(e) {
            if (!confirm('Are you sure you want to remove this payment record? This action cannot be undone.')) {
                e.preventDefault();
                return false;
            }
        });
    });

    // Add loading state for forms
    document.querySelectorAll('form').forEach(function(form) {
        form.addEventListener('submit', function() {
            const submitBtn = form.querySelector('button[type="submit"]');
            if (submitBtn) {
                submitBtn.disabled = true;
                submitBtn.innerHTML = '<i class="fas fa-spinner fa-spin me-1"></i>Processing...';
            }
        });
    });
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>