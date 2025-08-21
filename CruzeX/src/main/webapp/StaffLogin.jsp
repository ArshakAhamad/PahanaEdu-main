<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Staff Login - Pahana Edu Bookshop</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

<script>
    function displayErrorMessage(message) {
        var errorMessageDiv = document.getElementById("errorMessage");
        errorMessageDiv.innerText = message;
        errorMessageDiv.style.display = "block";
        
        // Hide error message after 5 seconds
        setTimeout(function() {
            errorMessageDiv.style.display = "none";
        }, 5000);
    }
</script>

<style>
    body {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%), url('img/bookshop-bg.jpg');
        background-size: cover;
        background-position: center; 
        background-repeat: no-repeat; 
        background-blend-mode: overlay;
        min-height: 100vh;
        display: flex;
        flex-direction: column;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    
    .logo {
        border-radius: 50%;
        width: 50px;
        height: 50px;
        object-fit: cover;
    }
    
    .navbar {
        background-color: rgba(255, 255, 255, 0.95);
        backdrop-filter: blur(10px);
        box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.15);
        border-bottom: 3px solid #2c5aa0;
    }
    
    .navbar-brand {
        display: flex;
        align-items: center;
        color: #2c5aa0 !important;
        font-weight: bold;
        font-size: 1.5rem;
        text-decoration: none;
    }
    
    .brand-icon {
        font-size: 2rem;
        color: #2c5aa0;
        margin-right: 10px;
    }
    
    .navbar .nav-link {
        color: #2c5aa0 !important;
        font-weight: 500;
        transition: all 0.3s ease;
        border-radius: 8px;
        margin: 0 5px;
        padding: 8px 15px;
    }
    
    .navbar .nav-link:hover,
    .navbar .nav-link.active {
        color: #1e4080 !important;
        background-color: rgba(44, 90, 160, 0.1);
        transform: translateY(-2px);
    }
    
    .form-container {
        background: rgba(255, 255, 255, 0.95);
        backdrop-filter: blur(20px);
        border-radius: 20px;
        box-shadow: 0 20px 40px rgba(0, 0, 0, 0.2);
        padding: 50px;
        border: 2px solid rgba(255, 255, 255, 0.3);
        position: relative;
        overflow: hidden;
    }
    
    @keyframes shimmer {
        0%, 100% { transform: translateX(-100%); }
        50% { transform: translateX(100%); }
    }
    
    .form-header {
        text-align: center;
        margin-bottom: 40px;
    }
    
    .form-container h2 {
        font-weight: bold;
        color: #2c5aa0;
        margin-bottom: 10px;
        font-size: 2.2rem;
    }
    
    .form-subtitle {
        color: #6c757d;
        font-size: 1.1rem;
        margin-bottom: 20px;
    }
    
    .staff-icon {
        width: 80px;
        height: 80px;
        background: linear-gradient(135deg, #2c5aa0, #1e4080);
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        color: white;
        font-size: 2.5rem;
        margin: 0 auto 20px;
        box-shadow: 0 10px 25px rgba(44, 90, 160, 0.3);
        animation: pulse 2s ease-in-out infinite;
    }
    
    @keyframes pulse {
        0%, 100% { transform: scale(1); }
        50% { transform: scale(1.05); }
    }
    
    .form-group label {
        font-weight: 600;
        color: #2c5aa0;
        margin-bottom: 8px;
        display: flex;
        align-items: center;
    }
    
    .form-control {
        border-radius: 12px;
        border: 2px solid #e9ecef;
        padding: 15px 20px;
        font-size: 1rem;
        transition: all 0.3s ease;
        background-color: rgba(255, 255, 255, 0.9);
        box-shadow: inset 0 2px 4px rgba(0,0,0,0.1);
    }
    
    .form-control:focus {
        border-color: #2c5aa0;
        box-shadow: 0 0 0 0.3rem rgba(44, 90, 160, 0.25);
        background-color: white;
        transform: translateY(-2px);
    }
    
    .btn-login {
        border-radius: 12px;
        background: linear-gradient(135deg, #2c5aa0, #1e4080);
        color: #ffffff;
        font-weight: bold;
        padding: 15px 30px;
        font-size: 1.1rem;
        transition: all 0.3s ease;
        border: none;
        width: 100%;
        position: relative;
        overflow: hidden;
        box-shadow: 0 8px 25px rgba(44, 90, 160, 0.3);
    }
    
    .btn-login::before {
        content: '';
        position: absolute;
        top: 0;
        left: -100%;
        width: 100%;
        height: 100%;
        background: linear-gradient(90deg, transparent, rgba(255,255,255,0.3), transparent);
        transition: left 0.5s;
    }
    
    .btn-login:hover::before {
        left: 100%;
    }
    
    .btn-login:hover {
        background: linear-gradient(135deg, #1e4080, #2c5aa0);
        transform: translateY(-3px);
        box-shadow: 0 12px 35px rgba(44, 90, 160, 0.4);
        color: white;
    }
    
    .btn-login:active {
        transform: translateY(-1px);
    }
    
    #errorMessage {
        display: none;
        background: linear-gradient(135deg, #f8d7da, #f5c6cb);
        color: #721c24;
        padding: 15px 20px;
        border-radius: 12px;
        margin-top: 20px;
        border: 1px solid #f5c6cb;
        animation: slideDown 0.3s ease;
        box-shadow: 0 4px 15px rgba(220, 53, 69, 0.2);
    }
    
    @keyframes slideDown {
        from {
            opacity: 0;
            transform: translateY(-15px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
    
    .footer {
        background: linear-gradient(135deg, #2c5aa0, #1e4080);
        color: rgba(255, 255, 255, 0.9);
        text-align: center;
        padding: 20px 0;
        margin-top: auto;
        box-shadow: 0 -4px 15px rgba(0, 0, 0, 0.1);
    }
    
    .other-logins {
        text-align: center;
        margin-top: 30px;
        padding-top: 25px;
        border-top: 1px solid #e9ecef;
    }
    
    .other-logins p {
        color: #6c757d;
        margin-bottom: 15px;
        font-weight: 500;
    }
    
    .login-links a {
        display: inline-block;
        margin: 0 8px;
        padding: 10px 20px;
        background: linear-gradient(135deg, #f8f9fa, #e9ecef);
        color: #2c5aa0;
        text-decoration: none;
        border-radius: 10px;
        font-weight: 500;
        transition: all 0.3s ease;
        border: 2px solid transparent;
        box-shadow: 0 4px 15px rgba(0,0,0,0.1);
    }
    
    .login-links a:hover {
        background: linear-gradient(135deg, #2c5aa0, #1e4080);
        color: white;
        transform: translateY(-3px);
        border-color: #2c5aa0;
        box-shadow: 0 8px 25px rgba(44, 90, 160, 0.3);
    }
    
    /* Responsive design */
    @media (max-width: 768px) {
        .form-container {
            margin: 20px;
            padding: 30px 25px;
        }
        
        .form-container h2 {
            font-size: 1.8rem;
        }
        
        .staff-icon {
            width: 60px;
            height: 60px;
            font-size: 2rem;
        }
        
        .login-links a {
            display: block;
            margin: 5px 0;
        }
    }
</style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container-fluid">
        <div class="navbar-brand">
            <i class="fas fa-book-open brand-icon"></i>
            <span>Pahana Edu</span>
        </div>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link" href="AdminHomePage.jsp">
                    <i class="fas fa-home me-1"></i>Home
                </a>
                <a class="nav-link" href="CustomerLogin.jsp">
                    <i class="fas fa-user me-1"></i>Customer
                </a>
                <a class="nav-link" href="AdminLogin.jsp">
                    <i class="fas fa-user-shield me-1"></i>Admin
                </a>
                <a class="nav-link active" aria-current="page" href="StaffLogin.jsp">
                    <i class="fas fa-users me-1"></i>Staff
                </a>
            </div>
        </div>
    </div>
</nav>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6 form-container">
            <div class="form-header">
                <div class="staff-icon">
                    <i class="fas fa-user-tie"></i>
                </div>
                <h2><i class="fas fa-sign-in-alt me-2"></i>Staff Login</h2>
                <p class="form-subtitle">Access your staff dashboard at Pahana Edu Bookshop</p>
            </div>
            
            <form action="driverLoginController" method="post">
                <div class="form-group mt-4">
                    <label for="username">
                        <i class="fas fa-user me-2"></i>Username:
                    </label>
                    <input type="text" id="username" class="form-control" name="username" 
                           placeholder="Enter your staff username" required>
                </div>
                <div class="form-group mt-4">
                    <label for="password">
                        <i class="fas fa-lock me-2"></i>Password:
                    </label>
                    <input type="password" id="password" class="form-control" name="password" 
                           placeholder="Enter your password" required>
                </div>
                
                <button type="submit" class="btn btn-login mb-4 mt-4" onclick="return validateForm()">
                    <i class="fas fa-sign-in-alt me-2"></i>Login to Dashboard
                </button>
            </form>
            
            <div class="other-logins">
                <p><i class="fas fa-users me-1"></i>Or login as:</p>
                <div class="login-links">
                    <a href="AdminLogin.jsp">
                        <i class="fas fa-user-shield me-1"></i>Admin
                    </a>
                    <a href="CustomerLogin.jsp">
                        <i class="fas fa-user me-1"></i>Customer
                    </a>
                </div>
            </div>
            
            <div id="errorMessage"></div>
        </div>
    </div>
</div>

<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <p class="mb-1">
                    <i class="fas fa-copyright me-1"></i>
                    2024 Pahana Edu Bookshop. All rights reserved.
                </p>
                <p class="mb-0">
                    <small><i class="fas fa-shield-alt me-1"></i>Staff Portal - Secure Access</small>
                </p>
            </div>
        </div>
    </div>
</footer>

<script>
    function validateForm() {
        var username = document.getElementById("username").value;
        var password = document.getElementById("password").value;
        
        if (username.trim() === "" || password.trim() === "") {
            displayErrorMessage("Username and password are required.");
            return false;
        }
        
        if (username.length < 3) {
            displayErrorMessage("Username must be at least 3 characters long.");
            return false;
        }
        
        if (password.length < 4) {
            displayErrorMessage("Password must be at least 4 characters long.");
            return false;
        }
        
        return true;
    }
</script>

<script>
    var message = "<%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>";
    if (message.trim() !== "" && message.trim() !== "null") {
        if (message.toLowerCase().includes("success")) {
            // Show success alert
            setTimeout(function() {
                const alertDiv = document.createElement('div');
                alertDiv.className = 'alert alert-success alert-dismissible fade show';
                alertDiv.style.cssText = 'margin-top: 20px; border-radius: 10px;';
                alertDiv.innerHTML = `
                    <i class="fas fa-check-circle me-2"></i>${message}
                    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                `;
                document.querySelector('.form-container').appendChild(alertDiv);
            }, 100);
        } else {
            displayErrorMessage(message);
        }
    }
    
    // Auto-focus on username field when page loads
    document.addEventListener('DOMContentLoaded', function() {
        document.getElementById('username').focus();
    });
    
    // Debug logging
    console.log('Staff Login page loaded for Pahana Edu Bookshop');
</script>

</body>
</html>