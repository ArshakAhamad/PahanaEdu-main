<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Book - Pahana Edu Bookshop</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        body {
              background-image: url('https://images.unsplash.com/photo-1481627834876-b7833e8f5570?ixlib=rb-4.0.3&auto=format&fit=crop&w=2070&q=80'); 
      background-size: cover;
      background-position: center; 
      background-repeat: no-repeat; 
      height: 100vh; 
      
        background-color: #f8f9fa;
        min-height: 100vh;
        display: flex;
        flex-direction: column;
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
            background-color:rgba(255, 255, 255, 0.9);
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
            <a class="link-secondary nav-link" aria-current="page" href="VehicleController">
                <i class="fas fa-list me-2"></i>Book Catalog
            </a>
        </li>
        <li class="nav-item">
            <a class="link-secondary nav-link" href="Search-Vehicle-Details.jsp">
                <i class="fas fa-search me-2"></i>Search & Update Book
            </a>
        </li>
        <li class="nav-item">
            <a class="text-white nav-link" href="VehicleController?type=loadDrivers">
                <i class="fas fa-plus me-2"></i>Add Book
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
                        <i class="fas fa-book-plus me-2"></i>Add New Book
                    </h3>
                    <form method="post" action="VehicleController">
                       <div class="mb-3">
                            <label for="vehicleID" class="form-label">Book ID:</label>
                            <input type="text" class="form-control" id="vehicleID" name="vehicleID" placeholder="Enter book ID" required/>
                        </div>
                        <div class="mb-3">
                            <label for="vehicleName" class="form-label">Book Title:</label>
                            <input type="text" class="form-control" id="vehicleName" name="vehicleName" placeholder="Enter book title" required/>
                        </div>
                       
                    <div class="mb-3">
    <label for="image" class="form-label">Cover Image Name:</label>
    <div class="input-group">
        <input type="text" class="form-control" id="image" name="image" placeholder="Enter image filename">
        <button type="button" class="btn btn-outline-secondary" onclick="document.getElementById('imagePreview').click()">
            <i class="fas fa-folder-open"></i> Browse
        </button>
    </div>
    <input type="file" id="imagePreview" style="display:none" accept="image/*" onchange="document.getElementById('image').value = this.files[0].name">
</div>
                        
                        <div class="mb-3">
                            <label for="category" class="form-label">Category:</label>
                            <select class="form-control" id="category" name="category" required>
                                <option value="">-- Select Category --</option>
                                <option value="Mathematics">Mathematics</option>
                                <option value="Science">Science</option>
                                <option value="Literature">Literature</option>
                                <option value="History">History</option>
                                <option value="Languages">Languages</option>
                                <option value="Reference">Reference</option>
                            </select>
                        </div>
                        
                        <div class="mb-3">
                            <label for="monthFee" class="form-label">Price (LKR):</label>
                            <input type="number" class="form-control" id="monthFee" name="monthFee" placeholder="Enter book price" min="0" step="0.01" required/>
                        </div>
                        
                        <div class="mb-3">
                                    <label for="driverID">Assign Staff:</label>
                                    <select class="form-control" id="driverID" name="driverID" required>
                                        <option value="">-- Select Staff Member --</option>

                                        <c:choose>
                                            <c:when test="${not empty sessionScope.driverList}">
                                                <c:forEach var="driver" items="${sessionScope.driverList}">
                                                    <option value="${driver.driverID}">${driver.firstName} ${driver.lastName} (ID: ${driver.driverID})</option>

                                                </c:forEach>
                                            </c:when>
                                        </c:choose>
                                    </select>
                                </div>

                                <!-- Display staff details dynamically -->
                                <div id="driverDetails" style="display:none; border:1px solid #ccc; padding:10px; margin-top:10px; border-radius: 5px; background-color: #f8f9fa;">
                                    <h6><strong>Staff Details:</strong></h6>
                                    <p><strong>Name:</strong> <span id="driverName"></span></p>
                                    <p><strong>Employee Number:</strong> <span id="licenseNumber"></span></p>
                                </div>

                        <input type="hidden" name="type" value="add"/>
                        <div class="mb-3">
                            <button type="submit" class="btn btn-primary btn-register">
                                <i class="fas fa-save me-2"></i>Add Book to Catalog
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
        <script>
            $(document).ready(function() {
                $("#driverID").change(function() {
                    var driverID = $(this).val();
                    if (driverID) {
                        $.ajax({
                            url: "DriverController",
                            type: "GET",
                            data: { type: "fetchDriver", driverId: driverID },
                            success: function(response) {
                                var driver = JSON.parse(response);
                                if (driver) {
                                    $("#driverName").text(driver.firstName + " " + driver.lastName);
                                    $("#licenseNumber").text(driver.licenseNumber);
                                    $("#driverDetails").show();
                                } else {
                                    $("#driverDetails").hide();
                                }
                            },
                            error: function() {
                                alert("Error fetching staff details.");
                            }
                        });
                    } else {
                        $("#driverDetails").hide();
                    }
                });
            });
        </script>

        <script>
            var message = "<%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>";
            if (message.trim() !== "") {
                alert(message);
            }
        </script>
    </body>
</html>