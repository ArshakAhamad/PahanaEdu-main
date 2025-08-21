<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Login - Pahana Edu Bookshop</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" rel="stylesheet">

    <style>
        :root {
            --primary-color: #2c5aa0;
            --secondary-color: #f8f9fa;
            --accent-color: #28a745;
            --text-color: #333;
            --border-color: #dee2e6;
            --error-color: #dc3545;
            --success-color: #28a745;
        }

        body {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            font-family: 'Arial', sans-serif;
        }

        .navbar {
            background: rgba(255, 255, 255, 0.95) !important;
            backdrop-filter: blur(10px);
            box-shadow: 0 2px 20px rgba(0,0,0,0.1);
        }

        .navbar-brand {
            font-size: 1.8rem;
            font-weight: bold;
            color: var(--primary-color) !important;
        }

        .nav-link {
            color: var(--text-color) !important;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .nav-link:hover {
            color: var(--primary-color) !important;
            transform: translateY(-2px);
        }

        .login-container {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 1rem 0;
        }

        .login-card {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(20px);
            border-radius: 20px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.2);
            padding: 3rem;
            width: 100%;
            max-width: 450px;
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .login-header {
            text-align: center;
            margin-bottom: 2rem;
        }

        .login-icon {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            background: linear-gradient(135deg, var(--primary-color), #1e4080);
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 1rem;
            color: white;
            font-size: 2rem;
        }

        .login-title {
            font-size: 2rem;
            font-weight: bold;
            color: var(--primary-color);
            margin-bottom: 0.5rem;
        }

        .login-subtitle {
            color: #6c757d;
            font-size: 1rem;
        }

        .form-floating {
            margin-bottom: 1.5rem;
        }

        .form-floating > .form-control {
            border: 2px solid var(--border-color);
            border-radius: 10px;
            padding: 1rem 0.75rem;
            height: auto;
            transition: all 0.3s ease;
        }

        .form-floating > .form-control:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 0 0.2rem rgba(44, 90, 160, 0.25);
        }

        .form-floating > label {
            padding: 1rem 0.75rem;
            color: #6c757d;
        }

        .btn-login {
            width: 100%;
            background: linear-gradient(135deg, var(--primary-color), #1e4080);
            border: none;
            color: white;
            font-weight: 600;
            font-size: 1.1rem;
            padding: 0.8rem;
            border-radius: 10px;
            transition: all 0.3s ease;
            margin-bottom: 1.5rem;
        }

        .btn-login:hover {
            background: linear-gradient(135deg, #1e4080, var(--primary-color));
            transform: translateY(-2px);
            box-shadow: 0 10px 25px rgba(44, 90, 160, 0.3);
            color: white;
        }

        .login-links {
            text-align: center;
        }

        .login-links a {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .login-links a:hover {
            color: #1e4080;
            text-decoration: underline;
        }

        .divider {
            text-align: center;
            margin: 1.5rem 0;
            position: relative;
            color: #6c757d;
        }

        .divider::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 0;
            right: 0;
            height: 1px;
            background: var(--border-color);
        }

        .divider span {
            background: white;
            padding: 0 1rem;
        }

        .alert-custom {
            border: none;
            border-radius: 10px;
            padding: 1rem;
            margin-bottom: 1.5rem;
            font-weight: 500;
        }

        .alert-error {
            background: rgba(220, 53, 69, 0.1);
            color: var(--error-color);
            border-left: 4px solid var(--error-color);
        }

        .alert-success {
            background: rgba(40, 167, 69, 0.1);
            color: var(--success-color);
            border-left: 4px solid var(--success-color);
        }

        .footer {
            background: rgba(0, 0, 0, 0.8);
            backdrop-filter: blur(10px);
            color: white;
            text-align: center;
            padding: 1rem 0;
            margin-top: auto;
        }

        .loading-spinner {
            display: none;
            margin-right: 0.5rem;
        }

        .password-toggle {
            position: absolute;
            right: 1rem;
            top: 50%;
            transform: translateY(-50%);
            border: none;
            background: none;
            color: #6c757d;
            cursor: pointer;
            z-index: 10;
        }

        .form-floating {
            position: relative;
        }

        @media (max-width: 768px) {
            .login-card {
                margin: 1rem;
                padding: 2rem;
            }
            
            .login-title {
                font-size: 1.5rem;
            }
        }

        /* Animation classes */
        .shake {
            animation: shake 0.5s ease-in-out;
        }

        @keyframes shake {
            0%, 100% { transform: translateX(0); }
            25% { transform: translateX(-5px); }
            75% { transform: translateX(5px); }
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">
                <i class="fas fa-book-open me-2"></i>Pahana Edu
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <div class="navbar-nav ms-auto">
                    <a class="nav-link" href="CruzeXHome.jsp">
                        <i class="fas fa-home me-1"></i>Home
                    </a>
                    <a class="nav-link" href="Register.jsp">
                        <i class="fas fa-user-plus me-1"></i>Register
                    </a>
                    <a class="nav-link" href="StaffLogin.jsp">
                        <i class="fas fa-users me-1"></i>Staff Login
                    </a>
                    <a class="nav-link" href="admin-login.jsp">
                        <i class="fas fa-user-shield me-1"></i>Admin Login
                    </a>
                </div>
            </div>
        </div>
    </nav>

    <!-- Login Container -->
    <div class="login-container">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-5 col-md-7">
                    <div class="login-card animate__animated animate__fadeInUp">
                        <div class="login-header">
                            <div class="login-icon animate__animated animate__bounceIn">
                                <i class="fas fa-user"></i>
                            </div>
                            <h2 class="login-title">Customer Login</h2>
                            <p class="login-subtitle">Access your account to manage orders and profile</p>
                        </div>

                        <!-- Error/Success Messages -->
                        <c:if test="${not empty errorMessage}">
                            <div class="alert-custom alert-error animate__animated animate__shakeX">
                                <i class="fas fa-exclamation-triangle me-2"></i>${errorMessage}
                            </div>
                        </c:if>

                        <c:if test="${not empty successMessage}">
                            <div class="alert-custom alert-success animate__animated animate__fadeInDown">
                                <i class="fas fa-check-circle me-2"></i>${successMessage}
                            </div>
                        </c:if>

                        <!-- Login Form -->
                        <form action="CustomerLoginController" method="post" id="loginForm" onsubmit="return validateForm()">
                            <div class="form-floating">
                                <input type="text" id="username" class="form-control" name="username" placeholder="Username" required>
                                <label for="username"><i class="fas fa-user me-2"></i>Username</label>
                            </div>

                            <div class="form-floating">
                                <input type="password" id="password" class="form-control" name="password" placeholder="Password" required>
                                <label for="password"><i class="fas fa-lock me-2"></i>Password</label>
                                <button type="button" class="password-toggle" onclick="togglePassword()">
                                    <i class="fas fa-eye" id="passwordToggleIcon"></i>
                                </button>
                            </div>

                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="rememberMe" name="rememberMe">
                                    <label class="form-check-label" for="rememberMe">
                                        Remember me
                                    </label>
                                </div>
                                <a href="ForgotPassword.jsp" class="login-links">Forgot Password?</a>
                            </div>

                            <button type="submit" class="btn btn-login" id="loginBtn">
                                <span class="loading-spinner">
                                    <i class="fas fa-spinner fa-spin"></i>
                                </span>
                                <i class="fas fa-sign-in-alt me-2"></i>Login to Account
                            </button>
                        </form>

                        <div class="divider">
                            <span>New to Pahana Edu?</span>
                        </div>

                        <div class="login-links">
                            <a href="Register.jsp" class="btn btn-outline-primary w-100">
                                <i class="fas fa-user-plus me-2"></i>Create New Account
                            </a>
                        </div>

                        <div class="login-links mt-3">
                            <small class="text-muted">
                                <i class="fas fa-shield-alt me-1"></i>
                                Your information is secure and encrypted
                            </small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <p class="mb-0">&copy; 2025 Pahana Edu Bookshop. All rights reserved.</p>
                </div>
                <div class="col-md-6 text-md-end">
                    <small>
                        <i class="fas fa-phone me-1"></i>+94 11 234 5678 |
                        <i class="fas fa-envelope ms-2 me-1"></i>support@pahanaedu.lk
                    </small>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        function validateForm() {
            const username = document.getElementById("username").value.trim();
            const password = document.getElementById("password").value.trim();
            const loginBtn = document.getElementById("loginBtn");
            const loadingSpinner = document.querySelector(".loading-spinner");

            // Reset previous error states
            document.getElementById("username").classList.remove("is-invalid");
            document.getElementById("password").classList.remove("is-invalid");

            if (username === "") {
                showFieldError("username", "Username is required");
                return false;
            }

            if (username.length < 3) {
                showFieldError("username", "Username must be at least 3 characters");
                return false;
            }

            if (password === "") {
                showFieldError("password", "Password is required");
                return false;
            }

            if (password.length < 6) {
                showFieldError("password", "Password must be at least 6 characters");
                return false;
            }

            // Show loading state
            loginBtn.disabled = true;
            loadingSpinner.style.display = "inline-block";
            loginBtn.innerHTML = '<span class="loading-spinner"><i class="fas fa-spinner fa-spin"></i></span>Signing In...';

            return true;
        }

        function showFieldError(fieldId, message) {
            const field = document.getElementById(fieldId);
            field.classList.add("is-invalid");
            field.classList.add("shake");
            
            // Remove shake animation after it completes
            setTimeout(() => {
                field.classList.remove("shake");
            }, 500);

            // Create or update error message
            let errorDiv = field.parentNode.querySelector(".invalid-feedback");
            if (!errorDiv) {
                errorDiv = document.createElement("div");
                errorDiv.className = "invalid-feedback";
                field.parentNode.appendChild(errorDiv);
            }
            errorDiv.textContent = message;

            // Focus on the error field
            field.focus();
        }

        function togglePassword() {
            const passwordField = document.getElementById("password");
            const toggleIcon = document.getElementById("passwordToggleIcon");

            if (passwordField.type === "password") {
                passwordField.type = "text";
                toggleIcon.classList.remove("fa-eye");
                toggleIcon.classList.add("fa-eye-slash");
            } else {
                passwordField.type = "password";
                toggleIcon.classList.remove("fa-eye-slash");
                toggleIcon.classList.add("fa-eye");
            }
        }

        // Remove error states when user starts typing
        document.getElementById("username").addEventListener("input", function() {
            this.classList.remove("is-invalid");
            const errorDiv = this.parentNode.querySelector(".invalid-feedback");
            if (errorDiv) {
                errorDiv.remove();
            }
        });

        document.getElementById("password").addEventListener("input", function() {
            this.classList.remove("is-invalid");
            const errorDiv = this.parentNode.querySelector(".invalid-feedback");
            if (errorDiv) {
                errorDiv.remove();
            }
        });

        // Enable form submission with Enter key
        document.addEventListener("keypress", function(event) {
            if (event.key === "Enter") {
                event.preventDefault();
                document.getElementById("loginForm").dispatchEvent(new Event("submit"));
            }
        });

        // Auto-focus username field on page load
        window.addEventListener("load", function() {
            document.getElementById("username").focus();
        });

        // Add floating label animation
        document.querySelectorAll('.form-floating .form-control').forEach(function(input) {
            input.addEventListener('focus', function() {
                this.parentNode.classList.add('focused');
            });
            
            input.addEventListener('blur', function() {
                if (this.value === '') {
                    this.parentNode.classList.remove('focused');
                }
            });
        });
    </script>

</body>
</html>