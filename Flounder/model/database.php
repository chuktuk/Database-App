<?php
//get username and password from login screen
    $dsn = 'mysql:host=localhost;dbname=flounder_db';
    $un = 'testName';   // need to set
    $pw = 'testPa55word';   // need to set

    global $app_path;
    //connect to database creating PDO object
    try {
        $db = new PDO($dsn, $un, $pw);
        $success_message = 'You are connected to the database!';
        //set error mode for debugging PDO object statements, then remove
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        include 'errors/database_error.php';;
        exit;
    }

?>