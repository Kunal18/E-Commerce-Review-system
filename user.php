



<?php

$con=mysqli_connect('localhost','root','','review');

//$pid=@$_REQUEST['pid'];


$uname=@$_REQUEST['uname'];

$password=@$_REQUEST['password'];

if(!$con)
{
	die("Connection failed:".mysqli_connect_error());
}
else
{
	$sql="SELECT * FROM user_info where uname='$uname' And password='$password';";
	$result=mysqli_query($con,$sql);
	 $count=mysqli_num_rows($result);
	 if($count>0)
	{		$row=mysqli_fetch_array($result);
			session_start();
			//ECHO $uname;
			$_SESSION['uid']=$row['uid'];
			$_SESSION['name']=$uname;
			$_SESSION['password']=$password;
			//echo"<button onclick='goback()' value='WRITE a REVIEW'>";
			//echo "WRITE a REVIEW";
			//echo "</button>";
			header("Location:index.php");
	}
		else{
			echo "USER_Name or Password incorrect<br>Please re-enter details";
			include'login1.php';
		}
	

}



?>

</body>
</html>