<?php
    session_start();
    include('server.php');

    $errors = array();

    if(isset($_POST['reg_user'])){
        
        $username = mysqli_real_escape_string($conn, $_POST['username']);
        $email = mysqli_real_escape_string($conn, $_POST['email']);
        $password_1 = mysqli_real_escape_string($conn, $_POST['password_1']);
        $password_2 = mysqli_real_escape_string($conn, $_POST['password_2']);
        $Bdate = mysqli_real_escape_string($conn, $_POST['Bdate']);
  
        if(empty($username) and empty($password_1) and empty($password_2) and empty($email)){
            array_push($errors, "please enter your information");
            $_SESSION['error'] = "please enter your information";
            header("location: register.php");
        }
        else if(empty($username) or empty($password_1) or empty($password_2) or empty($email) or empty($Bdate)){
            if(empty($username)){
                array_push($errors, "Username is require");
                $_SESSION['error'] = "Username is require";
                header("location: register.php");
            }
            if(empty($email)){
                array_push($errors, "Email is require");
                $_SESSION['error'] = "Email is require";
                header("location: register.php");
            }
            if(empty($password_1)){
                array_push($errors, "Password is require");
                $_SESSION['error'] = "Password is require";
                header("location: register.php");
            }
            if($password_1 != $password_2){
                array_push($errors, "Passwords do not match");
                $_SESSION['error'] = "Passwords do not match";
                header("location: register.php");
            }
            if(empty($Bdate)){
                array_push($errors, "Bdate is require");
                $_SESSION['error'] = "Please enter your birth day";
                header("location: register.php");
            }
        }

        if(strlen($username)<8 and strlen($username)>10){
            array_push($errors, "username must be 8-10");
            $_SESSION['error'] = "Username must be 8-10 characters";
            header("location: register.php");
        }
        else if(strlen($password)<8 and strlen($password)>10){
            array_push($errors, "Password must be 8-10");
            $_SESSION['error'] = "Password must be 8-10 characters";
            header("location: register.php");
        }
    
        $user_check_query = "SELECT * FROM member WHERE username = '$username' OR email = '$email' ";
        $query = mysqli_query($conn, $user_check_query);
        $result = mysqli_fetch_assoc($query);

        if($result) { //if user exist
            if($result['username'] === $username){
                array_push($errors,"Username already exists");
                $_SESSION['error'] = "Username already exists";
                header("location: register.php"); 
            }
            if($result['email'] === $email) {
                array_push($errors, "Email already exists");
                $_SESSION['error'] = "Email already exists";
                header("location: register.php");
            }
        }

        else if(count($errors) == 0){
            
            $password_e = $password_1;
            $sql = "INSERT INTO member (username, password, email, DOB) 
                    VALUES ('$username', '$password_e', '$email', '$Bdate')";
            mysqli_query($conn,$sql);
            
            $_SESSION['username'] = $username;
            $_SESSION['success'] = "You are now logged in";
            header('location: index.php');
        }
    }

?>