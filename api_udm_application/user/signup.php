<?php
include '../connection.php';

//POST = send/receive data to mysql db
//GET = retrieve/read data from mysql db
//assigned to this variable  - is what we are going to receive on the user field from fluter applicaion
$studID = $_POST['studentID'];
$userName = $_POST['username'];
//$password = md5($_POST ['user_password']); if you wanted to transform the password into binary format before saving on the database, for security purposes
$studPassword = $_POST['stud_password'];

$sqlQuery = "INSERT INTO users SET studentID = '$studID', username = '$userName', stud_password = 'studPassword' ";

$resultOfQuery = $connectNow->query($sqlQuery);

if ($resultOfQuery) {
    echo json_encode(array("success" => true));
} else {
    echo json_encode(array("Connection Failed! " => false));
}
