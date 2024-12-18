<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootswatch@5.3.2/dist/darkly/bootstrap.min.css" rel="stylesheet">
    <title>Sell Book</title>
</head>
<body>
    <jsp:include page="navbar.jsp"></jsp:include>

    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="card w-50 shadow-lg">
            <div class="card-header bg-primary text-white text-center">
                <h3>Sell Book</h3>
            </div>
            <div class="card-body">
                <form action="payment.jsp" method="post">
                    <!-- Book Details Form -->
                    <div class="form-group mb-3">
                        <label for="bookname">Book Name</label>
                        <input type="text" name="bookname" id="bookname" class="form-control" placeholder="Enter Book Name" required />
                    </div>
                    <div class="form-group mb-3">
                        <label for="author">Author Name</label>
                        <input type="text" name="author" id="author" class="form-control" placeholder="Enter Author Name" required />
                    </div>
                    <div class="form-group mb-3">
                        <label for="price">Price</label>
                        <input type="number" name="price" id="price" class="form-control" placeholder="Enter Price" required />
                    </div>
                    <div class="form-group mb-3">
                        <label for="quantity">Quantity</label>
                        <input type="number" name="quantity" id="quantity" class="form-control" placeholder="Enter Quantity" required />
                    </div>
                    <!-- Submit to Payment Page -->
                    <button type="submit" class="btn btn-primary w-100">Proceed to Payment</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
