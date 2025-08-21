<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login - Pahana Edu Bookshop</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<style>
    body {
        background-image: url('https://images.unsplash.com/photo-1481627834876-b7833e8f5570?ixlib=rb-4.0.3&auto=format&fit=crop&w=2070&q=80');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        height: 100vh;
    }
    
    .navbar {
        background: linear-gradient(135deg, #2c5aa0, #1e4080) !important;
        box-shadow: 0 4px 15px rgba(0,0,0,0.2);
        margin-bottom: 0;
    }
    
    .navbar-brand {
        display: flex;
        align-items: center;
        color: white !important;
        font-size: 1.8rem;
        font-weight: bold;
    }
    
    .book-icon {
        font-size: 2.5rem;
        color: white;
        margin: 0 15px 0 50px;
    }
    
    .navbar-nav .nav-link {
        color: #ffffff !important;
        font-size: 1rem;
        font-weight: 500;
        margin: 0 5px;
        padding: 0.5rem 1rem !important;
        border-radius: 8px;
        transition: all 0.3s ease;
    }
    
    .navbar-nav .nav-link:hover {
        color: #ffd700 !important;
        background-color: rgba(255, 255, 255, 0.1);
        transform: translateY(-2px);
    }
    
    .navbar-nav .nav-link.active {
        background-color: rgba(255, 255, 255, 0.2) !important;
        color: #ffffff !important;
    }
    
    .navbar-nav .nav-link i {
        margin-right: 0.5rem;
    }
    
    .navbar-toggler {
        margin-right: 30px;
        border-color: rgba(255, 255, 255, 0.3);
    }
    
    .navbar-toggler-icon {
        background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3e%3cpath stroke='rgba%28255, 255, 255, 0.75%29' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
    }
    
    .container-fluid {
        padding-left: 50px;
        padding-right: 50px;
    }
    
    .well {
        padding: 0 0 0 50px;
    }
    
    .container {
        margin-top: 5rem;
    }
    
    .login-card {
        background: rgba(255, 255, 255, 0.95);
        backdrop-filter: blur(20px);
        border-radius: 20px;
        box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
        padding: 3rem;
        border: 1px solid rgba(255, 255, 255, 0.2);
    }
    
    h2 {
        font-size: 2.5rem;
        font-weight: bold;
        color: #2c5aa0;
        margin-bottom: 2rem;
        text-align: center;
    }
    
    .admin-icon {
        text-align: center;
        margin-bottom: 2rem;
    }
    
    .admin-icon i {
        font-size: 4rem;
        color: #2c5aa0;
        background: linear-gradient(135deg, rgba(44, 90, 160, 0.1), rgba(30, 64, 128, 0.1));
        padding: 1.5rem;
        border-radius: 50%;
        border: 3px solid rgba(44, 90, 160, 0.2);
    }
    
    .form-group {
        margin-top: 2rem;
        text-align: center;
    }
    
    label {
        font-weight: bold;
        color: #2c5aa0;
        font-size: 1.1rem;
        margin-bottom: 0.5rem;
        display: block;
    }
    
    .form-control {
        border: 2px solid #dee2e6;
        border-radius: 10px;
        padding: 0.8rem 1rem;
        font-size: 1rem;
        transition: all 0.3s ease;
        background-color: #fafafa;
    }
    
    .form-control:focus {
        border-color: #2c5aa0;
        box-shadow: 0 0 0 0.2rem rgba(44, 90, 160, 0.25);
        background-color: white;
    }
    
    .btn-admin {
        background: linear-gradient(135deg, #dc3545, #c82333);
        border: none;
        border-radius: 10px;
        padding: 0.8rem 2rem;
        font-weight: bold;
        color: white;
        font-size: 1.1rem;
        transition: all 0.3s ease;
        min-width: 150px;
    }
    
    .btn-admin:hover {
        background: linear-gradient(135deg, #c82333, #dc3545);
        transform: translateY(-2px);
        box-shadow: 0 10px 25px rgba(220, 53, 69, 0.3);
        color: white;
    }
    
    #errorMessage {
        display: none;
        color: #dc3545;
        margin-top: 1rem;
        background: rgba(220, 53, 69, 0.1);
        padding: 1rem;
        border-radius: 8px;
        border-left: 4px solid #dc3545;
    }
    
    .subtitle {
        text-align: center;
        color: #6c757d;
        margin-bottom: 2rem;
        font-size: 1.1rem;
    }
    
    @media (max-width: 768px) {
        .book-icon {
            margin: 0 10px 0 20px;
            font-size: 2rem;
        }
        
        .navbar-brand {
            font-size: 1.4rem;
        }
        
        .login-card {
            margin: 1rem;
            padding: 2rem;
        }
        
        h2 {
            font-size: 2rem;
        }
    }
</style>
  
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light">
  <div class="container-fluid">
      <div class="navbar-brand">
          <i class="fas fa-book-open book-icon"></i>
          <span>Pahana Edu</span>
      </div>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav ms-auto">
        <a class="nav-link" href="CruzeXHome.jsp">
            <i class="fas fa-home"></i>Home
        </a>
        <a class="nav-link" href="StaffLogin.jsp">
            <i class="fas fa-user-tie"></i>Staff
        </a>
        <a class="nav-link active" aria-current="page" href="AdminLogin.jsp">
            <i class="fas fa-user-shield"></i>Admin
        </a>
      </div>
    </div>
  </div>
</nav>

<div class="row g-0 position-relative container mt-5">
  <div class="col-md-8 mx-auto">
    <div class="login-card">
        <div class="admin-icon">
            <i class="fas fa-user-shield"></i>
        </div>
        
        <h2>Admin Login</h2>
        <p class="subtitle">Access the Pahana Edu administrative panel</p>
        
        <form id="loginForm" action="${pageContext.request.contextPath}/adminLoginController" method="post">
            <div class="form-group">
                <label for="username">
                    <i class="fas fa-user me-2"></i>Administrator Username:
                </label>
                <input type="text" id="username" name="username" class="form-control mx-auto" style="width: 70%;" required>
            </div>
            
            <div class="form-group">
                <label for="password">
                    <i class="fas fa-lock me-2"></i>Administrator Password:
                </label>
                <input type="password" id="password" class="form-control mx-auto" style="width: 70%;" name="password" required>
            </div>
            
            <div class="form-group">
                <button type="submit" class="btn btn-admin mb-3 mt-4">
                    <i class="fas fa-sign-in-alt me-2"></i>Admin Login
                </button>
            </div>
        </form>
        
        <div id="errorMessage">
            <i class="fas fa-exclamation-triangle me-2"></i>
            <span id="errorText"></span>
        </div>
        
        <div class="text-center mt-4">
            <small class="text-muted">
                <i class="fas fa-shield-alt me-1"></i>
                Secure administrative access to Pahana Edu Bookshop
            </small>
        </div>
    </div>
  </div>
</div>

<script>
<script>
    function showError(message) {
        document.getElementById('errorText').textContent = message;
        document.getElementById('errorMessage').style.display = 'block';
        
        // Auto-hide after 5 seconds
        setTimeout(function() {
            document.getElementById('errorMessage').style.display = 'none';
        }, 5000);
    }
    
    // Clear error message when user starts typing
    document.getElementById('username').addEventListener('input', function() {
        document.getElementById('errorMessage').style.display = 'none';
    });
    
    document.getElementById('password').addEventListener('input', function() {
        document.getElementById('errorMessage').style.display = 'none';
    });

    // Check for server-side error message
    window.onload = function() {
        <% if (request.getAttribute("errorMessage") != null) { %>
            showError('<%= request.getAttribute("errorMessage") %>');
        <% } %>
    };
</script>

</body>
</html>