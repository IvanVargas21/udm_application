<?php
/*this php file is a server side language, this php files is responsible for communicating
with the Xampp server
*/
$serverHost = "localhost";
$user = "root";
$password = "";
$database = "udm_app";

$connectNow = new mysqli($serverHost, $user, $password, $database);
