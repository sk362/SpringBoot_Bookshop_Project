<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootswatch@5.3.2/dist/darkly/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="css/update.css">
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
                <form action="update-book" method="post">
                    <!-- Book ID -->
                    <div class="form-group mb-3">
                        <label for="bid">Book Id</label>
                        <input type="number" name="bid" id="bid" class="form-control" placeholder="Enter Book ID*" value="${book.bid}"  />
                    </div>

                    <!-- Author -->
                    <div class="form-group mb-3">
                       <label for="author">Book Author</label>
                        <input type="text" name="author" id="author" class="form-control" placeholder="Enter Author Name*" value="${book.author}"  />
                    </div>

                    <!-- Book Name -->
                    <div class="form-group mb-3">
                        <label for="bookname">Book Name</label>
                        <input type="text" name="bookname" id="bookname" class="form-control" placeholder="Enter Book Name*" value="${book.bookname}" />
                    </div>

                    <!-- Price -->
                    <div class="form-group mb-3">
                        <label for="price">Book Price</label>
                        <input type="number" name="price" id="price" class="form-control" placeholder="Enter Price*"  value="${book.price}" />
                    </div>

                    <!-- Quantity -->
                    <div class="form-group mb-3">
                        <label for="qty">Book Quantity</label>
                        <input type="number" name="qty" id="qty" class="form-control" placeholder="Enter Quantity*" value="${book.qty}"  />
                    </div>
                    
                    <!-- Submit Button -->
                    <button type="submit" class="btn btn-primary w-100">Update Record</button>
                </form>
            </div>
        </div>
    </div>

   
</body>
</html>
