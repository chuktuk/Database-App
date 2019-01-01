<?php
require_once('util/secure_conn.php'); // require a secure connection
include 'header.php'; 
include 'sidebar.php'; 
?>

<section>
    <h2>Add New Sampler</h2>
    
    <form action="<?php echo $app_path . 'index.php'; ?>" class="form" method="post">
        <input type="hidden" name="action" value="add_sampler">
        
        <h4>Current Samplers:</h4><br>
        <table>
            <th>Sampler</th>
            <?php foreach ($samplers as $sampler) : ?>
            <td><?php echo $sampler; ?></td>
            <?php endforeach; ?>
        </table>
        <br>
        
        <label>New Sampler: </label>
        <input type="text" name="new_sampler">
        <br>
        
        
        <input type="submit" value="Add New Sampler">
        
    </form>
</section>

<?php include 'footer.php'; ?>