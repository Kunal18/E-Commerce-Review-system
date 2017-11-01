<?php
$con=mysqli_connect('localhost','root','','review');
	


	$pname=$_POST['pname'];
	$type=$_POST['type'];
	$brand=$_POST['brand'];
	$descr=$_POST['descr'];
	$cost=$_POST['cost'];
	$image=$_FILES['image']['name'];
	 
	$sql="INSERT into product_info (pname,type,brand,descr,cost,image) values('$pname','$type','$brand','$descr','$cost','$image');";
	$result=mysqli_query($con,$sql);
	if(!$result)
	{
		echo " Product Couldn't be Inserted".mysqli_error($con);

	}
	else
		echo "<h3>Product inserted</h3>";
		include 'addprod.html';
?>