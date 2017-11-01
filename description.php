

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	body:{
		align-items: : center;
	}
</style>
	<title>PRODUCT DESCRIPTION</title>
	<header><h1 style="text-align: center">DESCRIPTION</h1></header>
</head>
<body>

<?php
$status=session_status();
$con=mysqli_connect('localhost','root','','review');

$pid=@$_GET['pid'];

$sql="SELECT * from product_info where pid='$pid';";
$result=mysqli_query($con,$sql);
while($row=mysqli_fetch_array($result))
{
	//print_r ($row);
echo "<div style='float:left;margin-left:30%;'>";
echo "<image src='image/".$row['image']."'/>";
echo "</div>";
echo "<div style='float:left;margin-left:100px;margin-top:40px;'>";
echo "<form action='review.php' method='post'>";
echo "<input type='hidden' name='pid' value='".$pid."'/>"; 

echo "Product Name:".$row['pname'];
echo "<hr>";
echo "Product Type:".$row['type'];
echo "<hr>";
echo "Description:".$row['descr'];
echo "<hr>";
echo "Cost:".$row['cost'];
echo "<hr>";
echo "<input type='submit' name='submit' id='submit ' value='ADD A REVIEW'/>";
echo "<textarea rows='10' coln='500' name='review' id='review' >";
echo "</textarea>";
echo "</form>";

echo "</div>";
echo "<div style='margin-left:30%;'>";
echo "Reviews";
$sql1="SELECT * FROM review where pid='$pid'";
$result1=mysqli_query($con,$sql1);
while ($row1=mysqli_fetch_array($result1))
	{	
	echo $row1['review'];
	echo "<br>";
	}
echo "</div>";




}

?>