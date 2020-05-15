<?php
    session_start();
    include('server.php') 
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <link rel="stylesheet" href="stylesheet\register_login.css">
</head>
<body>
    
    <div class="logo">
        <img src="img/logofix.png" alt="logo">
    </div>

    <form action="login_db.php" method="post">
        <?php if(isset($_SESSION['error'])) : ?>
            <div class="error">
                <h3>
                    <?php 
                        echo $_SESSION['error'];
                        unset($_SESSION['error']);
                    ?>
                </h3>
            </div>
        <?php endif ?>

    <div class="loginblock">        
        <div class="input-group">
            <label for="username"></label>
            <input type="text" name="username" placeholder="Username" autofocus>
        </div>
        <div class="input-group">
            <label for="password"></label>
            <input type="password" name="password" placeholder="Password">
        </div>
        
        <a href="login.php" style="color: #3b3b3b; float:right ">Forgot password?</a>

        <div class="input-group">
            <button type="submit" name="login_user" class="btn" style="width: 100%">SIGN IN</button>
        </div>
        <p>Don't have an account? <a href="register.php" style="color: #f26d7e">Sign Up</a></p>
    </div>
    </form>
</body>
</html>

<style>
    img{
        margin-bottom: 30px;
    }
    .loginblock{
        margin-top: 0px;
    }
    input{
        margin-top: 3%;
    }


</style>