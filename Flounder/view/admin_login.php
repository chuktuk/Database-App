<?php 
require_once('util/secure_conn.php'); // require a secure connection
include 'admin_header.php'; 
?>

<section>
    <h1>Login</h1>

    <form action="<?php echo $app_path . 'index.php'; ?>" method="post"
          id="login_form">
        
        <input type="hidden" name="action" value="admin_login">
        
        <label>Email Address: </label>
        <input type="email" name="email">
        <br>
        
        <label>Password: </label>
        <input type="password" name="password">
        
        <label>&nbsp;</label>
        <input type="submit" value="Login">
        
    </form>
    
    <p><?php echo $login_message; ?></p>
    
    <p>
    <a href="<?php echo $app_path . '?action=main_view'; ?>">Return to Database</a>
    </p>
    
</section>

<?php include 'admin_footer.php'; ?>