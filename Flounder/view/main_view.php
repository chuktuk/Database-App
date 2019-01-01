<?php 
require_once('util/secure_conn.php'); // require a secure connection
include 'header.php'; 
?>

<!-- using site nav links in sidebar.php -->
<section class="main_view">
    <h1>Main View</h1>
    <h3>Choose a Link Below</h3>
    <?php include 'links.php'; ?>
</section>
<div>
    <img id="flounder_pic" src="<?php echo $app_path . 'images/flounder-large.jpg'; ?>"
         alt="flounder picture" title="gulf flounder">
</div>
<?php include 'footer.php'; ?>
