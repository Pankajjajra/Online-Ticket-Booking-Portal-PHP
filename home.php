<?php
include 'connect.php' ;
session_start();
if ($_SESSION['log'] == '')
{
    header("location:sindex.php");
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
      padding-right: 120px;
      padding-bottom: 50px;
      padding-left: 150px;
      align-content: center;

    }
</style>

<html>
<head>
<link rel='stylesheet' href='index.css'>
<br><br>
  <h1   text-transform: capitalize;><center><b><img src="icons/download.png"/> Welcome  <?php  echo " ". $_SESSION['name'] ."" ?> To E-TICKET Booking Portal <img src="icons/download.png"/></center></b></h1>

<div class="container">

  <td><a href='book.php'><button style="background-color: black ; border-color:black "  ><img src="icons/train.png"/>&nbsp&nbspBook Train Tickets </button></a></td>
 </tr> 
<br> <br> 

<tr>

<td><a href='bookbus.php'><button style="background-color: black ; border-color:black  "><img src="icons/buss.png"/>&nbsp&nbspBook Bus Tickets</button></a></td></td>
</tr>
</table>
</tr>
</div>
<?php include 'footer.php';
?> 

</html>