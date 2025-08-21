<%-- 
    Document   : Home
    Created on : Feb 25, 2025, 12:12:56 PM
    Author     : MHM
    Updated for Pahana Edu Bookshop Management System
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pahana Edu - Bookshop Management System</title>
        <link rel="shortcut icon" href="img/book-icon.ico">
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
            }

            body {
                font-family: 'Arial', sans-serif;
                line-height: 1.6;
                color: var(--text-color);
            }

            .navbar {
                background: linear-gradient(135deg, var(--primary-color) 0%, #1e4080 100%);
                box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            }

            .navbar-brand {
                font-size: 2rem;
                font-weight: bold;
                color: white !important;
            }

            .nav-link {
                color: white !important;
                font-weight: 500;
                transition: all 0.3s ease;
            }

            .nav-link:hover {
                color: #ffd700 !important;
                transform: translateY(-2px);
            }

            .hero-section {
                background: linear-gradient(rgba(44, 90, 160, 0.8), rgba(30, 64, 128, 0.8)), 
                           url('https://images.unsplash.com/photo-1481627834876-b7833e8f5570?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80') center/cover;
                height: 70vh;
                display: flex;
                align-items: center;
                color: white;
            }

            .hero-content h1 {
                font-size: 3.5rem;
                font-weight: bold;
                margin-bottom: 1rem;
            }

            .hero-content p {
                font-size: 1.2rem;
                margin-bottom: 2rem;
            }

            .feature-card {
                background: white;
                border-radius: 10px;
                padding: 2rem;
                text-align: center;
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
                transition: all 0.3s ease;
                border: none;
                height: 100%;
            }

            .feature-card:hover {
                transform: translateY(-10px);
                box-shadow: 0 15px 30px rgba(0,0,0,0.2);
            }

            .feature-icon {
                font-size: 3rem;
                color: var(--primary-color);
                margin-bottom: 1rem;
            }

            .login-section {
                background: var(--secondary-color);
                padding: 4rem 0;
            }

            .login-card {
                background: white;
                border-radius: 15px;
                padding: 2rem;
                text-align: center;
                box-shadow: 0 10px 25px rgba(0,0,0,0.1);
                transition: all 0.3s ease;
                height: 100%;
            }

            .login-card:hover {
                transform: translateY(-5px);
                box-shadow: 0 15px 35px rgba(0,0,0,0.15);
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

            .btn-custom {
                background: linear-gradient(135deg, var(--accent-color), #218838);
                border: none;
                color: white;
                padding: 0.7rem 2rem;
                border-radius: 25px;
                font-weight: 500;
                transition: all 0.3s ease;
                text-decoration: none;
                display: inline-block;
            }

            .btn-custom:hover {
                transform: translateY(-2px);
                box-shadow: 0 5px 15px rgba(40, 167, 69, 0.4);
                color: white;
            }

            .stats-section {
                background: var(--primary-color);
                color: white;
                padding: 3rem 0;
            }

            .stat-item {
                text-align: center;
            }

            .stat-number {
                font-size: 2.5rem;
                font-weight: bold;
                display: block;
            }

            .footer {
                background: #1a1a1a;
                color: white;
                padding: 2rem 0;
                text-align: center;
            }

            .section-title {
                font-size: 2.5rem;
                font-weight: bold;
                text-align: center;
                margin-bottom: 3rem;
                color: var(--primary-color);
            }

            .system-info {
                background: white;
                padding: 4rem 0;
            }

            .info-card {
                background: linear-gradient(135deg, #f8f9fa, #e9ecef);
                border-radius: 10px;
                padding: 1.5rem;
                margin-bottom: 1rem;
                border-left: 4px solid var(--primary-color);
            }

            @media (max-width: 768px) {
                .hero-content h1 {
                    font-size: 2.5rem;
                }
                
                .navbar-brand {
                    font-size: 1.5rem;
                }
            }
        </style>
    </head>
    
    <body>
        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg fixed-top">
            <div class="container">
                <a class="navbar-brand" href="#home">
                    <i class="fas fa-book-open me-2"></i>Pahana Edu
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#home">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#features">Features</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#about">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#logins">System Access</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#contact">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Hero Section -->
        <section id="home" class="hero-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="hero-content animate__animated animate__fadeInUp">
                            <h1>Pahana Edu Bookshop</h1>
                            <p class="lead">Leading Bookshop Management System in Colombo City</p>
                            <p>Efficiently manage customer accounts, inventory, billing, and more with our comprehensive digital solution.</p>
                            <a href="#logins" class="btn btn-custom btn-lg me-3">
                                <i class="fas fa-sign-in-alt me-2"></i>Access System
                            </a>
                            <a href="#about" class="btn btn-outline-light btn-lg">
                                <i class="fas fa-info-circle me-2"></i>Learn More
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Stats Section -->
        <section class="stats-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="stat-item animate__animated animate__fadeInUp">
                            <span class="stat-number counter" data-count="500">0</span>
                            <p>Active Customers</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="stat-item animate__animated animate__fadeInUp" data-wow-delay="0.2s">
                            <span class="stat-number counter" data-count="1000">0</span>
                            <p>Books Managed</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="stat-item animate__animated animate__fadeInUp" data-wow-delay="0.4s">
                            <span class="stat-number counter" data-count="100">0</span>
                            <p>Monthly Transactions</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="stat-item animate__animated animate__fadeInUp" data-wow-delay="0.6s">
                            <span class="stat-number counter" data-count="15">0</span>
                            <p>Years of Service</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Features Section -->
        <section id="features" class="system-info">
            <div class="container">
                <h2 class="section-title animate__animated animate__fadeInUp">System Features</h2>
                <div class="row">
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="feature-card animate__animated animate__fadeInUp">
                            <div class="feature-icon">
                                <i class="fas fa-user-plus"></i>
                            </div>
                            <h4>Customer Management</h4>
                            <p>Add, edit, and manage customer accounts with unique account numbers, contact details, and purchase history.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="feature-card animate__animated animate__fadeInUp" data-wow-delay="0.2s">
                            <div class="feature-icon">
                                <i class="fas fa-book"></i>
                            </div>
                            <h4>Inventory Management</h4>
                            <p>Complete book inventory system with add, update, delete operations and stock tracking.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="feature-card animate__animated animate__fadeInUp" data-wow-delay="0.4s">
                            <div class="feature-icon">
                                <i class="fas fa-calculator"></i>
                            </div>
                            <h4>Billing System</h4>
                            <p>Automated bill calculation and printing based on units consumed with detailed invoice generation.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="feature-card animate__animated animate__fadeInUp" data-wow-delay="0.6s">
                            <div class="feature-icon">
                                <i class="fas fa-shield-alt"></i>
                            </div>
                            <h4>Secure Access</h4>
                            <p>Multi-level user authentication with role-based access control for staff and administrators.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="feature-card animate__animated animate__fadeInUp" data-wow-delay="0.8s">
                            <div class="feature-icon">
                                <i class="fas fa-chart-bar"></i>
                            </div>
                            <h4>Reports & Analytics</h4>
                            <p>Generate detailed reports on sales, customer activity, and inventory status for better decision making.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="feature-card animate__animated animate__fadeInUp" data-wow-delay="1s">
                            <div class="feature-icon">
                                <i class="fas fa-question-circle"></i>
                            </div>
                            <h4>Help & Support</h4>
                            <p>Comprehensive help section with system usage guidelines and user support documentation.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Login Section -->
        <section id="logins" class="login-section">
            <div class="container">
                <h2 class="section-title animate__animated animate__fadeInUp">System Access</h2>
                <div class="row">
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="login-card animate__animated animate__fadeInUp">
                            <div class="login-icon">
                                <i class="fas fa-user"></i>
                            </div>
                            <h5>Customer Portal</h5>
                            <p class="mb-4">View your account details, purchase history, and manage your profile information.</p>
                            <a href="Login-Customer.jsp" class="btn btn-custom">
                                <i class="fas fa-sign-in-alt me-2"></i>Customer Login
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="login-card animate__animated animate__fadeInUp" data-wow-delay="0.2s">
                            <div class="login-icon">
                                <i class="fas fa-users"></i>
                            </div>
                            <h5>Staff Dashboard</h5>
                            <p class="mb-4">Access customer management, inventory control, and billing system features.</p>
                            <a href="StaffLogin.jsp" class="btn btn-custom">
                                <i class="fas fa-sign-in-alt me-2"></i>Staff Login
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="login-card animate__animated animate__fadeInUp" data-wow-delay="0.4s">
                            <div class="login-icon">
                                <i class="fas fa-user-shield"></i>
                            </div>
                            <h5>Admin Panel</h5>
                            <p class="mb-4">Complete system administration, user management, and system configuration access.</p>
                            <a href="AdminLogin.jsp" class="btn btn-custom">
                                <i class="fas fa-sign-in-alt me-2"></i>Admin Login
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- About Section -->
        <section id="about" class="system-info">
            <div class="container">
                <h2 class="section-title animate__animated animate__fadeInUp">About Pahana Edu</h2>
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="animate__animated animate__fadeInLeft">
                            <h3 class="mb-4">Leading Bookshop in Colombo City</h3>
                            <div class="info-card">
                                <h5><i class="fas fa-store me-2"></i>Our Mission</h5>
                                <p>To provide quality books and educational materials while maintaining excellent customer service through modern digital solutions.</p>
                            </div>
                            <div class="info-card">
                                <h5><i class="fas fa-target me-2"></i>Our Vision</h5>
                                <p>To be the premier bookshop in Colombo, leveraging technology to enhance customer experience and operational efficiency.</p>
                            </div>
                            <div class="info-card">
                                <h5><i class="fas fa-award me-2"></i>Our Values</h5>
                                <p>Quality, Innovation, Customer Satisfaction, and Educational Excellence drive everything we do.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="animate__animated animate__fadeInRight">
                            <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80" 
                                 alt="Bookshop Interior" class="img-fluid rounded shadow">
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Contact Section -->
        <section id="contact" class="login-section">
            <div class="container">
                <h2 class="section-title animate__animated animate__fadeInUp" style="color: var(--primary-color);">Contact Us</h2>
                <div class="row">
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="login-card animate__animated animate__fadeInUp">
                            <div class="login-icon">
                                <i class="fas fa-map-marker-alt"></i>
                            </div>
                            <h5>Address</h5>
                            <p>123 Main Street<br>Colombo 01<br>Western Province, Sri Lanka</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="login-card animate__animated animate__fadeInUp" data-wow-delay="0.2s">
                            <div class="login-icon">
                                <i class="fas fa-phone"></i>
                            </div>
                            <h5>Phone</h5>
                            <p>+94 11 234 5678<br>+94 77 123 4567</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="login-card animate__animated animate__fadeInUp" data-wow-delay="0.4s">
                            <div class="login-icon">
                                <i class="fas fa-envelope"></i>
                            </div>
                            <h5>Email</h5>
                            <p>info@pahanaedu.lk<br>support@pahanaedu.lk</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <p>&copy; 2025 Pahana Edu Bookshop. All rights reserved.</p>
                    </div>
                    <div class="col-md-6 text-md-end">
                        <div class="social-links">
                            <a href="#" class="text-white me-3"><i class="fab fa-facebook-f"></i></a>
                            <a href="#" class="text-white me-3"><i class="fab fa-twitter"></i></a>
                            <a href="#" class="text-white me-3"><i class="fab fa-instagram"></i></a>
                            <a href="#" class="text-white"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <!-- Scripts -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        
        <script>
            // Counter Animation
            function animateCounters() {
                $('.counter').each(function() {
                    const $this = $(this);
                    const countTo = $this.attr('data-count');
                    
                    $({ countNum: $this.text() }).animate({
                        countNum: countTo
                    }, {
                        duration: 2000,
                        easing: 'linear',
                        step: function() {
                            $this.text(Math.floor(this.countNum));
                        },
                        complete: function() {
                            $this.text(this.countNum + '+');
                        }
                    });
                });
            }

            // Smooth scrolling for navigation links
            $('a[href^="#"]').on('click', function(event) {
                var target = $(this.getAttribute('href'));
                if (target.length) {
                    event.preventDefault();
                    $('html, body').stop().animate({
                        scrollTop: target.offset().top - 70
                    }, 1000);
                }
            });

            // Add navbar background on scroll
            $(window).scroll(function() {
                if ($(this).scrollTop() > 50) {
                    $('.navbar').addClass('scrolled');
                } else {
                    $('.navbar').removeClass('scrolled');
                }
            });

            // Trigger counter animation when stats section is in view
            $(window).scroll(function() {
                if ($('.stats-section').length) {
                    var hT = $('.stats-section').offset().top,
                        hH = $('.stats-section').outerHeight(),
                        wH = $(window).height(),
                        wS = $(this).scrollTop();
                    if (wS > (hT + hH - wH) && !$('.stats-section').hasClass('animated')) {
                        $('.stats-section').addClass('animated');
                        animateCounters();
                    }
                }
            });

            // Add loading animation
            $(window).on('load', function() {
                $('.animate__animated').each(function(i) {
                    $(this).delay(i * 100).queue(function(next) {
                        $(this).addClass('animate__fadeInUp');
                        next();
                    });
                });
            });
        </script>
    </body>
</html>