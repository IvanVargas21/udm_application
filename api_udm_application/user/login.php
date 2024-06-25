<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Origin, Content-Type, Accept, Authorization");
include '../connection.php';

//POST = send/receive data to mysql db
//GET = retrieve/read data from mysql db
//assigned to this variable  - is what we are going to receive on the user field from fluter applicaion
$studID = $_POST['studentID'];
//$password = md5($_POST ['user_password']); if you wanted to transform the password into binary format before saving on the database, for security purposes
$studPassword = $_POST['stud_password'];

$sqlQuery = "SELECT * FROM  users WHERE studentID = '$studID' AND stud_password = '$studPassword' ";

$resultOfQuery = $connectNow->query($sqlQuery);

if ($resultOfQuery->num_rows > 0) //allow user to login
{
    $userRecord = array();
    while ($rowFound = $resultOfQuery->fetch_assoc()) {
        $userRecord[] = $rowFound;
    }
    echo json_encode(
        array(
            "success" => true,
            "userData" => $userRecord[0],
        )
    );
} else //DO NOT allow user to login
{
    echo json_encode(array("success" => false));
}
