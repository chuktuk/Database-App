<?php

if(!'https') {
    $host = filter_input(INPUT_SERVER, 'HTTP_HOST'); // generic, usually works
    //// localhost:8080 won't do secure
    // localhost is the one I need to use here
    $uri = filter_input(INPUT_SERVER, 'REQUEST_URI');
    $url = 'https://' . $host . $uri;
    exit();
}

?>