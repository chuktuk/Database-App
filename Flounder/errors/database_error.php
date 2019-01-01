<?php 
require_once('util/secure_conn.php'); // require a secure connection
include 'header.php';
include 'sidebar.php';
?>

<section>
    <h1>Error</h1>
        <p>There was a problem with your request.</p>
        <p>Error: <?php echo $error_message; ?></p>
        <br>
</section>

<?php include 'footer.php'; ?>