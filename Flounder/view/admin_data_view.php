<?php 
require_once('util/secure_conn.php'); // require a secure connection
require_once('util/valid_admin.php'); // force users to login
include 'admin_header.php'; 
include 'admin_sidebar.php'; 
?>

<section>
    <table>
        <thead>
            <?php display_column_headers($column_headers); ?>
        </thead>
        <tbody>
            <?php format_table($data, $num_rows, $SampleIDs); ?>
        </tbody>
    </table>
</section>

<?php include 'admin_footer.php'; ?>