<?php
	session_start();
 
	if(isset($_POST['update'])){
		//get POST data
		$old = $_POST['old'];
		$new = $_POST['new'];
		$confirm = $_POST['confirm'];
 
		//create a session for the data incase error occurs
		$_SESSION['old'] = $old;
		$_SESSION['new'] = $new;
		$_SESSION['confirm'] = $confirm;
 
		//connection
		$conn = new mysqli('localhost', 'root', '', 'login');
 
		//get user details
		$sql = "SELECT * FROM loginsys WHERE id = '".$_SESSION['user']."'";
		$query = $conn->query($sql);
		$row = $query->fetch_assoc();
 
		//check if old password is correct
		if(password_verify($old, $row['password'])){
			//check if new password match confirm
			if($new == $confirm){
				//hash our password
				$password = password_hash($new, PASSWORD_DEFAULT);
 
				//update the new password
				$sql = "UPDATE loginsys SET password = '$password' WHERE id = '".$_SESSION['user']."'";
				if($conn->query($sql)){
					$_SESSION['success'] = "Password updated successfully";
					//unset our session since no error occured
					unset($_SESSION['old']);
					unset($_SESSION['new']);
					unset($_SESSION['confirm']);
				}
				else{
					$_SESSION['error'] = $conn->error;
				}
			}
			else{
				$_SESSION['error'] = "New and retype password did not match";
			}
		}
		else{
			$_SESSION['error'] = "Incorrect Old Password";
		}
	}
	else{
		$_SESSION['error'] = "Input needed data to update first";
	}
 
?>