<?php 
require_once('util/secure_conn.php'); // require a secure connection
//require_once('util/valid_user.php'); // force users to login
include 'header.php'; 
include 'sidebar.php'; 
?>


<section>
    <h3>Custom Query Form</h3>
    <form action="<?php echo $app_path . 'index.php'; ?>" 
          class="form" method="post">
        <input type="hidden" name="action" 
               value="<?php echo $form_action; ?>">
        <label>Start Date (mm-dd-yyyy): <input type="date" name="start_date" 
                                              value="2007-03-07">
        </label><br>
        <label>End Date (mm-dd-yyyy): <input type="date" name="end_date" 
                                          value="<?php echo date('Y-m-d'); ?>">
        </label><br>
        <label id="custom_query_grid">Select Fields to 
            Include with Query:<br>
         <?php foreach ($field_list as $field) : ?>
            <input type="checkbox" name="fields[]" value="<?php echo "$field"; ?>">
            <?php echo "$field"; ?><br>
            <?php endforeach; ?>
        </label>
        <input type="submit" value="Submit Query">
    </form>
</section>
<?php include 'footer.php'; ?>