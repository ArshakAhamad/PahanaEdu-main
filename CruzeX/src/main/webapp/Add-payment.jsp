<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Secure Payment - Pahana Edu Bookshop</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://js.stripe.com/v3/"></script>
</head>
<body>
<div class="container">
    <h2 class="mt-4 mb-4 text-center">Complete Your Payment - Pahana Edu Bookshop</h2>
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card p-4">
                <form id="payment-form">
                    <div class="mb-3">
                        <label for="bookingID" class="form-label">Order ID:</label>
                        <input type="text" class="form-control" id="bookingID" name="bookingID" value="<%= request.getParameter("bookingID") != null ? request.getParameter("bookingID") : "" %>" required>
                    </div>
                    <div class="mb-3">
                        <label for="customerID" class="form-label">Customer ID:</label>
                        <input type="text" class="form-control" id="customerID" name="customerID" value="<%= request.getParameter("customerID") != null ? request.getParameter("customerID") : "" %>" required>
                    </div>
                    <div class="mb-3">
                        <label>Subtotal (LKR):</label>
                        <input type="number" step="0.01" class="form-control" id="fare" name="fare" value="<%= request.getParameter("fare") != null ? request.getParameter("fare") : "" %>" required onchange="calculateTotal()"/>
                    </div>
                     <div class="mb-3">
                        <label for="tax" class="form-label">Tax (7%):</label>
                        <input type="number" step="0.01" class="form-control" id="tax" name="tax" value="<%= request.getParameter("tax") != null ? request.getParameter("tax") : "" %>" readonly>
                    </div>
                     <div class="mb-3">
                        <label for="discount" class="form-label">Discount (7%):</label>
                        <input type="number" step="0.01" class="form-control" id="discount" name="discount" value="<%= request.getParameter("discount") != null ? request.getParameter("discount") : "" %>" readonly>
                    </div>
                    <div class="mb-3">
                        <label>Total Amount (LKR):</label>
                        <input type="number" step="0.01" class="form-control" id="totalFare" name="totalFare" value="<%= request.getParameter("totalFare") != null ? request.getParameter("totalFare") : "" %>" readonly />
                    </div>

                    <!-- Stripe Card Element -->
                    <div class="mb-3">
                        <label for="card-element" class="form-label">Credit or Debit Card:</label>
                        <div id="card-element" class="form-control"></div>
                        <div id="card-errors" class="text-danger mt-2" role="alert"></div>
                    </div>

                    <button type="submit" class="btn btn-primary w-100" id="submit-button">Pay Now</button>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    var stripe = Stripe("pk_test_51R03Ce07fEoJmqEFY8VGA8XnvPyz08F2mzG0KoiDo2MaQjmbK5lbCzwdFXoEwfQxdWdJtuCFq9jFxVwlc6M5LKrT00J3v74C5c"); // Replace with your Stripe public key
    var elements = stripe.elements();
    var card = elements.create("card");
    card.mount("#card-element");

    // Function to calculate tax, discount and total
    function calculateTotal() {
        var subtotal = parseFloat(document.getElementById("fare").value) || 0;
        var tax = subtotal * 0.07;
        var discount = subtotal * 0.07;
        var total = subtotal + tax - discount;
        
        document.getElementById("tax").value = tax.toFixed(2);
        document.getElementById("discount").value = discount.toFixed(2);
        document.getElementById("totalFare").value = total.toFixed(2);
    }

    document.getElementById("payment-form").addEventListener("submit", function(event) {
        event.preventDefault();
        
        // Validate required fields
        var orderID = document.getElementById("bookingID").value.trim();
        var customerID = document.getElementById("customerID").value.trim();
        var subtotal = document.getElementById("fare").value.trim();
        
        if (!orderID || !customerID || !subtotal) {
            alert("Please fill in all required fields: Order ID, Customer ID, and Subtotal");
            return;
        }
        
        stripe.createToken(card).then(function(result) {
            if (result.error) {
                document.getElementById("card-errors").textContent = result.error.message;
            } else {
                processPayment(result.token);
            }
        });
    });

    function processPayment(token) {
        var bookingID = document.getElementById("bookingID").value;
        var customerID = document.getElementById("customerID").value;
        var tax = document.getElementById("tax").value;
        var discount = document.getElementById("discount").value;
        var fare = document.getElementById("fare").value;
        var totalFare = document.getElementById("totalFare").value;

        fetch("StripePaymentServlet", {
            method: "POST",
            headers: { "Content-Type": "application/x-www-form-urlencoded" },
            body: new URLSearchParams({
                stripeToken: token.id,
                bookingID: bookingID,
                customerID: customerID,
                amount: fare,
                tax: tax,
                currency: "lkr",
                cardholderName:"sarees",
                discount: discount,
                totalFare: totalFare
            }).toString()
        })
        .then(response => response.text())  // First get raw text response
        .then(text => {
            console.log("Raw Response:", text);  // Debugging
            try {
                let data = JSON.parse(text);  // Try parsing JSON
                if (data.success) {
                    window.location.href = "Billing.jsp?customerID=" + data.customerID + "&bookingID=" + data.bookingID +"&discount="+discount+ "&tax="+ tax+ "&amount=" + totalFare + "&paymentStatus=Successful";
                } else {
                    alert("Payment failed: " + data.message);
                }
            } catch (error) {
                console.error("JSON Parse Error:", error);
                alert("Unexpected server response. Check console.");
            }
        })
        .catch(error => alert("Error processing payment: " + error));
    }
</script>
</body>
</html>