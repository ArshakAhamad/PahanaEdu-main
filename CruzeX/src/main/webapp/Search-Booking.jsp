<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search and Update Order - Pahana Edu Bookshop</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            padding-top: 20px;
        }
        .nav-link {
            color: #ffffff;
        }
        .table th, .table td {
            vertical-align: middle;
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
            <a class="link-secondary nav-link" href="BookingDashboard.jsp">
                <i class="fas fa-list me-2"></i>All Orders
            </a>
        </li>
        <li class="nav-item">
            <a class="text-white nav-link" href="Search-Booking.jsp">
                <i class="fas fa-search me-2"></i>Search & Update
            </a>
        </li>
        
    </ul>
    <br/>

    <!-- Search & Update Order Form -->
    <div class="container form-group p-5 mx-5 mb-4 bg-light">
        <div class="row">
            <!-- Search Order -->
            <div class="col-md-6">
                <h3><i class="fas fa-search me-2"></i>Search Order</h3>
                <form method="get" action="BookingController?type=getSpecificBooking">
                    <div class="form-group">
                        <label>Enter Order ID:</label>
                        <input type="text" class="form-control" name="bookingID" placeholder="Enter Order ID" required>
                        <input type="hidden" name="type" value="specific">
                        <button type="submit" class="btn btn-info mt-2">
                            <i class="fas fa-search me-1"></i>Search Order
                        </button>
                    </div>
                </form>
                <br/>
                <p>${searchResult}</p>
            </div>

            <!-- Edit Order -->
            <div class="col-md-6">
                <h3><i class="fas fa-edit me-2"></i>Edit Order</h3>
                <form method="post" action="BookingController">
                    <label for="bookingID">Order ID:</label>
                    <input type="text" readonly class="form-control" id="bookingID" name="bookingID" value="${not empty booking ? booking.bookingID : ''}"/>
                    <br/>

                    <label for="customerID">Customer ID:</label>
                    <input type="text" class="form-control" id="customerID" name="customerID" value="${not empty booking ? booking.customerID : ''}" readonly/>
                    <br/>

                    <label for="vehicleID">Book ID:</label>
                    <input type="text" class="form-control" id="vehicleID" name="vehicleID" value="${not empty booking ? booking.vehicleID : ''}" readonly/>
                    <br/>

                    <label for="driverID">Staff ID:</label>
                    <input type="text" class="form-control" id="driverID" name="driverID" value="${not empty booking ? booking.driverID : ''}" readonly/>
                    <br/>

                    <label for="bookingDate">Order Date:</label>
                    <input type="date" class="form-control" id="bookingDate" name="bookingDate" value="${not empty booking ? booking.bookingDate : ''}" required/>
                    <br/>

                    <label for="bookingTime">Order Time:</label>
                    <input type="time" class="form-control" id="bookingTime" name="bookingTime" value="${not empty booking ? booking.bookingTime : ''}" required/>
                    <br/>

                    <label for="pickupLocation">Delivery Address:</label>
                    <input type="text" class="form-control" id="pickupLocation" name="pickupLocation" value="${not empty booking ? booking.pickupLocation : ''}" placeholder="Customer delivery address" required/>
                    <br/>

                    <label for="dropLocation">Store Location:</label>
                    <input type="text" class="form-control" id="dropLocation" name="dropLocation" value="${not empty booking ? booking.dropLocation : 'Pahana Edu Bookshop, Colombo 01'}" required/>
                    <br/>

                    <label for="distance">Quantity:</label>
                    <input type="text" class="form-control" id="distance" name="distance" value="${not empty booking ? booking.distance : ''}" placeholder="Number of books" readonly/>
                    <br/>

                    <label for="fare">Subtotal (LKR):</label>
                    <input type="text" class="form-control" id="fare" name="fare" value="${not empty booking ? booking.fare : ''}" readonly/>
                    <br/>
                    
                    <label for="tax">Tax (7%):</label>
                    <input type="text" class="form-control" id="tax" name="tax" value="${not empty booking ? booking.tax : ''}" readonly/>
                    <br/>
                    
                    <label for="discount">Discount (7%):</label>
                    <input type="text" class="form-control" id="discount" name="discount" value="${not empty booking ? booking.discount : ''}" readonly/>
                    <br/>
                    
                    <label for="totalFare">Total Amount (LKR):</label>
                    <input type="text" class="form-control" id="totalFare" name="totalFare" value="${not empty booking ? booking.totalFare : ''}" readonly/>
                    <br/>

                    <input type="hidden" name="type" value="updateBooking"/>
                    <button type="submit" class="btn btn-warning">
                        <i class="fas fa-save me-1"></i>Update Order
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