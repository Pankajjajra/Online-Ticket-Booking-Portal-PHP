<?php
include 'connect.php' ;
session_start();
if ($_SESSION['log'] == '')
{
    header("location:index.php");
}
include 'header.php';
?>
<style >
	.container{
        border-spacing: 10px;

      font-family: Montserrat, sans-serif;
     font-size: 18px !important;
      border: 2px solid grey;
        margin-top: 50px;
        margin-bottom: 200px;
       padding-top: 50px;
      padding-right: 70px;
      padding-bottom: 50px;
      padding-left: 100px;
      align-content: center;
    }
</style>

<html>
<head>
<link rel='stylesheet' href='index.css'>
<br><br>
  <h1><center><b><img src="icons/ticket.png"/>  User Bookings &nbsp <img src="icons/ticket.png"/></center></b></h1>

<div class="container">

  <td><a href='trainbookings.php'><button style="background-color: black ; border-color:black " ><img src="icons/train-ticket.png"/> View Train Bookings </button></a></td>
 </tr> 
<br> <br> 

<tr>

<td><a href='busbookings.php'><button style="background-color: black ; border-color:black  "><img src="icons/bus-ticket.png"/> View Bus Bookings</button></a></td></td>
</tr>
</table>
</tr>
</div>
<?php include 'footer.php';
?> 

</html>