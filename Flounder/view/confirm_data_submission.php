<?php
require_once('util/secure_conn.php'); // require a secure connection
include 'header.php'; 
include 'sidebar.php'; 
?>

<section>
    <h2>Confirm Data Submission</h2>
    
    <p>You are about to add data to the <?php echo $table; ?></p>
    <p>Please review data and make changes if necessary before submitting.</p>
    
    <!-- Display data entered from add data form in editable table -->
    <form action="<?php echo $app_path . 'index.php'; ?>" class="form" method="post">
        <input type="hidden" name="action" value="submit_data">
        <input type="hidden" name="table" value="<?php echo $table; ?>">
        
        <table>
            <tr> <!-- foreach statement to display table columns -->
                <?php foreach ($row_values as $key => $value) : ?>
                <th><?php echo $key; ?></th>
                <?php endforeach; ?>
            </tr>
            <tr> <!-- foreach statement to display data to add -->   
                <?php foreach ($row_values as $key => $value) : ?>
                <td><input type="text" name="<?php echo $key; ?>" 
                           value="<?php echo $value; ?>"></td>
                <?php endforeach; ?>
            </tr>
        </table>
        
        <input type="submit" value="Add Data to Database">
        <br>
        <a href="<?php echo $app_path . '?action=main_view'; 
            ?>">Cancel and return to Main View</a>
        
    </form>
</section>

<?php include 'footer.php'; ?>