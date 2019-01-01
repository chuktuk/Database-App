<?php
require_once('util/secure_conn.php'); // require a secure connection
include 'header.php'; 
include 'sidebar.php'; 
?>

<section>
    <h2>Add Sampling Data</h2>
    
    <form action="<?php echo $app_path . 'index.php'; ?>" class="form" method="post">
        <input type="hidden" name="action" value="add_sampling_data_confirm">
        
        <label>SampleID: </label>
        <input type="number" step="1" name="sampleid">
        <br>
        <p>SampleID should be 6 digits leading with two digit date.<br>
            The first SampleID for 2011 should be 110001, then 110002, etc.</p>
        
        <label>ProjectID: </label>
        <input type="text" name="projectid" value="T51">
        <br>
        
        <label>GearID: </label>
        <input type="text" name="gearid" value="065">
        <br>
        
        <label>Date: </label>
        <input type="date" name="date">
        <br>
        
        <fieldset id="location">
            <legend>Sampling Location</legend>
        
            <label>Degrees Latitude: </label>
            <input type="number" step="1" name="latdeg">
            <br>
        
            <label>Minutes Latitude: </label>
            <input type="number" step="0.001" name="latmin">
            <br>
            
            <label>Degrees Longitude: </label>
            <input type="number" step="1" name="longdeg">
            <br>
            
            <label>Minutes Longitude: </label>
            <input type="number" step="0.001" name="longmin">
            <br>
            
            <label>Reef Name: </label>
            <input type="text" name="reefname">
            <br>
        </fieldset>
        
        <label>Sample Depth (m): </label>
        <input type="number" step="1" name="sampledepth">
        <br>
        
        <label>Bottom Temperature (C): </label>
        <input type="number" step="0.1" name="bottomtemp">
        <br>
        
        <label>Sampler:</label><br>
        <select name="sampler">
            <?php foreach ($samplers as $sampler) : ?>
            <option value="<?php echo $sampler; ?>">
                <?php echo $sampler; ?></option>
            <?php endforeach; ?>
        </select>
        <br>
        
        <label>Flounder Collected?</label><br>
        <input type="radio" name="flounder" value="T" checked="checked">Yes
        <input type="radio" name="flounder" value="F">No
        <br>
        
        <label>Bottom Type:</label>
        <select name="bottomtype">
            <?php foreach ($bottomtypes as $bottomtype) : ?>
            <option value="<?php echo $bottomtype; ?>">
                <?php echo $bottomtype; ?></option>
            <?php endforeach; ?>
        </select>
        <br>
        
        <input type="submit" value="Submit Data">
        
    </form>
</section>

<?php include 'footer.php'; ?>