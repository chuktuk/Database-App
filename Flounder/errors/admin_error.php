<?php
require_once('util/secure_conn.php'); // require a secure connection
require_once('util/valid_admin.php'); // force users to login
include 'admin_header.php';  
include 'admin_sidebar.php';
?>
<section>
    <h1>Error</h1>
        <p>There was a problem with your request.</p>
        <p>Error: <?php echo $error_message; ?></p>
        <br>
</section>

<?php include 'admin_footer.php'; ?>