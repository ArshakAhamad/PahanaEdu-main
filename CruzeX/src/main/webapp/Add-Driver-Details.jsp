<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Staff - Pahana Edu Bookshop</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container-fluid {
            padding-top: 20px;
        }
        .nav-link {
            color: #ffffff;
        }
        .nav-link:hover {
            color: #ffc107;
        }
        .form-label {
            font-weight: bold;
        }
        .btn-register {
            width: 100%;
        }
        .form-container {
            background-color: #fff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        
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
    </style>
</head>
<body>
<div class="container-fluid">
    <ul class="nav justify-content-center navbar-custom py-2">
        <div class="brand-section">
            <i class="fas fa-book-open brand-icon"></i>
            <span class="brand-text">Pahana Edu</span>
        </div>
        
        <li class="nav-item">
            <a class="link-warning nav-link px-5 mx-5" aria-current="page" href="AdminHomePage.jsp">
                <i class="fas fa-arrow-left me-2"></i>Go to Home
            </a>
        </li>
        <li class="nav-item">
            <a class="link-secondary nav-link" href="DriverDashboard.jsp">
                <i class="fas fa-list me-2"></i>Staff List
            </a>
        </li>
        <li class="nav-item">
            <a class="link-secondary nav-link" href="Search-Driver-Details.jsp">
                <i class="fas fa-search me-2"></i>Search & Update Staff
            </a>
        </li>
        <li class="nav-item">
            <a class="text-white nav-link" href="Add-Driver-Details.jsp">
                <i class="fas fa-plus me-2"></i>Add Staff
            </a>
        </li>
    </ul>
    <br/>
    <br/>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="form-container">
                    <h3 class="text-center mb-4">
                        <i class="fas fa-user-plus me-2"></i>Register New Staff
                    </h3>
                    <form method="post" action="DriverController">
                        <div class="mb-3">
                            <label for="firstName" class="form-label">First Name:</label>
                            <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Enter first name" required/>
                        </div>
                        <div class="mb-3">
                            <label for="lastName" class="form-label">Last Name:</label>
                            <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Enter last name" required/>
                        </div>
                        <div class="mb-3">
                            <label for="licenseNumber" class="form-label">Employee Number:</label>
                            <input type="text" class="form-control" id="licenseNumber" name="licenseNumber" placeholder="Enter employee number" required/>
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email:</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Enter email address" required/>
                        </div>
                        <input type="hidden" name="type" value="add"/>
                        <div class="mb-3">
                            <button type="submit" class="btn btn-primary btn-register">
                                <i class="fas fa-save me-2"></i>Register Staff
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
    <script>
        var message = "<%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>";
        if (message.trim() !== "") {
            alert(message);
        }
    </script>
</body>
</html>