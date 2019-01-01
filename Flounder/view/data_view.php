<?php 
require_once('util/secure_conn.php'); // require a secure connection
include 'header.php'; 
include 'sidebar.php'; 
?>

<p>
<a href="https://localhost/netbeansprojects/Flounder/download.csv" target="_blank"
   class="button">Download Data</a>
</p>

<section>
    <table class="table">
        <thead>
            <?php display_column_headers($column_headers); ?>
        </thead>
        <tbody>
            <?php format_table($data, $num_rows, $SampleIDs); ?>
        </tbody>
    </table>
</section>

<?php include 'footer.php'; ?>