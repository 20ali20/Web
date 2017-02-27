
<?php

//This is the page that user will see after a successful login attempt, there is a hidden timer set to 1 min and after 
//1 min is over, user will automatically  log out 

    include ('comp424.php');

    session_start();
    include_once 'comp424.php';

    if(!isset($_SESSION['users']))
    {
        header("Location: login.php");
    }

    $res=mysqli_query($connection,"SELECT * FROM users WHERE userid=".$_SESSION['users']);
    $userRow=mysqli_fetch_array($res);


?>
<!DOCTYPE >
<html >
<head>
    <meta  content="text/html; charset=utf-8" />
    
<!--    logout after 1 min or 60 seconds-->
    <meta http-equiv="refresh" content="60;url=logout.php?logout" />
    <title>lab4 - Home</title>
    <link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body>
    <center>
        <h1><a href="logout.php?logout">Sign Out</a> </h1>
        <h1 style=" font-size:3em; color:white;">Welcome Back <?php echo $userRow['firstName']." ".$userRow['lastName']." ! You have logged in ".$userRow['numLogin']." times and your login date was ".$userRow['lastLogin']; ?><br>
            You may download the Company Confidential File now!
            
        </h1>
        <br>
        <h1 style="font-size:2em; color:green;"> <a href="company_confidential_file.txt" download > Click Here to Download </a>  </h1>
    </center>


</body>
</html>