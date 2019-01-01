<?php
require_once('util/secure_conn.php'); // require a secure connection
include 'header.php'; 
include 'sidebar.php'; 
?>

<section>
    <h2>Add New Bottom Type</h2>
    
    <form action="<?php echo $app_path . 'index.php'; ?>" class="form" method="post">
        <input type="hidden" name="action" value="add_bottom_type">
        
        <h4>Current Bottom Types:</h4><br>
        <table>
            <th>Bottom Type</th>
            <?php foreach ($bottomtypes as $bottomtype) : ?>
            <td><?php echo $bottomtype; ?></td>
            <?php endforeach; ?>
        </table>
        <br>
        
        <label>New Bottom Type: </label>
        <input type="text" name="new_bottomtype">
        <br>
        
        
        <input type="submit" value="Add New Bottom Type">
        
    </form>
</section>

<?php include 'footer.php'; ?>