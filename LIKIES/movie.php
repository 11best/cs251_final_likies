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
                <p>All of movie that you like.</p>
            </div>
            <div style="width: 90%; height: 20px; border-bottom: 2px solid #e1ddde; text-align: right; margin: 10px 70px 20px 70px">
                <span style="font-size: 18px; padding: 0 5px; background-color: #f0f0f0; margin-right:20px; color:#b3b3b3">
                    sorted by date (newest)
                </span>
            </div>

            <?php 
                $Uname = $_SESSION['username'];
                $all = "SELECT record.* , entertainment.E_name, entertainment.C_name
                        FROM entertainment 
                        INNER JOIN record
                        ON record.E_ID = entertainment.E_ID AND record.U_ID = (SELECT U_ID FROM member WHERE username = '$Uname') AND entertainment.C_name = 'Movie'
                        ORDER BY record.E_date DESC";
                $result = mysqli_query($conn, $all);
                if(isset($result)){

                //display data
                    while($row = mysqli_fetch_array($result)){
                        $U_ID = $row['U_ID'];
                        $E_ID = $row['E_ID'];
                        $C_name = $row['C_name'];
                        $E_name = $row['E_name'];
                        $E_date = $row['E_date'];
                        $E_detail = $row['E_detail'];
                        $E_rating = $row['E_rating'];
            
                        echo '<div class="datacontainer">
                        <a href="pages.php?uid='.$U_ID.'&eid='.$E_ID.' ">
                            <div class="datacontainer-category">
                                '.$C_name.' 
                            </div>
                            <div class="datacontainer-e_name">
                                '.$E_name.'
                            </div>
                            <div class="datacontainer-e_rating">'
                                .$E_rating.'<img src="icon\heart_fill.jpg" width="20px" style="margin: 0 0 0 10px">
                            </div>
                        </a>
                    </div>';
           
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