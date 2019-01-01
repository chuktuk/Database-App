<?php 
require_once('util/secure_conn.php'); // require a secure connection
require_once('util/valid_admin.php'); // force users to login
include 'admin_header.php'; 
include 'admin_sidebar.php'; 
?>
<!--add app path to form action -->
<section>
    <h3>Add New User</h3>
    <form action="<?php echo $app_path . 'index.php'; ?>"  
          id="add_user_form" method="post">
        
        <input type="hidden" name="action" value="add_admin">
        
        <h4><?php echo $add_user_message; ?></h4>
        
        <label>First Name: </label>
        <input type="text" name="first_name">
        <br>
        
        <label>Last Name: </label>
        <input type="text" name="last_name">
        <br>
        
        <label>Email Address: </label>
        <input type="email" name="email">
        <br>
        
        <div>
        <label>Password: </label>
        <input type="password" name="password">
        <br>
        <label>Reenter Password: </label>
        <input type="password" name="password2">
        <br>
        <label>Minimum password requirements:</label>
        <ul>
            <li>At least one uppercase and one lowercase letter</li>
            <li>At least one number</li>
            <li>Must be 8 or more characters</li>
        </ul>
        </div>
        
        <input type="submit" value="Create Admin">
        
    </form>
</section>

<?php include 'admin_footer.php'; ?>