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
    
    if(isset($_GET['remark'])){
        $posted = true;
    }
    else{
        $posted = false;
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
    <?php
        if(($posted)==true){
            header("refresh:1.5; url = index.php");
            echo "<script> Swal.fire({
                icon: 'success',
                title: 'Complete',
                showConfirmButton: false,
                timer: 1500
            })
            </script>";
        }
    ?>

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
            <p>Make a note of your special moments.</p>
        </div>

        <div class="formblock">
        <form action="upload_db.php" method="post" enctype="multipart/form-data">
            
            <img src="icon\addpic.png" onclick="E_Click()" id="entdisplay" style="cursor: pointer;">
            <input type="file" name="e_image" onchange="E_Image(this)" id="entImage" style="display: none">
            
            <div class="input-group">
                <label for="e_name" style="word-spacing: 30px">Name :</label>
                <input type="text" name="e_name" placeholder="Name of your entertainment" autofocus>
            </div>      
            <div class="input-group">
                <label for="category">Category  : </label>
                <input id="cartoon" onclick="showYear();" type="radio" name="category" class="r-category" value="Cartoon" checked="checked"> Cartoon
                <input id="fiction" onclick="showAuthor();" type="radio" name="category" class="r-category" value="Fiction"> Fiction
                <input id="movie" onclick="showYear();" type="radio" name="category" class="r-category" value="Movie"> Movie
                <input id="music" onclick="showArtist();" type="radio" name="category" class="r-category" value="Music"> Music
                <input id="series" onclick="showYear();" type="radio" name="category" class="r-category" value="Series"> Series
            </div>
            
            <div id="divYear" class="hide" style="display: block">
                <label for="e_year" style="word-spacing: 40px">Year :</label>
                <input type="int" id="year" name="e_year" placeholder="Year of your entertainment" >
            </div>
            <div id="divAuthor" class="hide" style="display: none">
                <label for="e_author" style="word-spacing: 20px">Author :</label>
                <input type="text" id="author" name="e_author" placeholder="Author name" >
            </div>
            <div id="divArtist" class="hide" style="display: none">
                <label for="e_artist" style="word-spacing: 30px">Artist :</label>
                <input type="text" id="artist" name="e_artist" placeholder="Artist name" >
            </div>

            <div class="input-group">
                <label for="r_date" style="word-spacing: 40px">Date :</label>
                <input type="date" name="r_date">
            </div>

            <p style="word-spacing: 25px">Rating :</p>

            <div class="rate"> 
                <label>  
                    <input type="radio" id="star5" name="rate" value="5" />
                    <img src="icon\heart_fill.jpg">
                </label>
                <label>
                    <input type="radio" id="star4" name="rate" value="4" />
                    <img src="icon\heart_fill.jpg">
                </label>
                <label>
                    <input type="radio" id="star3" name="rate" value="3" />
                    <img src="icon\heart_fill.jpg">
                </label>
                <label>
                    <input type="radio" id="star2" name="rate" value="2" />
                    <img src="icon\heart_fill.jpg">
                </label>
                <label>
                    <input type="radio" id="star1" name="rate" value="1" />
                    <img src="icon\heart_fill.jpg">
                </label>
            </div>
            
            <div class="input-group">
                <label for="e_detail">Description : <br></label>
                <input type="text" name="e_detail" style="width: 97%; height:70px">        
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

            <div class="input-group" style="text-align: center">
                <button type="submit" name="upload" class="btn">SUBMIT</button>
            </div>
        </form>
    </div>
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

    <script src="scripts\scripts.js"></script>
</body>



</html>