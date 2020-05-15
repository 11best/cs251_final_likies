<?php 
    session_start();
    include('server.php');
    $errors = array();

    if(isset($_POST['login_user'])){
        $username = mysqli_real_escape_string($conn, $_POST['username']);
        $password = mysqli_real_escape_string($conn, $_POST['password']);

        //check empty
        if(empty($username) and empty($password) ){
            array_push($errors, "please enter username and password");
            $_SESSION['error'] = "please enter username and password";
            header("location: index.php");
        }
        else if(empty($username) or empty($password)){
            if(empty($username)){
                array_push($errors, "Username is required");
                $_SESSION['error'] = "Username is required";
                header("location: index.php");
            }
            if(empty($password)){
                array_push($errors, "Password is required");
                $_SESSION['error'] = "Password is required";
                header("location: index.php");
            }
        }

        if(count($errors)==0){
            
            $query = "SELECT * FROM member WHERE username = '$username' AND password = '$password' ";
            $result = mysqli_query($conn, $query);
            

            if(mysqli_num_rows($result) != 1){
                array_push($errors, "Wrong username/password");
                $_SESSION['error'] = "Wrong username/password try again!";
                header("location: index.php");
            } else {
                $_SESSION['username'] = $username;
                $_SESSION['success'] = "You are now logged in";
                header("location: index.php");
                
            }
        }
    }

?>