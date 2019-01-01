<?php
// function to add admins to the database
function admin_display_error($error_message) {
    include('errors/admin_error.php');
    exit();
}

function add_admin($email, $password, $first_name, $last_name) {
    global $db;
    $hash = password_hash($password, PASSWORD_DEFAULT); // encrypt password (hash)
    $query = 'INSERT INTO users (emailAddress, password, firstName, lastName)
              VALUES (:email, :password, :firstName, :lastName)';
    $statement = $db->prepare($query);
    $statement->bindValue(':email', $email);
    $statement->bindValue(':password', $hash); // stored hashed password
    $statement->bindValue(':firstName', $first_name);
    $statement->bindValue(':lastName', $last_name);
    $statement->execute();
    $statement->closeCursor();
}

// function to check password complexity
function password_complexity($password) {
    $pw_pattern = '/^(?=.*[[:digit:]])(?=.*[[:upper:]])(?=.*[[:lower:]])[[:print:]]{8,}$/';
    if (preg_match($pw_pattern, $password) == true) {
        return true;
    } else {
        return false;
    } 
}

// function to verify email and passwords against the database
function authenticate_user($email, $password) {
    global $db;
    $query = 'SELECT password
                 FROM users
                 WHERE emailAddress = :email';
    $statement = $db->prepare($query);
    $statement->bindValue(':email', $email);
    $statement->execute();
    $row = $statement->fetch();
    $statement->closeCursor();
    $hash = $row['password'];
    return password_verify($password, $hash);
}

function get_tables() {
    global $db;
    $query = 'SHOW TABLES';
    $statement = $db->prepare($query);
    $statement->execute();
    $tables = $statement->fetchAll(PDO::FETCH_COLUMN);
    $statement->closeCursor();
    return $tables;
}

function run_select_query($query) {
    global $db;
    
    try {
        $statement = $db->prepare($query);
        $statement->execute();
        // fetchAll, using tbl primary key as array key
        $data_i = $statement->fetchAll(PDO::FETCH_GROUP|PDO::FETCH_ASSOC);
        $data = array_map('reset', $data_i); // strip out numbered index
        $statement->closeCursor();
        return $data;
    } catch (PDOException $e) {
        admin_display_error($e->getMessage());
    } 
}

function submit_query($query) {
    global $db;
    
    try {
        $statement = $db->prepare($query);
        $statement->execute();
        $statement->closeCursor();
        $message = 'Query submitted successfully';
        return $message;
    } catch (PDOException $e) {
        admin_display_error($e->getMessage());
    }
}
?>