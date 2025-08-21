<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Pahana Edu Bookshop</title>

    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        body {
            background-image: url('https://images.unsplash.com/photo-1481627834876-b7833e8f5570?ixlib=rb-4.0.3&auto=format&fit=crop&w=2070&q=80');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.95);
            border-radius: 15px;
            padding: 40px;
            width: 500px;
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.2);
            backdrop-filter: blur(10px);
        }

        .form-control {
            border-radius: 10px;
            border: 2px solid #dee2e6;
            padding: 0.8rem;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            border-color: #2c5aa0;
            box-shadow: 0 0 0 0.2rem rgba(44, 90, 160, 0.25);
        }

        .btn-primary {
            background: linear-gradient(135deg, #2c5aa0, #1e4080);
            border: none;
            border-radius: 10px;
            padding: 0.8rem;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .btn-primary:hover {
            background: linear-gradient(135deg, #1e4080, #2c5aa0);
            transform: translateY(-2px);
            box-shadow: 0 10px 25px rgba(44, 90, 160, 0.3);
        }

        .form-header {
            text-align: center;
            margin-bottom: 2rem;
        }

        .form-header h2 {
            color: #2c5aa0;
            font-weight: bold;
            font-size: 2rem;
        }

        .form-header p {
            color: #6c757d;
            margin: 0;
        }

        .brand-link {
            text-decoration: none;
            color: #2c5aa0;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .brand-link:hover {
            color: #1e4080;
        }

        #passwordMessage {
            font-size: 14px;
            margin-top: 0.5rem;
        }

        .form-label {
            font-weight: 600;
            color: #333;
        }

        .back-to-login {
            text-align: center;
            margin-top: 1.5rem;
            padding-top: 1rem;
            border-top: 1px solid #dee2e6;
        }
    </style>

    <script>
        function validatePasswords() {
            var password = document.getElementById("customerPassword").value;
            var confirmPassword = document.getElementById("confirmPassword").value;
            var message = document.getElementById("passwordMessage");

            if (password.length < 6) {
                message.innerHTML = "<i class='fas fa-exclamation-triangle me-1'></i>Password must be at least 6 characters long!";
                message.style.color = "red";
                return false;
            }

            if (password !== confirmPassword) {
                message.innerHTML = "<i class='fas fa-times me-1'></i>Passwords do not match!";
                message.style.color = "red";
                return false;
            } else {
                message.innerHTML = "<i class='fas fa-check me-1'></i>Passwords match!";
                message.style.color = "green";
                return true;
            }
        }
    </script>

</head>
<body>

<!-- Registration Form -->
<div class="container">
    <div class="form-header">
        <h2><i class="fas fa-book-open me-3"></i>Pahana Edu</h2>
        <p>Create your customer account</p>
    </div>

    <form method="post" action="CustomerController" onsubmit="return validatePasswords();">
        <div class="mb-3">
            <label for="customerFullName" class="form-label">
                <i class="fas fa-user me-2"></i>Full Name:
            </label>
            <input type="text" class="form-control" id="customerFullName" name="customerFullName" placeholder="Enter your full name" required>
        </div>
        <div class="mb-3">
            <label for="customerPhoneNumber" class="form-label">
                <i class="fas fa-phone me-2"></i>Phone Number:
            </label>
            <input type="tel" class="form-control" id="customerPhoneNumber" name="customerPhoneNumber" placeholder="Enter your phone number" required>
        </div>
        <div class="mb-3">
            <label for="dateOfBirth" class="form-label">
                <i class="fas fa-calendar me-2"></i>Date of Birth:
            </label>
            <input type="date" class="form-control" id="dateOfBirth" name="dateOfBirth" required>
        </div>
        <div class="mb-3">
            <label for="customerAddress" class="form-label">
                <i class="fas fa-map-marker-alt me-2"></i>Address:
            </label>
            <input type="text" class="form-control" id="customerAddress" name="customerAddress" placeholder="Enter your address" required>
        </div>
        <div class="mb-3">
            <label for="gender" class="form-label">
                <i class="fas fa-venus-mars me-2"></i>Gender:
            </label>
            <select class="form-control" id="gender" name="gender" required>
                <option value="">-- Select Gender --</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="customerEmail" class="form-label">
                <i class="fas fa-envelope me-2"></i>Email:
            </label>
            <input type="email" class="form-control" id="customerEmail" name="customerEmail" placeholder="Enter your email address" required>
        </div>
        <div class="mb-3">
            <label for="customerUsername" class="form-label">
                <i class="fas fa-user-circle me-2"></i>Username:
            </label>
            <input type="text" class="form-control" id="customerUsername" name="customerUsername" placeholder="Choose a username" required>
        </div>
        <div class="mb-3">
            <label for="customerPassword" class="form-label">
                <i class="fas fa-lock me-2"></i>Password:
            </label>
            <input type="password" class="form-control" id="customerPassword" name="customerPassword" placeholder="Enter a secure password" required onkeyup="validatePasswords();">
        </div>
        <div class="mb-3">
            <label for="confirmPassword" class="form-label">
                <i class="fas fa-lock me-2"></i>Confirm Password:
            </label>
            <input type="password" class="form-control" id="confirmPassword" placeholder="Confirm your password" required onkeyup="validatePasswords();">
            <small id="passwordMessage"></small>
        </div>

        <input type="hidden" name="type" value="add">
        <button type="submit" class="btn btn-primary w-100">
            <i class="fas fa-user-plus me-2"></i>Create Account
        </button>
    </form>

    <div class="back-to-login">
        <p class="mb-2">Already have an account?</p>
        <a href="Login-Customer.jsp" class="brand-link">
            <i class="fas fa-sign-in-alt me-1"></i>Login Here
        </a>
    </div>
</div>

<script>
    var message = "<%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>";
    if (message.trim() !== "") {
        setTimeout(function() {
            const alertDiv = document.createElement('div');
            alertDiv.className = 'alert alert-success alert-dismissible fade show position-fixed';
            alertDiv.style.cssText = 'top: 20px; right: 20px; z-index: 9999; min-width: 300px;';
            alertDiv.innerHTML = `
                <i class="fas fa-check-circle me-2"></i>${message}
                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
            `;
            document.body.appendChild(alertDiv);
            
            setTimeout(function() {
                if (alertDiv.parentNode) {
                    alertDiv.parentNode.removeChild(alertDiv);
                }
            }, 5000);
        }, 500);
    }
</script>

</body>
</html>