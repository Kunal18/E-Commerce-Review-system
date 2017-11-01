<?php
//session_start();
$con=mysqli_connect('localhost','root','','review');



$aname=@$_REQUEST['aname'];

$password=@$_REQUEST['password'];

if(!$con)
{
	die("Connection failed:".mysqli_connect_error());
}
else
{
	$sql="SELECT * FROM admin_info where aname='$aname' And password='$password';";
	$result=mysqli_query($con,$sql);
	$count=mysqli_num_rows($result);
	 if($count>0)
	{		//echo" logged in";
			//alert("Successfully logged in!");
			//$_SESSION['adname']=@$_REQUEST['aname'];
			//$_SESSION['adpassword']=@$_REQUEST['password'];

			header("Location:addprod.html");
	}
		else{
			echo "Admin_Name or Password incorrect<br>Please re-enter details";
			include'login.php';
		}
	

}



?>