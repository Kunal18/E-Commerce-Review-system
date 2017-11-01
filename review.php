<?php
session_start();
$con=mysqli_connect('localhost','root','','review');

//@$_SESSION['name'];
//@$_SESSION['password'];
//$status=session_status();
echo $uid=@$_SESSION['uid'];
echo $pid=@$_REQUEST['pid'];
echo $review=@$_REQUEST['review'];
$_SESSION['pid']=$pid;
//echo $pid;
//echo "<br>";

if(isset($_SESSION['name']))
{
echo "ENTER A REVIEW:";

echo $sql="INSERT INTO review  values('','$uid','$pid','$review');";
//$result=mysqli_query($con,$sql)or die (mysqli_error($con));

if($result=mysqli_query($con,$sql))
{	$row=mysqli_fetch_array($result);
	echo "REVIEW INSERTED SUCCESSFULLY";
	header('location:index.php');
}

}

else
{
	echo "PLEASE LOGIN FIRST!";
	header("location:login1.php");
}

?>























	




