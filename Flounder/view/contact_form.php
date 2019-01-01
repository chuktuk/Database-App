<?php
require_once('util/secure_conn.php'); // require a secure connection
include 'header.php'; 
include 'sidebar.php'; 
?>

<section>
    <h3>Contact Us</h3>
    <h5>Response Time Usually 12-24 Hours.</h5>
    <form action="<?php echo $app_path . 'index.php'; ?>" class="form" method="post">
        <input type="hidden" name="action" value="contact">
        
        <label>Name: </label>
        <input type="text" name="name">
        <br>
        
        <label>Email: </label>
        <input type="email" name="email">
        <br>
        
        <label>Please enter your request below:</label>
        <br>
        <textarea name="body"></textarea>
        <br>
        
        <input type="submit" value="Submit Request">
        
    </form>
</section>

<?php include 'footer.php'; ?>