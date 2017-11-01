<?php
session_start();
$con=mysqli_connect('localhost','root','','review');
$uid=@$_SESSION['uid'];
$pid=@$_SESSION['pid'];
$review=@$_REQUEST['review'];
//echo $review;

$sql="INSERT INTO review (uid,pid,review) VALUES ('$uid','$pid','$review');";
$result=mysqli_query($con,$sql);
$count=mysqli_num_rows($result);
if($count>0)
{	$row=mysqli_fetch_array($result);
	echo "REVIEW INSERTED SUCCESSFULLY";
	header('location:index.php');
}




?>