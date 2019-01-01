<?php
    //process dates, return error message if fails
function process_date($date) {
    try {
        $date_i = new DateTime($date);
    } catch (Exception $e) {
        display_error($e->getMessage());
    }
    
    //format and return date
    $date_f =$date_i->format('Y-m-d');
    return $date_f;
}

// limit returned data to specified fields (probably has issues with $data format)
function filter_data($data_i, $fields, $SampleIDs) {
    $data = array();
    $row = array();
    for ($v = 0; $v < count($SampleIDs); $v++) {
        for ($i = 0; $i < count($fields); $i++) { 
            $entry = $data_i[$SampleIDs[$v]][$fields[$i]];
            $row[$i] = $entry;
            $data[$SampleIDs[$v]] = $row;
        }
    }            
    return $data;
}

// get sample IDs from returned query
function get_SampleIDs($data) {
    $SampleIDs = array_keys($data);
    return $SampleIDs;
}

// get number of rows from returned query for format table function
function get_num_rows($SampleIDs) {
    $num_rows = count($SampleIDs);
    return $num_rows;
}

// format key values to get column headers
function key_values($data, $SampleIDs) {
    $key_values = $data[$SampleIDs[0]];
    return $key_values;
}

// get column headers from returned query
function get_column_headers($key_values) {
    $column_headers = array_keys($key_values);
    // array_unshift($column_headers, 'SampleID');
    return $column_headers;
}
// display column headers for table (wrap in <th> tags using foreach
function display_column_headers($column_headers) {
    $tag_th = 'th';
    $before_th = '<' . $tag_th . '>';
    $after_th = '</' . $tag_th . '>';
    $tag_tr = 'tr';
    $before_tr = '<' . $tag_tr . '>';
    $after_tr = '</' . $tag_tr . '>';
    echo $before_tr;
    foreach ($column_headers as $column_header) {
        $ch = $before_th . $column_header . $after_th;
        echo $ch;
    }
    echo $after_tr;
}

// format data for table body
function format_table($data, $num_rows, $SampleIDs) {
    $tag_tr = 'tr';
    $before_tr = '<' . $tag_tr . '>';
    $after_tr = '</' . $tag_tr . '>';
    $tag_td = 'td';
    $before_td = '<' . $tag_td . '>';
    $after_td = '</' . $tag_td . '>';
    
    for ($i = 0; $i < $num_rows; $i++) {
        //$td_a = $before_tr . $before_td . $SampleIDs[$i] . $after_td;
        $cells = $data[$SampleIDs[$i]]; 
        echo $before_tr;
        foreach ($cells as $cell) {
            $entry = $before_td . $cell . $after_td;
            echo $entry;
        }
        echo $after_tr;
    }
    
}

// this function is the best way to deal with returned query data
function format_csv_data($data, $num_rows, $SampleIDs, $column_headers) {
    $array = [];
    $array[0] = $column_headers;
    for ($i = 0; $i < $num_rows; $i++) {
        $rows = $data[$SampleIDs[$i]];
        $array[] = $rows;
    }
    return $array;
}

function outputCSV($data, $file_name = 'download.csv') {
    // output headers so the file is downloaded
    header("Content-Type: text/csv");
    header("Content-Disposition: attachment; filename=$file_name");
    
    // disable caching
    header("Cache-Control: no-cache, no-store, must-revalidate"); // HTTP 1.1
    header("Pragma: no-cache"); // HTTP 1.0
    header("Expires: 0"); // Proxies
    
    // start the output
    $output = fopen("php://output", "w");
    
    // loop through data array
    foreach ($data as $datum) {
        fputcsv($output, $datum);
    }
    
    //close file
    fclose($output);
}

// write a nested array to a csv file for download (not using currently)
function write_csv($data) {
    $file = fopen('download.csv', 'wb');
    foreach ($data as $datum) {
        fputcsv($file, $datum);
    }            

    fclose($file);
}

// formats sampling data returned from query
function format_sampling_data($data_i) {
    $SampleIDs = get_SampleIDs($data_i);
        
        $data = [];
        
        // extract sampling data into an array
        foreach ($SampleIDs as $SampleID) {
            $trips = $data_i[$SampleID];
            $num_trips = count($trips);
            for ($i = 0; $i < $num_trips; $i++) {
                array_push($data, $trips[$i]);
            }
        }
        
        // set SampleID as first column
        for ($i = 0; $i < count($data); $i++) {
            $data[$i] = array('SampleID' => $SampleIDs[$i]) + $data[$i];
        }
        
        return $data;
}

function format_flounder_data($data_i) {
    $SampleIDs = get_sampleIDs($data_i);
        //$num_sampleids = count($SampleIDs);
        
        $flounder = [];
        $data = [];
        
        // stores all data with numbered index as rows
        foreach ($SampleIDs as $SampleID) {
            $flounder = $data_i[$SampleID];
            $num_flounder = count($flounder);
            for ($i = 0; $i < $num_flounder; $i++) {
                array_push($data, $flounder[$i]);
            }
        }
        
        return $data;
}

// all sampling data including all fields and all dates
function get_all_sampling_data() {
    global $db;
    $query = 'SELECT * FROM samplingdata
              ORDER BY SampleID';
    try {
        $statement = $db->prepare($query);
        $statement->execute();
        // fetchAll, using tbl primary key as array key
        $data_i = $statement->fetchAll(PDO::FETCH_GROUP|PDO::FETCH_ASSOC);
        $statement->closeCursor();
        
        // format the sampling data
        $data = format_sampling_data($data_i);
        
        return $data;
    } catch (PDOException $e) {
        display_error($e->getMessage());
    }
}

// get all of the database fields (columns) for custom sampling query
function get_sampling_data_fields() {
    global $db;
    $query = 'SELECT * FROM samplingdata';
    
    try {
        $statement = $db->prepare($query);
        $statement->execute();
        $data = $statement->fetch(PDO::FETCH_ASSOC);
        $statement->closeCursor();
        $field_list = array_keys($data);
        return $field_list;
    } catch (PDOException $e) {
        display_error($e->getMessage());
    }
}

// get all of the database fields (columns) for custom flounder query
function get_flounder_data_fields() {
    global $db;
    $query = 'SELECT * FROM samplingdata s
                INNER JOIN flounders f
                    ON s.SampleID = f.SampleID
                INNER JOIN species sp
                    ON f.SpCode = sp.SpCode
              ORDER BY f.SampleID';
    
    try {
        $statement = $db->prepare($query);
        $statement->execute();
        $data = $statement->fetch(PDO::FETCH_ASSOC);
        $statement->closeCursor();
        $field_list = array_keys($data);
        return $field_list;
    } catch (Exception $e) {
        display_error($e->getMessage());
    }
}

// only sampling from scdnr with all dates and fields
function scdnr_sampling_data() {
    global $db;
    $query = 'SELECT * FROM samplingdata
              WHERE Sampler = "SCDNR"
              ORDER BY SampleID';
    
    try {
        $statement = $db->prepare($query);
        $statement->execute();
        // fetchAll, using tbl primary key as array key
        $data_i = $statement->fetchAll(PDO::FETCH_GROUP|PDO::FETCH_ASSOC);
        $statement->closeCursor();
        
        // format the sampling data
        $data = format_sampling_data($data_i);       
        
        return $data;
    } catch (PDOException $e) {
        display_error($e->getMessage());
    }
}

// sampling data function with specified date range and fields
function get_sampling_data_custom($start_date, $end_date) {
    global $db;
    $query = 'SELECT * FROM samplingdata
              WHERE Date BETWEEN :start_date AND :end_date';
    try {
        $statement = $db->prepare($query);
        $statement->bindValue(':start_date', $start_date);
        $statement->bindValue(':end_date', $end_date);
        $statement->execute();
        // fetchAll, using tbl primary key as array key
        $data_i = $statement->fetchAll(PDO::FETCH_GROUP|PDO::FETCH_ASSOC);
        $statement->closeCursor();
        
        // format the sampling data
        $data = format_sampling_data($data_i);
        
        return $data;
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        display_error($error_message);
    }    
}

// get all flounder data
function get_all_flounder_data() {
    global $db;
    $query = 'SELECT * FROM samplingdata s
                INNER JOIN flounders f
                    ON s.SampleID = f.SampleID
                INNER JOIN species sp
                    ON f.SpCode = sp.SpCode
              ORDER BY f.SampleID';
    
    try {
        $statement = $db->prepare($query);
        $statement->execute();
        // fetchAll, using tbl primary key as array key
        $data_i = $statement->fetchAll(PDO::FETCH_GROUP|PDO::FETCH_ASSOC);
        $statement->closeCursor();
        
        // format flounder data
        $data = format_flounder_data($data_i);
                               
        return $data;
        
    } catch (PDOException $e) {
        display_error($e->getMessage());
    }
}

// flounder data custom date query
function get_flounder_data_custom($start_date, $end_date) {
    global $db;
    $query = 'SELECT * FROM samplingdata s
                INNER JOIN flounders f
                    ON s.SampleID = f.SampleID
                INNER JOIN species sp
                    ON f.SpCode = sp.SpCode
                WHERE s.Date BETWEEN :start_date AND :end_date
                ORDER BY f.SampleID';
    try {
        $statement = $db->prepare($query);
        $statement->bindValue(':start_date', $start_date);
        $statement->bindValue(':end_date', $end_date);
        $statement->execute();
        // fetchAll, using tbl primary key as array key
        $data_i = $statement->fetchAll(PDO::FETCH_GROUP|PDO::FETCH_ASSOC);
        $statement->closeCursor();
        
        // format flounder data
        $data = format_flounder_data($data_i);
        
        return $data;
    } catch (PDOException $e) {
        display_error($e->getMessage());
    }
}

// get all flounder collected by SCDNR
function scdnr_flounder_data() {
    global $db;
    $query = 'SELECT * FROM samplingdata s
                INNER JOIN flounders f
                    ON s.SampleID = f.SampleID
                INNER JOIN species sp
                    ON f.SpCode = sp.SpCode
                WHERE s.Sampler = "SCDNR"
                ORDER BY f.SampleID';
    
    try {
        $statement = $db->prepare($query);
        $statement->execute();
        // fetchAll, using tbl primary key as array key
        $data_i = $statement->fetchAll(PDO::FETCH_GROUP|PDO::FETCH_ASSOC);
        $statement->closeCursor();
        
        // format flounder data
        $data = format_flounder_data($data_i);
        
        return $data;
    } catch (PDOException $e) {
        display_error($e->getMessage());
    }
}

// get all gulf flounder
function get_all_gulf_flounder() {
    global $db;
    $query = 'SELECT * FROM samplingData s
                INNER JOIN flounders f
                    ON s.SampleID = f.SampleID
                INNER JOIN species sp
                    ON f.SpCode = sp.SpCode
                WHERE f.SpCode = "A412"
                ORDER BY f.SampleID';
    
    try {
        $statement = $db->prepare($query);
        $statement->execute();
        // fetchAll, using tbl primary key as array key
        $data_i = $statement->fetchAll(PDO::FETCH_GROUP|PDO::FETCH_ASSOC);
        $statement->closeCursor();
        
        // format flounder data
        $data = format_flounder_data($data_i);
        
        return $data;
    } catch (PDOException $e) {
        display_error($e->getMessage());
    }
}

// get all southern flounder
function get_all_south_flounder() {
    global $db;
    $query = 'SELECT * FROM samplingdata s
                INNER JOIN flounders f
                    ON s.SampleID = f.SampleID
                INNER JOIN species sp
                    ON f.SpCode = sp.SpCode
                WHERE f.SpCode = "A414"
                ORDER BY f.SampleID';
    
    try {
        $statement = $db->prepare($query);
        $statement->execute();
        // fetchAll, using tbl primary key as array key
        $data_i = $statement->fetchAll(PDO::FETCH_GROUP|PDO::FETCH_ASSOC);
        $statement->closeCursor();
        
        // format flounder data
        $data = format_flounder_data($data_i);
        
        return $data;
    } catch (PDOException $e) {
        display_error($e->getMessage());
    }
}

function get_samplers() {
    global $db;
    $query = 'SELECT Sampler FROM samplers
              ORDER BY Sampler';
    
    try {
        $statement = $db->prepare($query);
        $statement->execute();
        $samplers_i = $statement->fetchAll(PDO::FETCH_GROUP|PDO::FETCH_ASSOC);
        $samplers_k = array_map('reset', $samplers_i);
        $samplers = array_keys($samplers_k);
        $statement->closeCursor();
        return $samplers;
    } catch (PDOException $e) {
        display_error($e->getMessage());
    }
}

function get_bottom_types() {
    global $db;
    $query = 'SELECT BottomType FROM bottomtypes
              ORDER BY BottomType';
    
    try {
        $statement = $db->prepare($query);
        $statement->execute();
        $bottomtypes_i = $statement->fetchAll(PDO::FETCH_GROUP|PDO::FETCH_ASSOC);
        $bottomtypes_k = array_map('reset', $bottomtypes_i);
        $bottomtypes = array_keys($bottomtypes_k);
        $statement->closeCursor();
        return $bottomtypes;
    } catch (PDOException $e) {
        display_error($e->getMessage());
    }
}

// get all sample IDs using a query
function get_all_SampleIDs() {
    global $db;
    $query = 'SELECT SampleID FROM samplingdata
              ORDER BY SampleID';
    
    try {
        $statement = $db->prepare($query);
        $statement->execute();
        $SampleIDs_i = $statement->fetchAll(PDO::FETCH_GROUP|PDO::FETCH_ASSOC);
        $SampleIDs_k = array_map('reset', $SampleIDs_i);
        $SampleIDs = array_keys($SampleIDs_k);
        $statement->closeCursor();
        return $SampleIDs;
    } catch (PDOException $e) {
        display_error($e->getMessage());
    }
}

// get all species
function get_species() {
    global $db;
    $query = 'SELECT CommonName FROM species';
    
    try{
        $statement = $db->prepare($query);
        $statement->execute();
        $species_i = $statement->fetchAll(PDO::FETCH_GROUP|PDO::FETCH_ASSOC);
        $species_k = array_map('reset', $species_i);
        $species = array_keys($species_k);
        $statement->closeCursor();
        return $species;
    } catch (PDOException $e) {
        display_error($e->getMessage());
    }
}

function get_sampling_data_inputs() {
    $sampleid = filter_input(INPUT_POST, 'sampleid');
    $projectid = filter_input(INPUT_POST, 'projectid');
    $gearid = filter_input(INPUT_POST, 'gearid');
    $date = filter_input(INPUT_POST, 'date');
    $latdeg = filter_input(INPUT_POST, 'latdeg', FILTER_VALIDATE_INT);
    $latmin = filter_input(INPUT_POST, 'latmin');
    $longdeg = filter_input(INPUT_POST, 'longdeg', FILTER_VALIDATE_INT);
    $longmin = filter_input(INPUT_POST, 'longmin');
    $reefname = filter_input(INPUT_POST, 'reefname');
    $sampledepth = filter_input(INPUT_POST, 'sampledepth', FILTER_VALIDATE_INT);
    $bottomtemp = filter_input(INPUT_POST, 'bottomtemp');
    $sampler = filter_input(INPUT_POST, 'sampler');
    $flounder = filter_input(INPUT_POST, 'flounder');
    $bottomtype = filter_input(INPUT_POST, 'bottomtype');
    
    // store inputs in an array
    $row_values = array('sampleid' => $sampleid, 'projectid' => $projectid,
            'gearid' => $gearid, 'date' => $date, 'latdeg' => $latdeg,
            'latmin' => $latmin, 'longdeg' => $longdeg, 'longmin' => $longmin,
            'reefname' => $reefname, 'sampledepth' => $sampledepth, 
            'bottomtemp' => $bottomtemp, 'sampler' => $sampler, 
            'flounder' =>$flounder, 'bottomtype' => $bottomtype);
    
    return $row_values;
}    

function get_flounder_data_inputs() {
    $sampleid = filter_input(INPUT_POST, 'sampleid');
    $species = filter_input(INPUT_POST, 'species');
    $specimen = filter_input(INPUT_POST, 'specimen', FILTER_VALIDATE_INT);
    $tl = filter_input(INPUT_POST, 'tl', FILTER_VALIDATE_INT);
    $sl = filter_input(INPUT_POST, 'sl', FILTER_VALIDATE_INT);
    $totalweight = filter_input(INPUT_POST, 'totalweight', FILTER_VALIDATE_INT);
    $gonadweight = filter_input(INPUT_POST, 'gonadweight');
    $somaticweight = filter_input(INPUT_POST, 'somaticweight');
    $sex = filter_input(INPUT_POST, 'sex');
    $maturity = filter_input(INPUT_POST, 'maturity');
    $age = filter_input(INPUT_POST, 'age', FILTER_VALIDATE_INT);
    $mod = filter_input(INPUT_POST, 'mod', FILTER_VALIDATE_INT);
    $yearclass = filter_input(INPUT_POST, 'yearclass', FILTER_VALIDATE_INT);
    $frozen = filter_input(INPUT_POST, 'frozen');
    $pofs = filter_input(INPUT_POST, 'pofs', FILTER_VALIDATE_INT);
    $atresia = filter_input(INPUT_POST, 'atresia', FILTER_VALIDATE_INT);
    
    if ((filter_input(INPUT_POST, 'histology')) == 'on') {
        $histology = 'T';
    } else {
        $histology = 'F';
    }
    
    if ((filter_input(INPUT_POST, 'leftotolith')) == 'on') {
        $leftotolith = 'T';
    } else {
        $leftotolith = 'F';
    }
    
    if ((filter_input(INPUT_POST, 'rightotolith')) == 'on') {
        $rightotolith = 'T';
    } else {
        $rightotolith = 'F';
    }
    
    $row_values = array('sampleid' => $sampleid, 'species' => $species,
            'specimen' => $specimen, 'tl' => $tl, 'sl' => $sl,
            'totalweight' => $totalweight, 'gonadweight' => $gonadweight,
            'somaticweight' => $somaticweight, 'sex' => $sex, 
            'maturity' => $maturity, 'leftotolith' => $leftotolith, 
            'rightotolith' => $rightotolith, 'histology' => $histology,
            'age' => $age, 'mod' => $mod, 'yearclass' => $yearclass,
            'frozen' => $frozen, 'pofs' => $pofs, 'atresia' => $atresia);
    
    return $row_values;
}    

function add_sampling_data($row_values) {   
    global $db;
    $query = 'INSERT INTO samplingdata (SampleID, ProjectID, GearID, Date, LatDeg,
                LatMin, LongDeg, LongMin, SampleDepth, BottomTemp, Sampler, Flounder,
                BottomType, ReefName)
              VALUES (:sampleid, :projectid, :gearid, :date, :latdeg, :latmin,
                :longdeg, :longmin, :sampledepth, :bottomtemp, :sampler, :flounder,
                :bottomtype, :reefname)';
    
    try {
        $statement = $db->prepare($query);
        $statement->bindValue(':sampleid', $row_values['sampleid']);
        $statement->bindValue(':projectid', $row_values['projectid']);
        $statement->bindValue(':gearid', $row_values['gearid']);
        $statement->bindValue(':date', $row_values['date']);
        $statement->bindValue(':latdeg', $row_values['latdeg']);
        $statement->bindValue(':latmin', $row_values['latmin']);
        $statement->bindValue(':longdeg', $row_values['longdeg']);
        $statement->bindValue(':longmin', $row_values['longmin']);
        $statement->bindValue(':sampledepth', $row_values['sampledepth']);
        $statement->bindValue(':bottomtemp', $row_values['bottomtemp']);
        $statement->bindValue(':sampler', $row_values['sampler']);
        $statement->bindValue(':flounder', $row_values['flounder']);
        $statement->bindValue(':bottomtype', $row_values['bottomtype']);
        $statement->bindValue(':reefname', $row_values['reefname']);
        $statement->execute();
        $statement->closeCursor();
    } catch (PDOException $e) {
        display_error($e->getMessage());
    }
}

function add_flounder_data($row_values) {
    global $db;
    $query = 'INSERT INTO flounders (SampleID, SpCode, Specimen, TL, SL,
                TotalWeight, GonadWeight, SomaticWeight, Sex, Maturity,
                LeftOtolith, RightOtolith, Histology, Age, `MOD`, YearClass, 
                Frozen, POFs, Atresia)
              VALUES (:sampleid, :spcode, :specimen, :tl, :sl, :totalweight,
                :gonadweight, :somaticweight, :sex, :maturity, :leftotolith,
                :rightotolith, :histology, :age, :mod, :yearclass, :frozen,
                :pofs, :atresia)';
    
    if ($row_values['species'] == 'Gulf Flounder') {
        $spcode = 'A412';
    } else if ($row_values['species'] == 'Summer Flounder') {
        $spcode = 'A413';
    } else if ($row_values['species'] == 'Southern Flounder') {
        $spcode = 'A414';
    } else if ($row_values['species'] == 'Flounder') {
        $spcode = 'A475';
    }
    
    try {
        $statement = $db->prepare($query);
        $statement->bindValue(':sampleid', $row_values['sampleid']);
        $statement->bindValue(':spcode', $spcode);
        $statement->bindValue(':specimen', $row_values['specimen']);
        $statement->bindValue(':tl', $row_values['tl']);
        $statement->bindValue(':sl', $row_values['sl']);
        $statement->bindValue(':totalweight', $row_values['totalweight']);
        $statement->bindValue(':gonadweight', $row_values['gonadweight']);
        $statement->bindValue(':somaticweight', $row_values['somaticweight']);
        $statement->bindValue(':sex', $row_values['sex']);
        $statement->bindValue(':maturity', $row_values['maturity']);
        $statement->bindValue(':leftotolith', $row_values['leftotolith']);
        $statement->bindValue(':rightotolith', $row_values['rightotolith']);
        $statement->bindValue(':histology', $row_values['histology']);
        $statement->bindValue(':age', $row_values['age']);
        $statement->bindValue(':mod', $row_values['mod']);
        $statement->bindValue(':yearclass', $row_values['yearclass']);
        $statement->bindValue(':frozen', $row_values['frozen']);
        $statement->bindValue(':pofs', $row_values['pofs']);
        $statement->bindValue(':atresia', $row_values['atresia']);
        $statement->execute();
        $statement->closeCursor();
    } catch (PDOException $e) {
        display_error($e->getMessage());
    }
}

function add_new_sampler($new_sampler) {
    global $db;
    $query = 'INSERT INTO samplers (Sampler)
              VALUES (:new_sampler)';
    
    try {
        $statement = $db->prepare($query);
        $statement->bindValue(':new_sampler', $new_sampler);
        $statement->execute();
        $statement->closeCursor();
    } catch (PDOException $e) {
        display_error($e->getMessage());
    }
}

function add_new_bottomtype($new_bottomtype) {
    global $db;
    $query = 'INSERT INTO bottomtypes (BottomType)
              VALUES (:new_bottomtype)';
    
    try {
        $statement = $db->prepare($query);
        $statement->bindValue(':new_bottomtype', $new_bottomtype);
        $statement->execute();
        $statement->closeCursor();
    } catch (PDOException $e) {
        display_error($e->getMessage());
    }
}

function display_error($error_message) {
    include 'errors/error.php';
    exit();
}
?>