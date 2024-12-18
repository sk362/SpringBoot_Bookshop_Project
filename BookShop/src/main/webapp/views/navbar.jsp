<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7H0UibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>Navbar</title>
<style>
  .navbar {
    padding: 1rem;
    background-color: #000080; /* Custom dark blue background */
  }
  .navbar-nav .nav-link {
    color: white !important;
    font-size: 1.1rem; /* Increased size of links */
    margin-right: 1.8rem; /* Adds space between links */
  }
  .navbar-brand {
    color: white !important;
    font-size: 1.6rem; /* Increased brand text size */
     margin-right: 5.8rem;
  }
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg">
  <a class="navbar-brand" href="#">Apna Book Shop</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="add-book">Books Entry <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="display-book">Book's Record</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="sellbook.jsp">Sell Book</a>
      </li>
    </ul>
  </div>
</nav>
</body>
</html>
