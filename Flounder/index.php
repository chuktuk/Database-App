<?php
session_start();
require_once('util/main.php');
require_once('model/database.php');
require_once('model/flounder_data_model.php');
require_once('model/admin_db.php');
require_once('model/message.php');

// require the database.php file to connect to the database
// require the model file(s) to call necessary functions
// require the view file(s) to pass control to those pages

$action = filter_input(INPUT_POST, 'action');
if ($action == null) {
    $action = filter_input(INPUT_GET, 'action');
    if ($action == null) {
        $action = 'main_view';
    }
} 

switch ($action) {    
    case 'main_view':
        include 'view/main_view.php';
        break;
    
    case 'queries':
        include 'view/queries.php';
        break;
    
    case 'admin_login_form':
        $login_message = 'Please login to view the admin menu';
        include 'view/admin_login.php';
        break;
    
    case 'admin_login':
        $email = filter_input(INPUT_POST, 'email');
        $password = filter_input(INPUT_POST, 'password');
        
        // authenticate user
        if (authenticate_user($email, $password)) {
            $_SESSION['is_valid_admin'] = true;
            include('view/admin_menu.php');
        } else {
            $login_message = 'You must login to view this page';
            include('view/admin_login.php');
        }
        break;
        
    case 'admin_menu':
        include('view/admin_menu.php');
        break;
        
    case 'add_admin_form':
        $add_user_message = 'Please complete the form to add a user';
        include('view/admin_add_admin_form.php');
        break;
    
    case 'add_admin':
        $email = filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL);
        $password = filter_input(INPUT_POST, 'password');
        $password2 = filter_input(INPUT_POST, 'password2');
        $first_name = filter_input(INPUT_POST, 'first_name');
        $last_name = filter_input(INPUT_POST, 'last_name');
        
        // validate password and add user if success
        if ($password !== $password2) {
            $add_user_message = 'Failed to add admin. Passwords must match.';
            include('view/admin_add_admin_form.php');
        } else if (password_complexity($password) == false) {
            $add_user_message = 'Failed to add admin. Passwords must be at least '
                    . '8 characters, contain at least one number, and '
                    . 'uppercase/lowercase letters.';
            include('view/admin_add_admin_form.php');
        } else {
            add_admin($email, $password, $first_name, $last_name);
            $add_user_message = 'Admin successfully added to the database';
            include('view/admin_add_admin_form.php');
        }
        break;
        
    case 'admin_sql_prompt':
        $message = 'Please compose your custom query below';
        include('view/admin_sql_prompt.php');
        break;
        
    case 'sql_command':
        $query = filter_input(INPUT_POST, 'sql_string');
        $query_type = filter_input(INPUT_POST, 'query_type');
        
        if ($query_type == 'SELECT') {
            $data = run_select_query($query);
            $SampleIDs = get_SampleIDs($data);
            $num_rows = get_num_rows($SampleIDs);
            $key_values = key_values($data, $SampleIDs); // get keys in an array
            $column_headers = get_column_headers($key_values);
            // format table function
            include 'view/admin_data_view.php';
            break;
        } else {
            submit_query($query);
            include 'view/admin_sql_prompt.php';
            break;
        }
        
    case 'admin_logout':
        $_SESSION = array();
        session_destroy();
        $login_message = 'You have been logged out';
        include('view/admin_login.php');
        break;    
    
    // sampling data cases
    case 'get_all_sampling_data':
        $data = get_all_sampling_data();
        $SampleIDs = get_SampleIDs($data);
        $num_rows = get_num_rows($SampleIDs);
        $key_values = key_values($data, $SampleIDs); // get keys in an array
        $column_headers = get_column_headers($key_values);
        // format table function
        
        // format data for csv file
        $data_f = format_csv_data($data, $num_rows, $SampleIDs, $column_headers);
        
        // overwrite csv file
        write_csv($data_f);
        
        include 'view/data_view.php';
        break;
    case 'scdnr_sampling_data':
        $data = scdnr_sampling_data();
        $SampleIDs = get_SampleIDs($data);
        $num_rows = get_num_rows($SampleIDs);
        $key_values = key_values($data, $SampleIDs); // get keys in an array
        $column_headers = get_column_headers($key_values);
        // format table function
        
        // format data for csv file
        $data_f = format_csv_data($data, $num_rows, $SampleIDs, $column_headers);
        
        // overwrite csv file
        write_csv($data_f);
        
        include 'view/data_view.php';
        break;
    case 'custom_sampling_form'; // edit this one
        $field_list = get_sampling_data_fields();
        $form_action='get_sampling_data_custom';
        include 'view/custom_query_form.php';
        break;
    case 'get_sampling_data_custom';
        $start_date = filter_input(INPUT_POST, 'start_date');
        $end_date = filter_input(INPUT_POST, 'end_date');
        $fields = filter_input(INPUT_POST, 'fields', FILTER_SANITIZE_SPECIAL_CHARS,
                FILTER_REQUIRE_ARRAY);
        
        //process and store dates
        $start_date_p = process_date($start_date);
        $end_date_p = process_date($end_date);
        
        //run the query & set data view parameters
        $data_i = get_sampling_data_custom($start_date_p, $end_date_p);
        $SampleIDs = get_SampleIDs($data_i);
        $num_rows = get_num_rows($SampleIDs);

        $column_headers = $fields;
        
        //filter the data based on query results
        $data = filter_data($data_i, $fields, $SampleIDs);
        
        // format data for csv file
        $data_f = format_csv_data($data, $num_rows, $SampleIDs, $column_headers);
        
        // overwrite csv file
        write_csv($data_f);

        include 'view/data_view.php';
        break;
    
    // flounder data cases
    case 'get_all_flounder_data': 
        $data = get_all_flounder_data();
        $SampleIDs = get_SampleIDs($data);
        $num_rows = count(array_keys($data));
        $key_values = key_values($data, $SampleIDs); // get keys in an array
        $column_headers = get_column_headers($key_values);
        // format table function needed
        
        
        // format data for csv file
        $data_f = format_csv_data($data, $num_rows, $SampleIDs, $column_headers);
        
        // overwrite csv file
        write_csv($data_f);
        
        include 'view/data_view.php';
        break;
    case 'scdnr_flounder_data':
        $data = scdnr_flounder_data();
        $SampleIDs = get_SampleIDs($data);
        $num_rows = get_num_rows($SampleIDs);
        $key_values = key_values($data, $SampleIDs); // get keys in an array
        $column_headers = get_column_headers($key_values);
        // format table function
        
        // format data for csv file
        $data_f = format_csv_data($data, $num_rows, $SampleIDs, $column_headers);
        
        // overwrite csv file
        write_csv($data_f);
        
        include 'view/data_view.php';
        break;
    case 'get_all_gulf_flounder':
        $data = get_all_gulf_flounder();
        $SampleIDs = get_SampleIDs($data);
        $num_rows = get_num_rows($SampleIDs);
        $key_values = key_values($data, $SampleIDs); // get keys in an array
        $column_headers = get_column_headers($key_values);
        // format table function
        
        // format data for csv file
        $data_f = format_csv_data($data, $num_rows, $SampleIDs, $column_headers);
        
        // overwrite csv file
        write_csv($data_f);
        
        include 'view/data_view.php';
        break;
    case 'get_all_south_flounder':
        $data = get_all_south_flounder();
        $SampleIDs = get_SampleIDs($data);
        $num_rows = get_num_rows($SampleIDs);
        $key_values = key_values($data, $SampleIDs); // get keys in an array
        $column_headers = get_column_headers($key_values);
        // format table function
        
        // format data for csv file
        $data_f = format_csv_data($data, $num_rows, $SampleIDs, $column_headers);
        
        // overwrite csv file
        write_csv($data_f);        
        
        include 'view/data_view.php';
        break;
    case 'custom_flounder_form'; // edit this case using new functions
        $field_list = get_flounder_data_fields();
        $form_action = 'get_flounder_data_custom';
        include 'view/custom_query_form.php';
        break;
    case 'get_flounder_data_custom': // edit this case using new functions
        $start_date = filter_input(INPUT_POST, 'start_date');
        $end_date = filter_input(INPUT_POST, 'end_date');
        $fields = filter_input(INPUT_POST, 'fields', FILTER_SANITIZE_SPECIAL_CHARS,
                FILTER_REQUIRE_ARRAY);
        
        //process and store dates
        $start_date_p = process_date($start_date);
        $end_date_p = process_date($end_date);
        
        //run the query & set data view parameters
        $data_i = get_flounder_data_custom($start_date_p, $end_date_p);
        $SampleIDs = get_SampleIDs($data_i);
        $num_rows = get_num_rows($SampleIDs);

        $column_headers = $fields;        

        //filter the data based on query results
        $data = filter_data($data_i, $fields, $SampleIDs);

        // format data for csv file
        $data_f = format_csv_data($data, $num_rows, $SampleIDs, $column_headers);
        
        // overwrite csv file
        write_csv($data_f);        
              
        include 'view/data_view.php';
        break;
        
    case 'request_query_form':
        include 'view/request_query_form.php';
        break;
    
    case 'request_query':
        $from_name = trim(filter_input(INPUT_POST, 'name'));
        $from_address = trim(filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL));
        $body = filter_input(INPUT_POST, 'body', FILTER_SANITIZE_SPECIAL_CHARS);
        $subject = 'Query Request';
        $to_name = 'App Developer';
        $to_address = 'apptestemail0@gmail.com';
        $is_body_html = true;
        
        try {
            send_email($to_address, $to_name, $from_address, $from_name, $subject,
                    $body, $is_body_html);
            include 'view/success.php'; // consider making this a generic view
        } catch (Exception $e) {
            $error_message = $e->getMessage();
            include 'errors/error.php';
        }
        break;
    
    case 'contact_form':
        include 'view/contact_form.php';
        break;
    
    case 'contact':
        $from_name = trim(filter_input(INPUT_POST, 'name'));
        $from_address = trim(filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL));
        $body = filter_input(INPUT_POST, 'body', FILTER_SANITIZE_SPECIAL_CHARS);
        $subject = 'Contact';
        $to_name = 'App Developer';
        $to_address = 'apptestemail0@gmail.com';
        $is_body_html = true;
        
        try {
            send_email($to_address, $to_name, $from_address, $from_name, $subject,
                    $body, $is_body_html);
            include 'view/success.php'; // consider making this a generic view
        } catch (Exception $e) {
            $error_message = $e->getMessage();
            include 'errors/error.php';
        }
        break;
        
    case 'add_sampling_data_form':
        $samplers = get_samplers();
        $bottomtypes = get_bottom_types();
        include 'view/add_sampling_data_form.php';
        break;
    
    case 'add_sampling_data_confirm':       
        // set table variable to Sampling Data for confirm data submission screen
        $table = 'Sampling Data.';
        
        // get the inputs from the form
        $row_values = get_sampling_data_inputs();
                
        include 'view/confirm_data_submission.php';        
        break;
    
    case 'add_flounder_data_form':
        $SampleIDs = get_all_SampleIDs();
        $species = get_species();
        include 'view/add_flounder_data_form.php';
        break;
    
    case 'add_flounder_data_confirm':  
        // set table variable to Flounder Data for confirm data submission screen
        $table = 'Flounder Data.';
        
        // get the inputs from the form
        $row_values = get_flounder_data_inputs();
        
        include 'view/confirm_data_submission.php';  
        break;
    
    case 'submit_data':
        // get which table to modify
        $table = filter_input(INPUT_POST, 'table');
        
        // run functions for appropriate table entry
        if ($table === 'Sampling Data.') {
            $row_values = get_sampling_data_inputs();
            add_sampling_data($row_values);
            include 'view/success.php';
        } else if ($table === 'Flounder Data.') {
            $row_values = get_flounder_data_inputs();
            add_flounder_data($row_values);
            include 'view/success.php';
        } else {
            $error_message = 'Unable to add data.';
            include 'errors/error.php';
        }
               
        break;
    
    case 'add_sampler_form':
        $samplers = get_samplers();
        include 'view/add_sampler_form.php';
        break;
    
    case 'add_sampler':
        // get the new sampler from the form
        $new_sampler = filter_input(INPUT_POST, 'new_sampler');
        
        // add the sampler to the database
        add_new_sampler($new_sampler);
        
        include 'view/success.php';
        
        break;
    
    case 'add_bottom_type_form':
        $bottomtypes = get_bottom_types();
        include 'view/add_bottom_type_form.php';
        break;
    
    case 'add_bottom_type':
        // get the new bottom type from the form
        $new_bottomtype = filter_input(INPUT_POST, 'new_bottomtype');
        
        // add the bottom type to the database
        add_new_bottomtype($new_bottomtype);
        
        include 'view/success.php';
        break;
    
    // not using
    case 'download_data':
        // get the data to download
        /*$data = filter_input(INPUT_POST, 'data', FILTER_REQUIRE_ARRAY);
        $num_rows = filter_input(INPUT_POST, 'num_rows');
        $SampleIDs = filter_input(INPUT_POST, 'SampleIDs', FILTER_REQUIRE_ARRAY);
        $column_headers = filter_input(INPUT_POST, 'column_headers', FILTER_REQUIRE_ARRAY);
        
        // format data for csv download
        // $data_f = format_csv_data($data, $num_rows, $SampleIDs, $column_headers);
        
        //$data_f = filter_input(INPUT_POST, 'data_f[]', FILTER_REQUIRE_ARRAY);
        
        // prompt to save the csv file
        outputCSV($data_f);
        */
        
        $file_name = 'download.csv';
        
        // output headers so the file is downloaded
        header("Content-Type: text/csv");
        header("Content-Disposition: attachment; filename=$file_name");
    
        // disable caching
        header("Cache-Control: no-cache, no-store, must-revalidate"); // HTTP 1.1
        header("Pragma: no-cache"); // HTTP 1.0
        header("Expires: 0"); // Proxies
        
        // download file
        readfile($file_name);
        
        break;
}

?>