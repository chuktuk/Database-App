<?php
require_once('util/secure_conn.php'); // require a secure connection
include 'header.php'; 
include 'sidebar.php'; 
?>

<section>
    <h2>Add Flounder Data</h2>
    <form action="<?php echo $app_path . 'index.php'; ?>" class="form" method="post">
        <input type="hidden" name="action" value="add_flounder_data_confirm">
        
        <label>SampleID: </label>
        <select name="sampleid">
            <?php foreach ($SampleIDs as $key => $value) : ?>
            <option value="<?php echo $value; ?>">
                <?php echo $value; ?></option>
            <?php endforeach; ?>
        </select>
        <br>
        
        <p>SampleID not found? <a href="<?php echo $app_path . 
                '?action=add_sampling_data_form'; ?>">Add Sampling Data</a></p>
        
        <label>Species: </label>
        <select name="species">
            <?php foreach ($species as $key => $value) : ?>
            <option value="<?php echo $value; ?>">
                <?php echo $value; ?></option>
            <?php endforeach; ?>
        </select>
        <br>
        
        <label>Specimen Number: </label>
        <input type="number" name="specimen" step="1">
        <br>
        
        <label>Total Length (mm): </label>
        <input type="number" name="tl" step="1">
        <br>

        <label>Standard Length (mm): </label>
        <input type="number" name="sl" step="1">
        <br>
        
        <label>Total Weight (g): </label>
        <input type="number" name="totalweight" step="1">
        <br>
        
        <label>Gonad Weight (g): </label>
        <input type="number" name="gonadweight" step="0.1">
        <br>
        
        <label>Somatic Weight (g): </label>
        <input type="number" name="somaticweight" step="0.1">
        <br>
        
        <label>Sex: </label><br>
        <input type="radio" name="sex" value="M">M
        <input type="radio" name="sex" value="F">F
        <br>
        
        <label>Maturity: </label>
        <select name="maturity">
            <?php for ($i = 1; $i <= 12; $i++) : ?>
            <option value="<?php echo $i; ?>">
                <?php echo $i; ?></option>
            <?php endfor; ?>
            <option value="NULL">Unknown</option>
        </select>
        <br>
        
        <fieldset>
        <legend>Samples Collected:</legend>
        <input type="checkbox" name="leftotolith">Left Otolith<br>
        <input type="checkbox" name="rightotolith">Right Otolith<br>
        <input type="checkbox" name="histology">Histology
        </fieldset>
        
        <label>Age (years): </label>
        <input type="number" step="1" name="age">
        <br>
        
        <label>Maximum Oocyte Diameter: </label>
        <input type="number" step="1" name="mod">
        <br>
        
        <label>Year Class: </label>
        <input type="number" step="1" name="yearclass">
        <br>
        
        <label>Was the specimen frozen?</label><br>
        <input type="radio" name="frozen" value="T">Yes
        <input type="radio" name="frozen" value="F" checked="checked">No
        <br>
        
        <label>POFs: </label>
        <input type="number" step="1" name="pofs">
        <br>
        
        <label>Atresia: </label>
        <input type="number" step="1" name="atresia">
        <br>
        
        <input type="submit" value="Submit Data">
        
    </form>
</section>

<?php include 'footer.php'; ?>