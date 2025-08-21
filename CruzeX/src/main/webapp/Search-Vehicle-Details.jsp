<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search and Update Book - Pahana Edu Bookshop</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
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
            <a class="link-warning nav-link px-5 mx-5" href="AdminHomePage.jsp">
                <i class="fas fa-arrow-left me-2"></i>Go to Home
            </a>
        </li>
        <li class="nav-item">
            <a class="link-secondary nav-link" href="VehicleDashboard.jsp">
                <i class="fas fa-list me-2"></i>Book Catalog
            </a>
        </li>
        <li class="nav-item">
            <a class="text-white nav-link" href="Search-Vehicle-Details.jsp">
                <i class="fas fa-search me-2"></i>Search & Update Book
            </a>
        </li>
        <li class="nav-item">
            <a class="link-secondary nav-link" href="Add-Vehicle-Details.jsp">
                <i class="fas fa-plus me-2"></i>Add Book
            </a>
        </li>
    </ul>

    <div class="container mt-5">
        <div class="row">
            <!-- Search Section -->
            <div class="col-md-6">
                <h3><i class="fas fa-search me-2"></i>Search Book</h3>
                <form method="get" action="VehicleController">
                    <div class="mb-3">
                        <label for="vehicleId">Enter Book ID:</label>
                        <input type="text" class="form-control" id="vehicleId" name="vehicleId" placeholder="Enter Book ID" required>
                        <input type="hidden" name="type" value="getSpecificVehicle">
                    </div>
                    <button type="submit" class="btn btn-info">
                        <i class="fas fa-search me-1"></i>Search Book
                    </button>
                </form>
                <br/>
                <p class="text-muted">${searchResult}</p>
            </div>

            <!-- Edit Section -->
            <div class="col-md-6">
                <h3><i class="fas fa-edit me-2"></i>Edit Book</h3>
               
                <form method="post" action="VehicleController?type=updateVehicle" enctype="multipart/form-data">

                    <div class="mb-3">
                        <label for="vehicleId">Book ID:</label>
                        <input type="text" readonly class="form-control" id="vehicleId" name="vehicleId" 
                               value="${vehicle != null ? vehicle.vehicleID : ''}"/>
                    </div>

                    <div class="mb-3">
                        <label for="vehicleName">Book Title:</label>
                        <input type="text" class="form-control" id="vehicleName" name="vehicleName" 
                               value="${vehicle != null ? vehicle.vehicleName : ''}" placeholder="Enter book title"/>
                    </div>

                    <div class="mb-3">
                        <label for="category">Category:</label>
                        <input type="text" class="form-control" id="category" name="category" 
                               value="${vehicle != null ? vehicle.category : ''}" placeholder="Enter book category"/>
                    </div>
                    
                    <div class="mb-3">
                        <label for="image">Upload New Cover Image:</label>
                        <input type="file" class="form-control" id="image" name="image"/>
                        <c:if test="${vehicle != null && not empty vehicle.image}">
                            <p class="text-muted">Current Cover Image:</p>
                            <img src="img/car/${vehicle.image}" alt="Current Book Cover" class="img-thumbnail" width="150"/>
                        </c:if>
                    </div>

                    <div class="mb-3">
                        <label for="monthFee">Price (LKR):</label>
                        <input type="number" class="form-control" id="monthFee" name="monthFee" 
                               value="${vehicle != null ? vehicle.monthFee : ''}" placeholder="Enter book price"/>
                    </div>

                    <div class="mb-3">
                        <label for="driverID">Staff ID:</label>
                        <input type="number" class="form-control" id="driverID" name="driverID" 
                               value="${vehicle != null ? vehicle.driverID : ''}" placeholder="Enter staff ID"/>
                    </div>

                    <button type="submit" class="btn btn-warning">
                        <i class="fas fa-save me-1"></i>Update Book
                    </button>
                    
                </form>
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