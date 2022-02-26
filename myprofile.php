<?php
 if(isset($_POST) & !empty($_POST)){
include "conn.php";
$email = $_POST['email'];
$sql = "SELECT * FROM  `loginsys` username where email='$email'";
$res = mysqli_query($conn, $sql);
$rest = mysqli_fetch_array($res);
$count = mysqli_num_rows($res);
if($count > 0){
}else{
echo "User name does not exist in database";
}
 }
?>
<form class="form" method="post" name="login" action="#">
 <h1 class="email verification">email verification</h1>
 <input type="text" class="input" name="name" placeholder="name" required /> 
 <input type="text" class="input" name="email" placeholder="conifirm email" required />      
 <button type="submit">Submit</button>
</form>
<p class="link"><a href="login.php">Click to Login</a></p>