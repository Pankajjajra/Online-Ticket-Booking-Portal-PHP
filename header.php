
<head>
  <title>E-TICKET</title>
  <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=0.56, maximum-scale=3.0, minimum-scale=0.46">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>  
  <script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>            
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" />  

  <style>

  .btn {
    padding: 10px 20px;
    background-color: #333;
    color: #f1f1f1;
    border-radius: 0;
    transition: .2s;
  }
  .btn:hover, .btn:focus {
    border: 1px solid #333;
    background-color: #fff;
    color: #000;
  }
  .modal-header, h4, .close {
    background-color: #333;
    color: #fff !important;
    text-align: center;
    font-size: 30px;
  }
  .modal-header, .modal-body {
    padding: 40px 50px;
  }
  .nav-tabs li a {
    color: #777;
  }
 
   .navvvvvvbar {
    font-family: Montserrat, sans-serif;
    margin-bottom: 0;
    /* background-color: #E0FFFF; */
    background-color: #FFC107;
    border: 0;
    font-size: 40px !important;
    letter-spacing: 4px;
    opacity: 2;
    padding: 37px;
    text-align: center;
    color:black;
    font-weight: 40000;
    border-radius: 0;  
}
   
    h1 {
          font-family: Montserrat, sans-serif;

    }

  
  .navbar {
    font-family: Montserrat, sans-serif;
    margin-bottom: 0;
    background-color: #2d2d30;
    border: 0;
    font-size: 23px !important;
    letter-spacing: 3px;
    opacity: 5;
    padding: 10px;
    border-radius: 0;  

  }
  .navbar li a, .navbar .navbar-brand { 
    color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
    color: #fff !important;
  }
  .navbar-nav li.active a {
    color: #fff !important;
    background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
    border-color: transparent;
  }
  .open .dropdown-toggle {
    color: #fff;
    background-color: #555 !important;
  }
  .dropdown-menu li a {
    color: #000 !important;
  }
  .dropdown-menu li a:hover {
    background-color: red !important;
  }
 
  body{
  }
  </style>
</head>

<nav  class="navvvvvvbar navvvvvvbar-default navvvvvvbar-top">
      <div  class="  navvvvvvbar-brand navvvvvvbar-center"><b><mark><img src="icons/bus.png"/>E-TICKET<img src="icons/tracks-intersection.png"/></mark></b>
    

  

</nav>
<nav class="navbar navbar-default navbar-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-left">
        <li><a href="home.php"><img src="icons/home.png"/>Home&nbsp</a></li>

        <li><a href="book.php"><img src="icons/trainh.png"/>Train Ticket&nbsp</a></li>
        <li><a href="bookbus.php"><img src="icons/bush.png"/>Bus Ticket&nbsp</a></li>
        <li><a href="mybookings.php"><img src="icons/bookmark.png"/>User Bookings&nbsp</a></li>
        <li><a href="trainschedule.php"><img src="icons/planner.png"/>Train Schedule&nbsp</a></li>
     </ul>
     <ul class="nav navbar-nav navbar-right">

        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#"><img src="icons/user.png"/>&nbsp User : <?php  echo " ". $_SESSION['name'] ."" ?>
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
             <li><a href="myprofile.php"><span class="glyphicon glyphicon-user  "></span> My Profile</a></li>
    <li><a href="logout.php"><span class="glyphicon glyphicon-log-out  "></span> Logout</a></li>
          </ul>
        
      </ul>
    </div>
  </div>
</nav>

</body>
</html>
