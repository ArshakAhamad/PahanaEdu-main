<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <title>Search and Update Staff - Pahana Edu Bookshop</title>
    <style>
        /* Custom Styles */
        .left-section {
            float: left;
            width: 50%;
        }
        .right-section {
            float: right;
            width: 50%;
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
        
        .nav-link {
            color: #ffffff;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <!-- Navigation Bar -->
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
                <a class="link-secondary nav-link" aria-current="page" href="DriverDashboard.jsp">
                    <i class="fas fa-list me-2"></i>Staff List
                </a>
            </li>
            <li class="nav-item">
                <a class="text-white nav-link" href="Search-Driver-Details.jsp">
                    <i class="fas fa-search me-2"></i>Search & Update Staff
                </a>
            </li>
            <li class="nav-item">
                <a class="link-secondary nav-link" href="Add-Driver-Details.jsp">
                    <i class="fas fa-plus me-2"></i>Add Staff
                </a>
            </li>
        </ul>
        <br/>
        <br/>
        <!-- Main Content -->
        <div class="container">
            <div class="left-section">
                <!-- Search Staff Section -->
                <h3><i class="fas fa-search me-2"></i>Search Staff</h3>
                <br/>
                <form method="get" action="DriverController">
                    <label>Enter Staff ID:</label>
                    <input type="text" class="form-control" name="driverId" placeholder="Enter Staff ID">
                    <input type="hidden" name="type" value="specific">
                    <br/>
                    <button type="submit" class="btn btn-info">
                        <i class="fas fa-search me-1"></i>Search Staff
                    </button>            
                </form>
                <br/>
                <p>${searchResult}</p>
            </div>
            <div class="right-section">
                <!-- Edit Staff Section -->
                <h3><i class="fas fa-edit me-2"></i>Edit Staff</h3>
                <br/>
                <form method="post" action="DriverController">
                    <label for="driverId">Staff ID:</label>
                    <input type="text" readonly class="form-control" id="driverId" name="driverId" value="${not empty driver ? driver.driverID : ''}"/>
                    <br/>
                    <label for="firstName">First Name:</label>
                    <input type="text" class="form-control" id="firstName" name="firstName" value="${not empty driver ? driver.firstName : ''}"/>
                    <br/>
                    <label for="lastName">Last Name:</label>
                    <input type="text" class="form-control" id="lastName" name="lastName" value="${not empty driver ? driver.lastName : ''}"/>
                    <br/>
                    <label for="licenseNumber">Employee Number:</label>
                    <input type="text" class="form-control" id="licenseNumber" name="licenseNumber" value="${not empty driver ? driver.licenseNumber : ''}"/>
                    <br/>
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" id="email" name="email" value="${not empty driver ? driver.email : ''}"/>
                    <input type="hidden" name="type" value="update"/>
                    <br/>
                    <button type="submit" class="btn btn-warning">
                        <i class="fas fa-save me-1"></i>Update Staff
                    </button>            
                </form> 
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