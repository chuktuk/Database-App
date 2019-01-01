<?php 
require_once('util/secure_conn.php'); // require a secure connection
require_once('util/valid_admin.php'); // force users to login
include 'admin_header.php';
include 'admin_sidebar.php';
?>

<section>
    <h1>Flounder Database Administration</h1>
    <h3>SQL Prompt for Custom Queries</h3>
    
    <p><?php echo $message; ?></p>
    
    <form action="<?php echo $app_path; ?>" method="post" class="cmd_prompt">
        <input type="hidden" name="action" value="sql_command">
        
        <label>Type of Query:</label><br>
        <input type="radio" name="query_type" value="SELECT" checked="checked">
        <label>SELECT and Display/Download Data</label><br>
        <input type="radio" name="query_type" value="Other">
        <label>All Other Queries</label>
        <br>
        
        <label>Enter SQL Code</label><br>
        <textarea name="sql_string"></textarea>
        
        <p>Caution: Changes to the database are permanent and lost data
        cannot be retrieved! It is recommended to login to contact your database
        administrator to backup the database prior to executing DDL statements.</p>
        
        <label>Submit SQL Code to Flounder Database</label>
        <input type="submit" value="Execute Query">
        
    </form>
    
</section>

<?php include 'admin_footer.php'; ?>