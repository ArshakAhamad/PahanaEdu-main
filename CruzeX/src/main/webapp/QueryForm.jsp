<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Submit Query - Pahana Edu Bookshop</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        .query-form {
            max-width: 600px;
            margin: 50px auto;
            padding: 30px;
            background-color: #f8f9fa;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
        }
        
        body {
            background-image: url('img/Query.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        /* Enhanced Navbar Styling */
        .navbar {
            background: linear-gradient(135deg, #2c5aa0, #1e4080) !important;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            padding: 1rem 0;
        }

        .navbar-brand {
            font-size: 1.8rem;
            font-weight: bold;
            color: white !important;
            display: flex;
            align-items: center;
        }

        .navbar-brand i {
            margin-right: 0.5rem;
            font-size: 2rem;
        }

        .nav-link {
            color: #ffffff !important;
            font-weight: 500;
            transition: all 0.3s ease;
            border-radius: 8px;
            margin: 0 5px;
            padding: 0.5rem 1rem !important;
        }

        .nav-link:hover {
            color: #ffd700 !important;
            background-color: rgba(255, 255, 255, 0.1);
            transform: translateY(-2px);
        }

        .nav-link.active {
            background-color: rgba(255, 255, 255, 0.2) !important;
            color: #ffffff !important;
        }

        .nav-link i {
            margin-right: 0.5rem;
        }
    </style>
</head>
<body>
<!-- Enhanced Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="CustomerHomePage.jsp">
            <i class="fas fa-book-open"></i>Pahana Edu
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <div class="navbar-nav ms-auto">
                <a class="nav-link" href="CustomerHomePage.jsp">
                    <i class="fas fa-home"></i>Home
                </a>
                <a class="nav-link" href="BookingController?type=viewCustomerBookings">
                    <i class="fas fa-shopping-bag"></i>My Orders
                </a>
                <a class="nav-link active" href="QueryForm.jsp">
                    <i class="fas fa-question-circle"></i>Support
                </a>
                <a class="nav-link" href="LogoutController">
                    <i class="fas fa-sign-out-alt"></i>Logout
                </a>
            </div>
        </div>
    </div>
</nav>

<!-- Query Form -->
<div class="query-form">
    <h3 class="text-center mb-4">Submit Your Query</h3>
    <form action="QueryController" method="post">
        <div class="mb-3">
            <label for="userName" class="form-label">Full Name</label>
            <input type="text" class="form-control" id="userName" name="userName" required>
        </div>
        <div class="mb-3">
            <label for="userEmail" class="form-label">Email Address</label>
            <input type="email" class="form-control" id="userEmail" name="userEmail" required>
        </div>
        <div class="mb-3">
            <label for="userMessage" class="form-label">Your Message</label>
            <textarea class="form-control" id="userMessage" name="userMessage" rows="5" required></textarea>
        </div>
        <input type="hidden" name="type" value="add"/>
        <div class="d-grid">
            <button type="submit" class="btn btn-primary">Submit Query</button>
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
    var message = "<%= request.getAttribute("message") %>";
    if (message) {
        alert(message);
    }
</script>
</body>
</html>