<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search and Update Customer - Pahana Edu Bookshop</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        /* Custom Styling */
        .container-fluid {
            padding: 20px;
        }
        .left-section {
            float: left;
            width: 50%;
            padding-right: 20px;
        }
        .right-section {
            float: right;
            width: 50%;
        }
        .form-container {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
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
            <a class="link-warning nav-link px-5 mx-5" href="AdminHomePage.jsp">
                <i class="fas fa-arrow-left me-2"></i>Go to Home
            </a>
        </li>
        <li class="nav-item">
            <a class="link-secondary nav-link" href="CustomerDashboard.jsp">
                <i class="fas fa-list me-2"></i>Customer List
            </a>
        </li>
        <li class="nav-item">
            <a class="text-white nav-link" href="SearchCustomer.jsp">
                <i class="fas fa-search me-2"></i>Search & Update Customer
            </a>
        </li>
        <li class="nav-item">
            <a class="link-secondary nav-link" href="Register.jsp">
                <i class="fas fa-user-plus me-2"></i>Add Customer
            </a>
        </li>
    </ul>

    <br/>

    <div class="container">
        <div class="row">
            <!-- Search Customer Section -->
            <div class="col-md-6">
                <div class="form-container">
                    <h3><i class="fas fa-search me-2"></i>Search Customer</h3>
                    <br/>
                    <form method="get" action="CustomerController?type=specific">
                        <label for="customerID">Enter Customer ID:</label>
                        <input type="text" class="form-control" name="customerID" id="customerID" placeholder="Enter Customer ID" required>
                        <input type="hidden" name="type" value="specific">
                        <br/>
                        <button type="submit" class="btn btn-info">
                            <i class="fas fa-search me-1"></i>Search Customer
                        </button>            
                    </form>
                    <br/>
                    <p class="text-danger">${message}</p>
                </div>
            </div>

            <!-- Edit Customer Section -->
            <div class="col-md-6">
                <div class="form-container">
                    <h3><i class="fas fa-edit me-2"></i>Edit Customer</h3>
                    <br/>
                    <form method="post" action="CustomerController">
                        <label for="customerID">Customer ID:</label>
                        <input type="text" readonly class="form-control" id="customerID" name="customerID" value="${not empty customer ? customer.customerID : ''}"/>
                        <br/>

                        <label for="customerFullName">Full Name:</label>
                        <input type="text" class="form-control" id="customerFullName" name="customerFullName" value="${not empty customer ? customer.customerFullName : ''}" placeholder="Enter full name" required/>
                        <br/>

                        <label for="customerPhoneNumber">Phone Number:</label>
                        <input type="text" class="form-control" id="customerPhoneNumber" name="customerPhoneNumber" value="${not empty customer ? customer.customerPhoneNumber : ''}" placeholder="Enter phone number" required/>
                        <br/>

                        <label for="dateOfBirth">Date of Birth:</label>
                        <input type="date" class="form-control" id="dateOfBirth" name="dateOfBirth" value="${not empty customer ? customer.dateOfBirth : ''}" required/>
                        <br/>

                        <label for="customerAddress">Address:</label>
                        <input type="text" class="form-control" id="customerAddress" name="customerAddress" value="${not empty customer ? customer.customerAddress : ''}" placeholder="Enter address" required/>
                        <br/>

                        <label for="gender">Gender:</label>
                        <select class="form-control" id="gender" name="gender" required>
                            <option value="">-- Select Gender --</option>
                            <option value="Male" ${customer.gender == 'Male' ? 'selected' : ''}>Male</option>
                            <option value="Female" ${customer.gender == 'Female' ? 'selected' : ''}>Female</option>
                            <option value="Other" ${customer.gender == 'Other' ? 'selected' : ''}>Other</option>
                        </select>
                        <br/>

                        <label for="customerEmail">Email:</label>
                        <input type="email" class="form-control" id="customerEmail" name="customerEmail" value="${not empty customer ? customer.customerEmail : ''}" placeholder="Enter email address" required/>
                        <br/>

                        <label for="customerUsername">Username:</label>
                        <input type="text" class="form-control" id="customerUsername" name="customerUsername" value="${not empty customer ? customer.customerUsername : ''}" placeholder="Enter username" required/>
                        <br/>

                        <label for="customerPassword">New Password:</label>
                        <input type="password" class="form-control" id="customerPassword" name="customerPassword" placeholder="Enter new password (optional)"/>
                        <small class="text-muted">Leave blank to keep current password</small>
                        <br/><br/>

                        <input type="hidden" name="type" value="update">
                        <button type="submit" class="btn btn-warning" onclick="debugForm()">
                            <i class="fas fa-save me-1"></i>Update Customer
                        </button>            
                    </form> 
                </div>
            </div>
        </div>      
    </div>

</div>

<!-- Alert Message -->
<script>
    var message = "<%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>";
    if (message.trim() !== "") {
        alert(message);
    }
    
    // Debug function to check form data
    function debugForm() {
        console.log("Form Debug:");
        console.log("Customer ID:", document.getElementById("customerID").value);
        console.log("Full Name:", document.getElementById("customerFullName").value);
        console.log("Phone:", document.getElementById("customerPhoneNumber").value);
        console.log("Email:", document.getElementById("customerEmail").value);
        console.log("Username:", document.getElementById("customerUsername").value);
        console.log("Gender:", document.getElementById("gender").value);
    }
</script>

</body>
</html>