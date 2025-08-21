<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Dashboard - Pahana Edu Bookshop</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
      <div class="d-flex align-items-center">
          <i class="fas fa-book-open" style="font-size: 3rem; color: #2c5aa0; margin: 0 15px 0 50px;"></i>
          <p class="fw-bold fs-4 mt-3" style="color: #2c5aa0;">Pahana Edu</p>
      </div>
    <button style="margin:0 30px;" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="margin:0 50px;">
      <div class="navbar-nav" style="#ffff">
          <a class="nav-link active mx-0 mx-md-3 fs-6" aria-current="page" href="CruzeXHome.jsp">
              <i class="fas fa-home me-2"></i>Home
          </a>
          <a class="nav-link mx-0 mx-md-3 fs-6" href="Add-Booking.jsp">
              <i class="fas fa-plus-circle me-2"></i>Add Order
          </a>
        <a class="nav-link mx-0 mx-md-3 fs-6" href="PaymentDashboard.jsp">
            <i class="fas fa-credit-card me-2"></i>Make Payment
        </a>
        <a class="nav-link mx-0 mx-md-3 fs-6" href="VehicleController?type=customer">
            <i class="fas fa-book me-2"></i>View Books
        </a>
        <a class="nav-link mx-0 mx-md-3 fs-6" href="QueryForm.jsp">
            <i class="fas fa-question-circle me-2"></i>Support
        </a>
        <a class="nav-link mx-0 mx-md-3 fs-6" href="customer-logout.jsp">
            <i class="fas fa-sign-out-alt me-2"></i>Logout
        </a>
      </div>
    </div>
  </div>
</nav>

<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active" style="height: 450px">
        <img src="https://images.unsplash.com/photo-1481627834876-b7833e8f5570?ixlib=rb-4.0.3&auto=format&fit=crop&w=2070&q=80" 
             class="d-block w-100" alt="Bookshop Interior" style="height: 100%; object-fit:cover; filter: brightness(0.5);">
      <div class="carousel-caption d-none d-md-block">
        <h5 class="animate__animated animate__fadeInUp">Welcome to Pahana Edu</h5>
        <p class="animate__animated animate__fadeInUp animate__delay-1s">Your trusted bookshop in Colombo</p>
      </div>
    </div>
    <div class="carousel-item" style="height: 450px">
        <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&auto=format&fit=crop&w=1470&q=80" 
             class="d-block w-100" alt="Books Collection" style="height: 100%; object-fit:cover; filter: brightness(0.6);">
      <div class="carousel-caption d-none d-md-block">
        <h5 class="animate__animated animate__fadeInUp">Extensive Book Collection</h5>
        <p class="animate__animated animate__fadeInUp animate__delay-1s">Educational materials for every need</p>
      </div>
    </div>
    <div class="carousel-item" style="height: 450px">
        <img src="https://images.unsplash.com/photo-1524995997946-a1c2e315a42f?ixlib=rb-4.0.3&auto=format&fit=crop&w=1470&q=80" 
             class="d-block w-100" alt="Reading Space" style="height: 100%; object-fit:cover; filter: brightness(0.6);">
      <div class="carousel-caption d-none d-md-block">
        <h5 class="animate__animated animate__fadeInUp">Digital Management</h5>
        <p class="animate__animated animate__fadeInUp animate__delay-1s">Modern solutions for book lovers</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<!-- Quick Actions Section -->
<section class="py-5" style="background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);">
    <div class="container">
        <div class="row text-center mb-4">
            <div class="col">
                <h2 class="fw-bold" style="color: #2c5aa0;">
                    <i class="fas fa-tachometer-alt me-3"></i>Customer Dashboard
                </h2>
                <p class="lead text-muted">Manage your account and explore our services</p>
            </div>
        </div>
        
        <div class="row g-4">
            <div class="col-lg-3 col-md-6">
                <div class="card h-100 border-0 shadow-sm quick-action-card">
                    <div class="card-body text-center p-4">
                        <div class="icon-circle mb-3">
                            <i class="fas fa-plus-circle"></i>
                        </div>
                        <h5 class="card-title">Place Order</h5>
                        <p class="card-text text-muted">Browse and order books from our extensive collection</p>
                        <a href="Add-Booking.jsp" class="btn btn-primary">
                            <i class="fas fa-shopping-cart me-2"></i>Order Now
                        </a>
                    </div>
                </div>
            </div>
            
            <div class="col-lg-3 col-md-6">
                <div class="card h-100 border-0 shadow-sm quick-action-card">
                    <div class="card-body text-center p-4">
                        <div class="icon-circle mb-3" style="background: linear-gradient(135deg, #28a745, #20c997);">
                            <i class="fas fa-credit-card"></i>
                        </div>
                        <h5 class="card-title">Make Payment</h5>
                        <p class="card-text text-muted">Secure payment processing for your orders</p>
                        <a href="PaymentDashboard.jsp" class="btn btn-success">
                            <i class="fas fa-money-bill-wave me-2"></i>Pay Now
                        </a>
                    </div>
                </div>
            </div>
            
            <div class="col-lg-3 col-md-6">
                <div class="card h-100 border-0 shadow-sm quick-action-card">
                    <div class="card-body text-center p-4">
                        <div class="icon-circle mb-3" style="background: linear-gradient(135deg, #17a2b8, #138496);">
                            <i class="fas fa-book"></i>
                        </div>
                        <h5 class="card-title">Browse Books</h5>
                        <p class="card-text text-muted">Explore our comprehensive book catalog</p>
                        <a href="VehicleController?type=customer" class="btn btn-info text-white">
                            <i class="fas fa-search me-2"></i>Browse
                        </a>
                    </div>
                </div>
            </div>
            
            <div class="col-lg-3 col-md-6">
                <div class="card h-100 border-0 shadow-sm quick-action-card">
                    <div class="card-body text-center p-4">
                        <div class="icon-circle mb-3" style="background: linear-gradient(135deg, #ffc107, #fd7e14);">
                            <i class="fas fa-question-circle"></i>
                        </div>
                        <h5 class="card-title">Get Support</h5>
                        <p class="card-text text-muted">Contact us for any queries or assistance</p>
                        <a href="QueryForm.jsp" class="btn btn-warning">
                            <i class="fas fa-headset me-2"></i>Contact
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Account Summary Section -->
<section class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="card border-0 shadow-sm">
                    <div class="card-header bg-white border-bottom">
                        <h5 class="mb-0">
                            <i class="fas fa-chart-line me-2" style="color: #2c5aa0;"></i>Account Overview
                        </h5>
                    </div>
                    <div class="card-body">
                        <div class="row g-4">
                            <div class="col-md-4">
                                <div class="stat-item text-center">
                                    <div class="stat-icon mb-2">
                                        <i class="fas fa-shopping-bag"></i>
                                    </div>
                                    <h4 class="stat-number">12</h4>
                                    <p class="text-muted mb-0">Total Orders</p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="stat-item text-center">
                                    <div class="stat-icon mb-2" style="color: #28a745;">
                                        <i class="fas fa-check-circle"></i>
                                    </div>
                                    <h4 class="stat-number">8</h4>
                                    <p class="text-muted mb-0">Completed</p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="stat-item text-center">
                                    <div class="stat-icon mb-2" style="color: #ffc107;">
                                        <i class="fas fa-clock"></i>
                                    </div>
                                    <h4 class="stat-number">4</h4>
                                    <p class="text-muted mb-0">Pending</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="col-lg-4">
                <div class="card border-0 shadow-sm">
                    <div class="card-header bg-white border-bottom">
                        <h5 class="mb-0">
                            <i class="fas fa-user me-2" style="color: #2c5aa0;"></i>Account Info
                        </h5>
                    </div>
                    <div class="card-body">
                        <div class="d-flex align-items-center mb-3">
                            <div class="avatar-circle me-3">
                                <i class="fas fa-user"></i>
                            </div>
                            <div>
                                <h6 class="mb-0">Welcome Back!</h6>
                                <small class="text-muted">Customer Account</small>
                            </div>
                        </div>
                        <div class="account-status">
                            <div class="d-flex justify-content-between mb-2">
                                <span>Account Status:</span>
                                <span class="badge bg-success">Active</span>
                            </div>
                            <div class="d-flex justify-content-between">
                                <span>Member Since:</span>
                                <span class="text-muted">Jan 2025</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<style>
/* Navbar Styling */
.navbar {
    background-color: #fff !important;
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
    padding: 0.75rem 1.5rem;
}

.navbar .navbar-nav .nav-link {
    font-weight: 500;
    color: #333 !important;
    transition: all 0.3s ease-in-out;
    border-radius: 8px;
    margin: 0 5px;
}

.navbar .navbar-nav .nav-link:hover,
.navbar .navbar-nav .nav-link.active {
    color: #2c5aa0 !important;
    font-weight: 600;
    background-color: rgba(44, 90, 160, 0.1);
}

/* Brand name */
.navbar p {
    font-size: 1.8rem;
    color: #2c5aa0 !important;
    margin-bottom: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

/* Carousel */
.carousel-item {
    position: relative;
    height: 450px;
    overflow: hidden;
}

.carousel-item img {
    object-fit: cover;
    width: 100%;
    height: 100%;
    filter: brightness(0.4);
}

.carousel-caption {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    text-shadow: 2px 2px 5px rgba(0,0,0,0.8);
}

.carousel-caption h5 {
    font-size: 3rem;
    color: white;
    font-weight: bold;
    animation: fadeInUp 1s ease-out;
}

.carousel-caption p {
    font-size: 1.2rem;
    color: #f8f9fa;
}

/* Quick Action Cards */
.quick-action-card {
    transition: all 0.3s ease;
    border-radius: 15px !important;
}

.quick-action-card:hover {
    transform: translateY(-10px);
    box-shadow: 0 15px 35px rgba(0,0,0,0.15) !important;
}

.icon-circle {
    width: 80px;
    height: 80px;
    border-radius: 50%;
    background: linear-gradient(135deg, #2c5aa0, #1e4080);
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 0 auto;
    color: white;
    font-size: 2rem;
    box-shadow: 0 10px 25px rgba(44, 90, 160, 0.3);
}

/* Stats */
.stat-item {
    padding: 1rem;
}

.stat-icon {
    font-size: 2rem;
    color: #2c5aa0;
}

.stat-number {
    font-size: 2.5rem;
    font-weight: bold;
    color: #2c5aa0;
    margin-bottom: 0.5rem;
}

.avatar-circle {
    width: 50px;
    height: 50px;
    border-radius: 50%;
    background: linear-gradient(135deg, #2c5aa0, #1e4080);
    display: flex;
    align-items: center;
    justify-content: center;
    color: white;
    font-size: 1.2rem;
}

.account-status .badge {
    font-size: 0.75rem;
}

/* Animations */
@keyframes fadeInUp {
  from { opacity: 0; transform: translateY(20px); }
  to   { opacity: 1; transform: translateY(0); }
}

/* Button Styling */
.btn {
    border-radius: 10px;
    font-weight: 500;
    padding: 0.6rem 1.5rem;
    transition: all 0.3s ease;
}

.btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 20px rgba(0,0,0,0.2);
}

/* Card Styling */
.card {
    border-radius: 15px !important;
}

.card-header {
    border-radius: 15px 15px 0 0 !important;
}

/* Responsive fix */
@media (max-width: 768px) {
    .carousel-caption h5 {
        font-size: 2rem;
    }

    .carousel-caption p {
        font-size: 1rem;
    }

    .navbar p {
        font-size: 1.3rem;
    }
    
    .icon-circle {
        width: 60px;
        height: 60px;
        font-size: 1.5rem;
    }
    
    .stat-number {
        font-size: 2rem;
    }
}
</style>
</body>
</html>