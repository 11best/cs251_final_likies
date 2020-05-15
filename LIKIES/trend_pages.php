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
            <p>Let's see, what people like.</p>
        </div>
        
        <?php 
             if(isset($_GET['category'])){
                $c_name = $_GET['category'];

                $select_c = "SELECT COUNT(record.E_ID), entertainment.E_name, entertainment.C_name, record.E_pic
                                FROM record
                                INNER JOIN entertainment
                                ON record.E_ID = entertainment.E_ID
                                WHERE entertainment.C_name = '$c_name'
                                GROUP BY entertainment.E_ID
                                ORDER BY COUNT(record.E_ID) DESC LIMIT 5";
                $run_c = mysqli_query($conn, $select_c);
                $i = 1;
                while($row = mysqli_fetch_array($run_c)){
                    $num = $row['COUNT(record.E_ID)'];
                    $e_name = $row['E_name'];
                    $pic = $row['E_pic'];
                    
                    switch($i){
                        case 1 : echo '<div class="datacontainer" style="background-color: #e82768">'; break;
                        case 2 : echo '<div class="datacontainer" style="background-color: #eb346f">'; break;
                        case 3 : echo '<div class="datacontainer" style="background-color: #ff8fb5">'; break;
                        case 4 : echo '<div class="datacontainer" style="background-color: #ffbed4">'; break;
                        case 5 : echo '<div class="datacontainer" style="background-color: #ffdfea">'; break;
                    }
      
        ?>                                                      
                <div class="datacontainer-e_trend">
                    <?php echo $i; echo "."; ?>
                    <?php echo $e_name ?>
                </div>

                    <?php
                        if(!empty($pic)){
                            echo ' <div class="trend-pic">
                                        <img src="uploadimg/entimage/'.$pic.'">
                                    </div>';
                        }
                    ?>
                
                <div class="datacontainer-num">
                    <?php echo $num ?><img src="icon\human.png" width="25px" style="margin: 0 0 0 10px">
                </div>                               
            </div>
        <?php 
                $i++; 
                }       
             }
        ?>
    </div>

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
</body>

</html>