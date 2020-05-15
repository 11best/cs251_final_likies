<?php 
    session_start();
    include('server.php');

    if(!isset($_SESSION['username'])){
        header('location: login.php');
    }
    if(isset($_GET['logout'])){
        session_destroy();
        unset($_SESSION['username']);
        header('location: login.php');
    }
   
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LIKIES</title>

    <link rel="stylesheet" href="stylesheet\index.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
</head>

<body>
    <div class="main">     
    <div class="upperbar">
            <div class="logo">
                <a href="index.php">
                    <img alt="logo" src="img/logofix.png" width="140px" >
                </a>
            </div>
            <div class="searchbtn">
                <a href="search.php">
                    <img src="icon/search-black.png" width="28px" >
                </a>
            </div>
            <!-- loged in user -->
            <?php if(isset($_SESSION['username'])) :?>
                <a href="index.php"><strong><?php echo $_SESSION['username'];?></strong> </a>
                <a href="index.php?logout='1'"> <img alt="logout" src="icon/log-out.png" width="20px" style="padding: 0;top: 4px; position: relative;padding-right: 10px;"> </a>
            <?php endif ?>
        </div>
   
        <div class="page_info">
            <p>This is what you like.</p>
        </div>

        <?php 
            if( (isset($_GET['eid'])) and (isset($_GET['uid']))){
                $e_id = $_GET['eid'];
                $u_id = $_GET['uid'];

                $select_r = "SELECT record.* , entertainment.E_name, entertainment.C_name
                                FROM entertainment 
                                INNER JOIN record
                                ON record.E_ID = entertainment.E_ID  AND record.U_ID = '$u_id'
                                WHERE record.E_ID = '$e_id' AND record.U_ID = '$u_id'";
                $run_r = mysqli_query($conn, $select_r);
                
                if($row = mysqli_fetch_array($run_r)){
                    $post_date = $row['E_date'];
                    $post_rating = $row['E_rating'];
                    $post_detail = $row['E_detail'];
                    $post_pic = $row['E_pic'];
                    $post_E_name = $row['E_name'];
                    $post_category = $row['C_name'];

                    if($post_category == 'Fiction' or $post_category == 'Music'){
                        $select_adt = "SELECT create_by.E_ID, create_by.E_creator, entertainment.E_name
                                        FROM create_by
                                        INNER JOIN entertainment
                                        ON create_by.E_ID = entertainment.E_ID
                                        WHERE entertainment.E_ID = '$e_id'";
                        $run_adt = mysqli_query($conn, $select_adt);
                        if($nrow = mysqli_fetch_array($run_adt)){
                            $post_E_creator = $nrow['E_creator'];
                        }
                        else echo "can't fetch array from create_by";
                    }
                    else{
                        $select_adt = "SELECT create_in.E_ID, create_in.E_year, entertainment.E_name
                                        FROM create_in
                                        INNER JOIN entertainment
                                        ON create_in.E_ID = entertainment.E_ID
                                        WHERE entertainment.E_ID = '$e_id'";
                        $run_adt = mysqli_query($conn, $select_adt);
                        if($nrow = mysqli_fetch_array($run_adt)){
                            $post_E_year = $nrow['E_year'];
                        }
                        else echo "can't fetch array from create_in";
                    }
                }
                else{
                    echo "can't fetch record table";
                }    
        ?>
    
        <div class="full-block">
            <form action="edit_page.php?uid=<?php echo $u_id; ?>&eid=<?php echo $e_id; ?>" method="post" onsubmit="return confirm('Are you sure you want to edit this?');">
                <button type="submit" name="edit-btn" class="edit-btn">Edit</button>
            </form>
            <?php 
                if($post_pic != NULL){
                    echo '<img src="uploadimg/entimage/'.$post_pic. '" width="140px" >';
                }
            ?>
           
            <span style="color: black; word-spacing: 30px"> Name :</span> <span style="margin-left: 0"><?php echo $post_E_name; ?></span><br>
            <span style="color: black">Category :</span> <span style="margin-left: 0"><?php echo $post_category; ?></span><br>

            <?php 
                if($post_category == 'Fiction'){
                    echo '<span style="color: black; word-spacing: 20px">Author :</span> <span style="margin-left: 0"> '.$post_E_creator.'</span><br>';
                }
                else if($post_category == 'Music'){
                    echo '<span style="color: black; word-spacing: 20px">Artist :</span> <span style="margin-left: 0"> '.$post_E_creator.'</span><br>';
                }
                else{
                    echo '<span style="color: black; word-spacing: 40px">Year :</span> <span style="margin-left: 0"> '.$post_E_year.'</span><br>';
                }
            ?>
            
            <span style="color: black; word-spacing: 23px">Rating :</span> <span style="margin-left: 0"><?php echo $post_rating; ?></span><br>
            <span style="color: black">Added on</span><span style="margin-left: -10px; color: black"><?php echo date("d F Y", strtotime("$post_date")); ?></span><br>
            <span style="color: black">Description :</span> <span style="margin-left: 0"><?php echo $post_detail; ?></span>
            
            <form action="delete_db.php?uid=<?php echo $u_id; ?>&eid=<?php echo $e_id; ?>" method="post" onsubmit="return confirm('Are you sure you want to delete this?');">
                <button type="submit" name="del-btn" class="del-btn"><img src="icon\trash-white.png"></img></button>
            </form> 

        </div>
        
    <?php
        }
    ?>
    </div> <!-- end main -->
            
    <div class=sidenav>
        <a href="index.php"><img src="icon/home.png" width="30px">Home</a><br>
        <a href="cartoon.php"><img src="icon/cartoon.png" width="30px">Cartoon</a> <br>
        <a href="fiction.php"><img src="icon/fiction.png" width="30px">Fiction</a> <br>
        <a href="movie.php"><img src="icon/movie.png" width="30px">Movie</a> <br>
        <a href="music.php"><img src="icon/music.png" width="30px">Music</a> <br>
        <a href="series.php"><img src="icon/series.png" width="30px">Series</a> <br>
        <a href="trend.php"><img src="icon/fire.png" width="30px">Trend</a>
        <a href="stats.php"><img src="icon/stat.png" width="30px">Stats</a>
    </div>

     <script src="scripts\scripts.js"></script>
</body>


</html>