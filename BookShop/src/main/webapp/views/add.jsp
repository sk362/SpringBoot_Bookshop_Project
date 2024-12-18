<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootswatch@5.3.2/dist/darkly/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="css/custom.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <title>Apna Book Shop</title>
</head>
<body>
    <jsp:include page="navbar.jsp"></jsp:include>

    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="card w-50 shadow-lg">
            <div class="card-header bg-primary text-white text-center">
                <h3>Add Book Details</h3>
            </div>
            <div class="card-body">
                <form action="insert-book" method="post">
                    <div class="form-group mb-3">
                        <label for="name">Book Name</label>
                        <input type="text" name="bookname" id="name" class="form-control" placeholder="Enter book name" required>
                    </div>
                    <div class="form-group mb-3">
                        <label for="price">Price</label>
                        <input type="number" name="price" id="price" class="form-control" placeholder="Enter price" required>
                    </div>
                    <div class="form-group mb-3">
                        <label for="qty">Quantity</label>
                        <input type="number" name="qty" id="qty" class="form-control" placeholder="Enter quantity" required>
                    </div>
                    <div class="form-group mb-3">
                        <label for="category">Author</label>
                        <input type="text" name="Author" id="category" class="form-control" placeholder="Enter author name" required>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Save</button>
                </form>
            </div>
        </div>
    </div>

    <div class="text-center mt-4">
        <button id="theme-toggle" class="btn btn-secondary">Toggle Dark Mode</button>
    </div>

   
</body>
</html>
