<?php 
require_once('util/secure_conn.php'); // require a secure connection
// require_once('util/valid_user.php'); // force users to login
include 'header.php'; 
include 'sidebar.php'; 
?>


<section>
    <div>
        <h2>Standard Queries</h2>
        <ul>
            <li>
                <a 
               href="<?php echo $app_path . 
                      'index.php?action=get_all_sampling_data'; 
                ?>">View All Sampling Data</a>
            </li>
           <li>
               <a 
                href="<?php echo $app_path .
                       'index.php?action=scdnr_sampling_data';
              ?>">View SCDNR Sampling Data</a>
           </li>
           <li>
                <a
               href="<?php echo $app_path . 
                       'index.php?action=get_all_flounder_data';
               ?>">View All Flounder Data</a>
          </li>
           <li>
               <a 
               href="<?php echo $app_path .
                       'index.php?action=scdnr_flounder_data';
                ?>">View SCDNR Flounder Data</a>
          </li>
            <li>
               <a
               href="<?php echo $app_path .
                        'index.php?action=get_all_gulf_flounder';
               ?>">View Gulf Flounder Data</a>
          </li>
          <li>
              <a 
                href="<?php echo $app_path .
                        'index.php?action=get_all_south_flounder';
               ?>">View Southern Flounder Data</a>
           </li>
        </ul>
    </div>

    <div>
        <h2>Form Queries</h2>
        <ul>
            <li>
                <a href="<?php echo $app_path . 
                     'index.php?action=custom_sampling_form'; 
                ?>">Custom Sampling Query</a>
            </li>
            <li>
                <a href="<?php echo $app_path .
                     'index.php?action=custom_flounder_form'; 
                ?>">Custom Flounder Query</a>
            </li>
            <li>
                <a href="<?php echo $app_path .
                     'index.php?action=request_query_form'; 
                ?>">Request Special Query</a>
            </li>
        </ul>
    </div>    
</section>
<?php include 'footer.php'; ?>