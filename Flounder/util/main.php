<?php
// get the document root
$doc_root = filter_input(INPUT_SERVER, 'DOCUMENT_ROOT');

// get the app path
$uri = filter_input(INPUT_SERVER, 'REQUEST_URI');
$dirs = explode('/', $uri);
$app_path = '/' . $dirs[1] . '/' . $dirs[2] . '/';

// set the include path
set_include_path($doc_root . $app_path);
?>