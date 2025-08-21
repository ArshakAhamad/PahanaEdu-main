<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Debug Add Book</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center">Debug Add Book Form</h3>
                    
                    <!-- Simple form with NO JavaScript, NO file upload, NO complex features -->
                    <form action="VehicleController" method="post">
                        <div class="mb-3">
                            <label for="vehicleID" class="form-label">Book ID:</label>
                            <input type="text" class="form-control" id="vehicleID" name="vehicleID" value="BOOK001" required/>
                        </div>
                        <div class="mb-3">
                            <label for="vehicleName" class="form-label">Book Title:</label>
                            <input type="text" class="form-control" id="vehicleName" name="vehicleName" value="Test Book" required/>
                        </div>
                        <div class="mb-3">
                            <label for="category" class="form-label">Category:</label>
                            <select class="form-control" id="category" name="category" required>
                                <option value="Mathematics">Mathematics</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="monthFee" class="form-label">Price (LKR):</label>
                            <input type="text" class="form-control" id="monthFee" name="monthFee" value="500" required/>
                        </div>
                        <div class="mb-3">
                            <label for="driverID" class="form-label">Staff ID:</label>
                            <input type="text" class="form-control" id="driverID" name="driverID" value="1" required/>
                        </div>
                        
                        <input type="hidden" name="type" value="add"/>
                        <button type="submit" class="btn btn-primary w-100">Add Book (Debug)</button>
                    </form>
                    
                    <!-- Debug info -->
                    <div class="mt-4">
                        <h5>Debug Info:</h5>
                        <p><strong>Form Action:</strong> VehicleController</p>
                        <p><strong>Method:</strong> POST</p>
                        <p><strong>Type:</strong> add</p>
                        <p><strong>Pre-filled:</strong> Sample book data</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    // Debug logging
    document.querySelector('form').addEventListener('submit', function(e) {
        console.log('Form submitted!');
        console.log('Action:', this.action);
        console.log('Method:', this.method);
        
        // Log all form data
        const formData = new FormData(this);
        for (let [key, value] of formData.entries()) {
            console.log(key + ': ' + value);
        }
    });
</script>
</body>
</html>