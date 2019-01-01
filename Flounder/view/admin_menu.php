<?php 
require_once('util/secure_conn.php'); // require a secure connection
require_once('util/valid_admin.php'); // force users to login
include 'admin_header.php';  
?>

<section>
    <h1>Admin Menu</h1>
    <h3>Choose a Link Below</h3>
    
    <?php include 'admin_links.php'; ?>
    
</section>

<?php include 'footer.php'; ?>