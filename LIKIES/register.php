<?php 
    session_start();
    include('server.php') 
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    
    <link rel="stylesheet" href="stylesheet\register_login.css">
</head>
<body>
    <div class="logo">
        <img src="img/logofix.png" alt="logo">
    </div>
    
    <div class="header">
        <h3>Create your account for</h3>
        <h2 style="color: #f26d7e;">"LET'S START KEEP SPECIAL MOMENT"</h2>
    </div>

    <?php include('errors.php'); ?> 
        <?php if(isset($_SESSION['error'])) : ?>
            <div class="error">
                <p>
                    <?php 
                        echo $_SESSION['error'];
                        unset($_SESSION['error']);
                    ?>
                </p>
            </div>
        <?php endif ?>


    <div class="loginblock">
        <form action="register_db.php" method="post" enctype="multipart/form-data">
            
            <div class="input-group">
                <label for="username">Username<br></label>
                <input type="text" name="username" placeholder="8-10 characters" autofocus>
            </div>
            
            <div class="input-group">
                <label for="password_1">Password<br></label>
                <input type="password" name="password_1" placeholder="8-16 characters">
            </div>
            <div class="input-group">
                <label for="password_2">Comfirm Password<br></label>
                <input type="password" name="password_2" placeholder="Confirm your password" >
            </div>
            <div class="input-group">
                <label for="email">E-mail<br></label>
                <input type="email" name="email" placeholder="E-mail">
            </div>
            <div class="input-group">
                <label for="Bdate">Date of birth<br></label>
                <input type="date" name="Bdate">
            </div>
            <div class="input-group" style="text-align: center">
                <button type="submit" name="reg_user" class="btn">Sign up</button>
            </div>
            <div class="input-group" style="text-align: center">
            <p style="font-size: large; color:#333333">Already have an Account? <a href="login.php" style="color: #f26d7e">Sign in</a></p>
        </form>
    </div>

</body>
</html>