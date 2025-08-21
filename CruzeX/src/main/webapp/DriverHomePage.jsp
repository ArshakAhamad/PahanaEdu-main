<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff Dashboard - Pahana Edu Bookshop</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>

    <header>
<nav class="navbar navbar-expand-lg navbar-light">
  <div class="container-fluid">
      <div class="navbar-brand">
          <i class="fas fa-book-open brand-icon"></i>
          <span class="brand-text">Pahana Edu</span>
      </div>
    <button style="margin:0 30px;" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="margin:0 50px;">
      <div class="navbar-nav">
        <a class="nav-link active mx-0 mx-md-3 fs-6" aria-current="page" href="DriverHomePage.jsp">
            <i class="fas fa-home me-2"></i>Home
        </a>
        <a class="nav-link mx-0 mx-md-3 fs-6" href="BookingController?type=getAllBookings">
            <i class="fas fa-shopping-bag me-2"></i>Manage Orders
        </a>
        <a class="nav-link mx-0 mx-md-3 fs-6" href="VehicleDashboard.jsp">
            <i class="fas fa-book me-2"></i>Manage Books
        </a>
        <a class="nav-link mx-0 mx-md-3 fs-6" href="CustomerController?type=getAllCustomers">
            <i class="fas fa-users me-2"></i>Manage Customers
        </a>
        <a class="nav-link mx-0 mx-md-3 fs-6" href="QueryController?type=getAllQueries">
            <i class="fas fa-question-circle me-2"></i>Customer Queries
        </a>
        <a class="nav-link mx-0 mx-md-3 fs-6 logout-btn" href="StaffLogout.jsp">
            <i class="fas fa-sign-out-alt me-2"></i>Logout
        </a>
      </div>
    </div>
  </div>
</nav>
    </header>
    
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active" style="height: 450px">
        <img src="https://images.unsplash.com/photo-1481627834876-b7833e8f5570?ixlib=rb-4.0.3&auto=format&fit=crop&w=2070&q=80" class="d-block w-100" alt="Bookshop Interior" style="height: 100%; object-fit:cover; filter: brightness(0.5);">
      <div class="carousel-caption d-none d-md-block">
        <h5 class="display-1 fw-bolder text-capitalize">Staff Portal</h5> 
        <p class="lead">Welcome to your bookshop management dashboard</p>
      </div>
    </div>
    <div class="carousel-item" style="height: 450px">
        <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&auto=format&fit=crop&w=1470&q=80" class="d-block w-100" alt="Books Collection" style="height: 100%; object-fit:cover; filter: brightness(0.6);">
      <div class="carousel-caption d-none d-md-block">
        <h5 class="display-1 fw-bolder text-capitalize">Book Management</h5>
        <p class="lead">Efficiently manage inventory and customer orders</p>
      </div>
    </div>
    <div class="carousel-item" style="height: 450px">
        <img src="https://images.unsplash.com/photo-1524995997946-a1c2e315a42f?ixlib=rb-4.0.3&auto=format&fit=crop&w=1470&q=80" class="d-block w-100" alt="Modern Library" style="height: 100%; object-fit:cover; filter: brightness(0.6);">
      <div class="carousel-caption d-none d-md-block">
        <h5 class="display-1 fw-bolder text-capitalize">Customer Service</h5>
        <p class="lead">Provide excellent support and assistance</p>
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

<!-- Staff Dashboard Section -->
<div class="container mt-5">
    <div class="row">
        <div class="col-12">
            <div class="welcome-card">
                <h2><i class="fas fa-tachometer-alt me-3"></i>Staff Dashboard</h2>
                <p>Welcome to Pahana Edu Bookshop Staff Portal</p>
            </div>
        </div>
    </div>
    <br>
    <div class="row g-4 mb-5">
        <div class="col-lg-3 col-md-6">
            <div class="stat-card" onclick="location.href='BookingController?type=getAllBookings'">
                <div class="stat-icon orders">
                    <i class="fas fa-shopping-bag"></i>
                </div>
                <div class="stat-content">
                    <h3>35</h3>
                    <p>Pending Orders</p>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="stat-card" onclick="location.href='BookController?type=getAllBooks'">
                <div class="stat-icon books">
                    <i class="fas fa-book"></i>
                </div>
                <div class="stat-content">
                    <h3>1,250</h3>
                    <p>Books in Stock</p>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="stat-card" onclick="location.href='CustomerController?type=getAllCustomers'">
                <div class="stat-icon customers">
                    <i class="fas fa-users"></i>
                </div>
                <div class="stat-content">
                    <h3>89</h3>
                    <p>Active Customers</p>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="stat-card" onclick="location.href='QueryController?type=getAllQueries'">
                <div class="stat-icon queries">
                    <i class="fas fa-question-circle"></i>
                </div>
                <div class="stat-content">
                    <h3>12</h3>
                    <p>New Queries</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Quick Actions Section -->
    <div class="row mb-4">
        <div class="col-12">
            <div class="quick-actions-card">
                <h4><i class="fas fa-bolt me-2"></i>Quick Actions</h4>
                <div class="row mt-3">
                    <div class="col-md-3 col-sm-6 mb-3">
                        <a href="Add-Vehicle-Details.jsp" class="btn btn-primary btn-block quick-btn">
                            <i class="fas fa-plus me-2"></i>Add New Book
                        </a>
                    </div>
                    <div class="col-md-3 col-sm-6 mb-3">
                        <a href="BookingController?type=getPendingBookings" class="btn btn-warning btn-block quick-btn">
                            <i class="fas fa-clock me-2"></i>Process Orders
                        </a>
                    </div>
                    <div class="col-md-3 col-sm-6 mb-3">
                        <a href="CustomerController?type=getActiveCustomers" class="btn btn-success btn-block quick-btn">
                            <i class="fas fa-user-plus me-2"></i>Customer Support
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    
<style>
:root {
    --primary-color: #2c5aa0;
    --secondary-color: #f8f9fa;
    --accent-color: #28a745;
    --text-color: #333;
    --border-color: #dee2e6;
}

/* Navbar Styling */
.navbar {
    background: linear-gradient(135deg, var(--primary-color), #1e4080) !important;
    box-shadow: 0 4px 15px rgba(0,0,0,0.2);
    padding: 0.75rem 1.5rem;
}

.navbar-brand {
    display: flex;
    align-items: center;
    color: white !important;
    text-decoration: none;
}

.brand-icon {
    font-size: 2.5rem;
    color: white;
    margin: 0 15px 0 35px;
}

.brand-text {
    font-size: 1.8rem;
    font-weight: bold;
    color: white !important;
    margin: 0;
}

.navbar .navbar-nav .nav-link {
    font-weight: 500;
    color: #ffffff !important;
    transition: all 0.3s ease;
    border-radius: 8px;
    margin: 0 2px;
}

.navbar .navbar-nav .nav-link:hover,
.navbar .navbar-nav .nav-link.active {
    color: #ffd700 !important;
    background-color: rgba(255, 255, 255, 0.1);
    transform: translateY(-2px);
}

.logout-btn {
    background-color: rgba(220, 53, 69, 0.2) !important;
    border-left: 3px solid #dc3545 !important;
}

.logout-btn:hover {
    background-color: rgba(220, 53, 69, 0.3) !important;
    color: #ff6b7a !important;
}

/* Welcome Card */
.welcome-card {
    background: linear-gradient(135deg, white, #f8f9fa);
    padding: 2rem;
    border-radius: 15px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.1);
    text-align: center;
    border-left: 5px solid var(--primary-color);
}

.welcome-card h2 {
    color: var(--primary-color);
    font-weight: bold;
    margin-bottom: 0.5rem;
}

.welcome-card p {
    color: #6c757d;
    font-size: 1.1rem;
    margin: 0;
}

/* Stats Cards */
.stat-card {
    background: white;
    border-radius: 15px;
    padding: 1.5rem;
    box-shadow: 0 10px 30px rgba(0,0,0,0.1);
    transition: all 0.3s ease;
    border: none;
    height: 100%;
    display: flex;
    align-items: center;
    cursor: pointer;
}

.stat-card:hover {
    transform: translateY(-10px);
    box-shadow: 0 20px 40px rgba(0,0,0,0.15);
}

.stat-icon {
    width: 70px;
    height: 70px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    color: white;
    font-size: 1.8rem;
    margin-right: 1.5rem;
}

.stat-icon.orders {
    background: linear-gradient(135deg, var(--primary-color), #1e4080);
}

.stat-icon.books {
    background: linear-gradient(135deg, var(--accent-color), #20c997);
}

.stat-icon.customers {
    background: linear-gradient(135deg, #6f42c1, #5a189a);
}

.stat-icon.queries {
    background: linear-gradient(135deg, #fd7e14, #e55100);
}

.stat-content h3 {
    font-size: 2rem;
    font-weight: bold;
    color: var(--primary-color);
    margin-bottom: 0.5rem;
}

.stat-content p {
    color: #6c757d;
    margin: 0;
    font-weight: 500;
}

/* Quick Actions Card */
.quick-actions-card {
    background: white;
    border-radius: 15px;
    padding: 2rem;
    box-shadow: 0 10px 30px rgba(0,0,0,0.1);
    border-top: 4px solid var(--primary-color);
}

.quick-actions-card h4 {
    color: var(--primary-color);
    font-weight: bold;
    margin-bottom: 1rem;
}

.quick-btn {
    width: 100%;
    padding: 0.75rem;
    border-radius: 10px;
    font-weight: 500;
    transition: all 0.3s ease;
}

.quick-btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 5px 15px rgba(0,0,0,0.2);
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
    margin-bottom: 1rem;
}

.carousel-caption p {
    font-size: 1.2rem;
    color: #f8f9fa;
}

/* Animations */
@keyframes fadeInUp {
  from { opacity: 0; transform: translateY(20px); }
  to   { opacity: 1; transform: translateY(0); }
}

/* Responsive fix */
@media (max-width: 768px) {
    .carousel-caption h5 {
        font-size: 2rem;
    }

    .brand-icon {
        margin: 0 10px 0 20px;
        font-size: 2rem;
    }

    .brand-text {
        font-size: 1.4rem;
    }

    .stat-card {
        flex-direction: column;
        text-align: center;
    }

    .stat-icon {
        margin-right: 0;
        margin-bottom: 1rem;
    }

    .welcome-card {
        padding: 1.5rem;
    }

    .welcome-card h2 {
        font-size: 1.8rem;
    }

    .quick-actions-card {
        padding: 1.5rem;
    }
}
</style>

</body>
</html>