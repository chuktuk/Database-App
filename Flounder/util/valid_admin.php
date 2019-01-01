<?php

// check that the user is logged in and their permission level
if (!isset($_SESSION['is_valid_admin'])) {
    header("Location: .?action=admin_login");
}

?>