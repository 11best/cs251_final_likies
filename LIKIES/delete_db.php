<?php 
    session_start();
    include('server.php');
    $errors = array();

    if(isset($_POST['del-btn'])){
        $e_id = $_GET['eid'];
        $u_id = $_GET['uid'];

        $del_sql = "DELETE FROM record
                    WHERE E_ID = '$e_id' AND U_ID = '$u_id'";

        if(mysqli_query($conn, $del_sql)){
            header("location: index.php");
        }
        else{
            echo "can not delete";
        }
    }
?>