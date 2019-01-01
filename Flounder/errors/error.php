<!DOCTYPE html>
<html>
    <head>
        <title>Error</title>
        <link rel="stylesheet" type="text/css" href="main.css">
    </head>
    <body>
        <main>
            <h1>Error</h1>
            <p>There was a problem with your request.</p>
            <p>Error: <?php echo $error_message; ?></p>
            <br>
            <a href="main_view.php">Return to Main View</a><br>
            <a href="data_view.php">Return to Data View</a>
        </main>
    </body>
</html>