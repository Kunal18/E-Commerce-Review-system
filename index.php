<!DOCTYPE html>
<html>
<head>
	<title>ADD TO CART</title>
	<header>ADD TO CART</header>
	<script type="text/jquery"></script>
	<style type="text/css">
	header{
		text-align: center;
		font-size: 30px;
		font-family:  sans-serif;
        color: black;
	}
	body{
		background-color: gainsboro;
	}
	ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333333;
	}

	li {
    float: left;
	}

	li a {
    display: block;
    color: white;
    text-align: center;
    padding: 16px;
    text-decoration: none;
	}

	li a:hover {
    background-color: #111111;
	}
	#mob{
		float: left;
		
	}
	#cam{
		float:left;
		
	}

	
	</style>
</head>
<body>
<nav>
	<ul id="navbar">
		<li><a href="#">HOME</a></li>
		<li><a href="log.php">LOGIN</a></li>
		<li><a href="log.php">SIGN UP</a></li>
		<li><a href="login.php">ADMIN</a></li>
	</ul>
</nav>

<div style='margin-top:40px; height:auto;'>
<?php
session_start();
echo @$_SESSION['name'];
$con=mysqli_connect('localhost','root','','review');
$sql="SELECT * from product_info;";
$result=mysqli_query($con,$sql);
//$count=mysqli_num_rows($result);
while($row=mysqli_fetch_array($result))
{
echo "<div style='float: left;border:1px solid black;margin:2px;'>";
echo "<image src='image/" .$row['image'] ."'/>";
echo "<div style='text-align:center;'>";
echo "<a href='description.php?pid=".$row['pid']."'/>" ;
echo $row['pname']."</div>";
echo "</div>";
}

?>
</div>
	
</body>
</html>