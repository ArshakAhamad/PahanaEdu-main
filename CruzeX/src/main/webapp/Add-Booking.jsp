<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <meta charset="UTF-8">
    <title>Add Order - Pahana Edu Bookshop</title>
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
            background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
            font-family: 'Arial', sans-serif;
            color: var(--text-color);
        }

        .container-fluid {
            padding-top: 20px;
        }

        .navbar-custom {
            background: linear-gradient(135deg, var(--primary-color), #1e4080) !important;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            border-radius: 10px;
            margin: 0 20px;
        }

        .nav-link {
            color: #ffffff !important;
            font-weight: 500;
            transition: all 0.3s ease;
            border-radius: 8px;
            margin: 0 5px;
        }

        .nav-link:hover {
            color: #ffd700 !important;
            background-color: rgba(255, 255, 255, 0.1);
            transform: translateY(-2px);
        }

        .nav-link.active {
            background-color: rgba(255, 255, 255, 0.2);
            color: #ffffff !important;
        }

        .form-container {
            background: white;
            border-radius: 20px;
            padding: 2.5rem;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.1);
            margin: 2rem auto;
            border: 1px solid rgba(44, 90, 160, 0.1);
        }

        .form-header {
            text-align: center;
            margin-bottom: 2rem;
            padding-bottom: 1rem;
            border-bottom: 2px solid var(--border-color);
        }

        .form-header h3 {
            color: var(--primary-color);
            font-weight: bold;
            font-size: 2rem;
            margin-bottom: 0.5rem;
        }

        .form-header p {
            color: #6c757d;
            margin: 0;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-group label {
            font-weight: 600;
            color: var(--text-color);
            margin-bottom: 0.5rem;
            display: block;
        }

        .form-control {
            border: 2px solid var(--border-color);
            border-radius: 10px;
            padding: 0.8rem 1rem;
            font-size: 1rem;
            transition: all 0.3s ease;
            background-color: #fafafa;
        }

        .form-control:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 0 0.2rem rgba(44, 90, 160, 0.25);
            background-color: white;
        }

        .form-control[readonly] {
            background-color: #e9ecef;
            opacity: 1;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--primary-color), #1e4080);
            border: none;
            color: white;
            font-weight: 600;
            font-size: 1.1rem;
            padding: 0.8rem 2rem;
            border-radius: 10px;
            transition: all 0.3s ease;
            width: 100%;
        }

        .btn-primary:hover {
            background: linear-gradient(135deg, #1e4080, var(--primary-color));
            transform: translateY(-2px);
            box-shadow: 0 10px 25px rgba(44, 90, 160, 0.3);
        }

        .input-group {
            margin-bottom: 1.5rem;
        }

        .input-group-text {
            background: linear-gradient(135deg, var(--primary-color), #1e4080);
            color: white;
            border: none;
            font-weight: 500;
        }

        .calculation-section {
            background: linear-gradient(135deg, #f8f9fa, #e9ecef);
            border-radius: 15px;
            padding: 1.5rem;
            margin: 2rem 0;
            border: 2px dashed var(--primary-color);
        }

        .calculation-title {
            color: var(--primary-color);
            font-weight: bold;
            text-align: center;
            margin-bottom: 1rem;
        }

        .summary-card {
            background: white;
            border-radius: 10px;
            padding: 1rem;
            margin-bottom: 1rem;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }

        .summary-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 0.5rem;
        }

        .summary-row.total {
            border-top: 2px solid var(--primary-color);
            padding-top: 0.5rem;
            font-weight: bold;
            font-size: 1.1rem;
            color: var(--primary-color);
        }

        .book-selection {
            background: white;
            border-radius: 15px;
            padding: 1.5rem;
            margin-bottom: 2rem;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        .book-item {
            display: flex;
            align-items: center;
            padding: 1rem;
            border: 2px solid var(--border-color);
            border-radius: 10px;
            margin-bottom: 1rem;
            transition: all 0.3s ease;
            cursor: pointer;
        }

        .book-item:hover {
            border-color: var(--primary-color);
            background-color: rgba(44, 90, 160, 0.05);
        }

        .book-item.selected {
            border-color: var(--primary-color);
            background-color: rgba(44, 90, 160, 0.1);
        }

        .book-icon {
            font-size: 2rem;
            color: var(--primary-color);
            margin-right: 1rem;
        }

        .quantity-input {
            width: 80px;
            text-align: center;
        }

        .alert-custom {
            border: none;
            border-radius: 10px;
            padding: 1rem;
            margin-bottom: 1.5rem;
            font-weight: 500;
        }

        .alert-success {
            background: rgba(40, 167, 69, 0.1);
            color: var(--success-color);
            border-left: 4px solid var(--success-color);
        }

        .alert-danger {
            background: rgba(220, 53, 69, 0.1);
            color: var(--error-color);
            border-left: 4px solid var(--error-color);
        }

        @media (max-width: 768px) {
            .form-container {
                margin: 1rem;
                padding: 1.5rem;
            }
            
            .form-header h3 {
                font-size: 1.5rem;
            }
            
            .navbar-custom {
                margin: 0 10px;
            }
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <nav class="navbar navbar-expand-lg navbar-custom py-3">
        <div class="container">
            <ul class="nav justify-content-center w-100">
                <li class="nav-item">
                    <a class="nav-link" href="CustomerHomePage.jsp">
                        <i class="fas fa-arrow-left me-2"></i>Go to Home
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="BookingDashboard.jsp">
                        <i class="fas fa-store me-2"></i>Store
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="VehicleController">
                        <i class="fas fa-search me-2"></i>Search & Update
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="Add-Booking.jsp">
                        <i class="fas fa-plus-circle me-2"></i>Order
                    </a>
                </li>
            </ul>
        </div>
    </nav>
    
    <div class="container">
        <!-- Book Selection Section -->
        <div class="book-selection">
            <h4 class="text-center mb-4" style="color: var(--primary-color);">
                <i class="fas fa-book me-2"></i>Select Books for Your Order
            </h4>
            <div class="row">
                <div class="col-md-6">
                    <div class="book-item" onclick="selectBook('BOOK001', 'Mathematics Grade 10', 850)">
                        <i class="fas fa-calculator book-icon"></i>
                        <div class="flex-grow-1">
                            <h6 class="mb-1">Mathematics Grade 10</h6>
                            <small class="text-muted">Advanced Mathematics</small>
                            <div class="mt-2">
                                <strong>LKR 850.00</strong>
                            </div>
                        </div>
                        <input type="number" class="form-control quantity-input" min="1" value="1" onchange="updateQuantity('BOOK001', this.value)">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="book-item" onclick="selectBook('BOOK002', 'English Literature', 650)">
                        <i class="fas fa-book-open book-icon"></i>
                        <div class="flex-grow-1">
                            <h6 class="mb-1">English Literature</h6>
                            <small class="text-muted">Classic Literature</small>
                            <div class="mt-2">
                                <strong>LKR 650.00</strong>
                            </div>
                        </div>
                        <input type="number" class="form-control quantity-input" min="1" value="1" onchange="updateQuantity('BOOK002', this.value)">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="book-item" onclick="selectBook('BOOK003', 'Science Grade 9', 750)">
                        <i class="fas fa-flask book-icon"></i>
                        <div class="flex-grow-1">
                            <h6 class="mb-1">Science Grade 9</h6>
                            <small class="text-muted">General Science</small>
                            <div class="mt-2">
                                <strong>LKR 750.00</strong>
                            </div>
                        </div>
                        <input type="number" class="form-control quantity-input" min="1" value="1" onchange="updateQuantity('BOOK003', this.value)">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="book-item" onclick="selectBook('BOOK004', 'History of Sri Lanka', 500)">
                        <i class="fas fa-landmark book-icon"></i>
                        <div class="flex-grow-1">
                            <h6 class="mb-1">History of Sri Lanka</h6>
                            <small class="text-muted">Local History</small>
                            <div class="mt-2">
                                <strong>LKR 500.00</strong>
                            </div>
                        </div>
                        <input type="number" class="form-control quantity-input" min="1" value="1" onchange="updateQuantity('BOOK004', this.value)">
                    </div>
                </div>
            </div>
        </div>

        <div class="form-container">
            <div class="form-header">
                <h3><i class="fas fa-shopping-cart me-3"></i>Create New Order</h3>
                <p>Complete your book order details below</p>
            </div>

            <!-- Success/Error Messages -->
            <% if (request.getAttribute("message") != null) { %>
                <div class="alert-custom alert-success">
                    <i class="fas fa-check-circle me-2"></i><%= request.getAttribute("message") %>
                </div>
            <% } %>

            <form method="post" action="BookingController" id="orderForm">
                
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="vehicleID">
                                <i class="fas fa-book me-2"></i>Book ID:
                            </label>
                            <input type="text" class="form-control" id="vehicleID" name="vehicleID" 
                                   value="<%= request.getParameter("vehicleID") != null ? request.getParameter("vehicleID") : "BOOK001" %>" readonly />
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="driverID">
                                <i class="fas fa-user-tie me-2"></i>Staff ID:
                            </label>
                            <input type="text" class="form-control" id="driverID" name="driverID" 
                                   value="<%= request.getParameter("driverID") != null ? request.getParameter("driverID") : "STAFF001" %>" readonly />
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="customerID">
                        <i class="fas fa-user me-2"></i>Customer ID:
                    </label>
                    <input type="text" class="form-control" id="customerID" name="customerID" 
                           value="<%= request.getParameter("customerID") != null ? request.getParameter("customerID") : "CUST001" %>" readonly />
                </div>
                
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="bookingDate">
                                <i class="fas fa-calendar me-2"></i>Order Date:
                            </label>
                            <input type="date" class="form-control" id="bookingDate" name="bookingDate" required/>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="bookingTime">
                                <i class="fas fa-clock me-2"></i>Preferred Time:
                            </label>
                            <input type="time" class="form-control" id="bookingTime" name="bookingTime" required/>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="pickupLatLng">
                                <i class="fas fa-map-marker-alt me-2"></i>Delivery Address:
                            </label>
                            <input type="text" class="form-control" id="pickupLatLng" name="pickupLocation" 
                                   placeholder="Enter your delivery address" required />
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="dropLatLng">
                                <i class="fas fa-store me-2"></i>Store Location:
                            </label>
                            <input type="text" class="form-control" id="dropLatLng" name="dropLocation" 
                                   value="Pahana Edu Bookshop, Colombo 01" readonly/>
                        </div>
                    </div>
                </div>

                <div class="calculation-section">
                    <h5 class="calculation-title">
                        <i class="fas fa-calculator me-2"></i>Order Calculation
                    </h5>
                    
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="distance">
                                    <i class="fas fa-ruler me-2"></i>Quantity:
                                </label>
                                <input type="text" class="form-control" id="distance" name="distance" value="1" readonly/>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="fare">
                                    <i class="fas fa-money-bill me-2"></i>Subtotal (LKR):
                                </label>
                                <input type="text" class="form-control" id="fare" name="fare" value="850.00" readonly/>
                            </div>
                        </div>
                    </div>

                    <div class="summary-card">
                        <div class="summary-row">
                            <span><i class="fas fa-percentage me-2"></i>Tax (7%):</span>
                            <input type="text" class="form-control" id="tax" name="tax" value="59.50" readonly style="width: 120px; display: inline;" />
                        </div>

                        <div class="summary-row">
                            <span><i class="fas fa-tags me-2"></i>Discount (7%):</span>
                            <input type="text" class="form-control" id="discount" name="discount" value="59.50" readonly style="width: 120px; display: inline;" />
                        </div>

                        <div class="summary-row total">
                            <span><i class="fas fa-receipt me-2"></i>Total Amount (LKR):</span>
                            <input type="text" class="form-control" id="totalFare" name="totalFare" value="850.00" readonly style="width: 120px; display: inline; font-weight: bold;" />
                        </div>
                    </div>
                </div>

                <input type="hidden" name="type" value="add"/>
                <button type="submit" class="btn btn-primary">
                    <i class="fas fa-shopping-cart me-2"></i>Place Order
                </button>
            </form>
        </div>
    </div>
</div>

<script>
    let selectedBooks = {};

    function selectBook(bookId, bookName, price) {
        // Toggle selection
        const bookElement = event.currentTarget;
        const quantityInput = bookElement.querySelector('.quantity-input');
        const quantity = parseInt(quantityInput.value) || 1;

        if (selectedBooks[bookId]) {
            delete selectedBooks[bookId];
            bookElement.classList.remove('selected');
        } else {
            selectedBooks[bookId] = {
                name: bookName,
                price: price,
                quantity: quantity
            };
            bookElement.classList.add('selected');
        }

        updateOrderSummary();
        updateFormFields();
    }

    function updateQuantity(bookId, quantity) {
        if (selectedBooks[bookId]) {
            selectedBooks[bookId].quantity = parseInt(quantity) || 1;
            updateOrderSummary();
        }
    }

    function updateOrderSummary() {
        let totalQuantity = 0;
        let subtotal = 0;

        // If no books selected but we have URL parameters, use those
        if (Object.keys(selectedBooks).length === 0) {
            const urlParams = new URLSearchParams(window.location.search);
            const monthFee = urlParams.get('monthFee');
            if (monthFee) {
                subtotal = parseFloat(monthFee);
                totalQuantity = 1;
            }
        } else {
            Object.values(selectedBooks).forEach(book => {
                totalQuantity += book.quantity;
                subtotal += book.price * book.quantity;
            });
        }

        const tax = subtotal * 0.07;
        const discount = subtotal * 0.07;
        const total = subtotal + tax - discount;

        document.getElementById("distance").value = totalQuantity;
        document.getElementById("fare").value = subtotal.toFixed(2);
        document.getElementById("tax").value = tax.toFixed(2);
        document.getElementById("discount").value = discount.toFixed(2);
        document.getElementById("totalFare").value = total.toFixed(2);
    }

    function updateFormFields() {
        // Update book ID field with selected books
        const bookIds = Object.keys(selectedBooks);
        if (bookIds.length > 0) {
            document.getElementById("vehicleID").value = bookIds.join(", ");
        } else {
            document.getElementById("vehicleID").value = "No books selected";
        }
    }

    // Set minimum date to today
    document.addEventListener('DOMContentLoaded', function() {
        const today = new Date().toISOString().split('T')[0];
        document.getElementById("bookingDate").setAttribute('min', today);
        document.getElementById("bookingDate").value = today;
    });

    // Form validation
    document.getElementById("orderForm").addEventListener('submit', function(e) {
        if (Object.keys(selectedBooks).length === 0) {
            e.preventDefault();
            alert("Please select at least one book for your order.");
            return false;
        }

        const deliveryAddress = document.getElementById("pickupLatLng").value.trim();
        if (deliveryAddress === "") {
            e.preventDefault();
            alert("Please enter a delivery address.");
            return false;
        }

        return true;
    });

    // Auto-calculate on page load and handle URL parameters
    document.addEventListener('DOMContentLoaded', function() {
        // Check if monthFee parameter exists from URL
        const urlParams = new URLSearchParams(window.location.search);
        const monthFee = urlParams.get('monthFee');
        const vehicleID = urlParams.get('vehicleID');
        
        if (monthFee && vehicleID) {
            // Pre-select the book based on URL parameters
            const price = parseFloat(monthFee);
            selectedBooks[vehicleID] = {
                name: vehicleID,
                price: price,
                quantity: 1
            };
            
            // Update all calculations
            updateOrderSummary();
            updateFormFields();
        }
    });
    
    updateOrderSummary();
</script>

<script>
    var message = "<%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>";
    if (message && message.trim() !== "") {
        setTimeout(function() {
            alert(message);
        }, 500);
    }
</script>
</body>
</html>