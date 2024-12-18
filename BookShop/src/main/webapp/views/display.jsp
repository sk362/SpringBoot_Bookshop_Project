<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bookshop</title>
<!-- Optional Bootstrap for Styling -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <!-- Include Navbar -->
    <jsp:include page="navbar.jsp"></jsp:include>
    <br>
    <br> 

    <h1 class="text-center pt-4">Book's Data</h1>

    <div class="container table-responsive py-5">
        <table class="table table-bordered table-hover">
            <thead class="table-primary">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Book Name</th>
                    <th scope="col">Price</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Author</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <!-- Loop Through Books -->
                <c:forEach var="book" items="${books}">
                    <tr>
                        <td>${book.bid}</td>
                        <td>${book.bookname}</td>
                        <td>${book.price}</td>
                        <td>${book.qty}</td>
                        <td>${book.author}</td>
                        <td>
                            <a href="view-book?bid=${book.bid}" class="btn btn-warning">UPDATE</a>
                            <a href="delete-book?bid=${book.bid}" class="btn btn-danger">DELETE</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    
    </table>
</body>
</html>
