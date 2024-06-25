<?php
//This was just for signup function.
include '../connection.php';

$studID = $_POST['studentID'];

$sqlQuery = "SELECT * FROM users WHERE studentID = '$studID' ";

$resultofQuery = $connectNow->query($sqlQuery);

if($resultofQuery -> num_rows > 0)
{
    //num rows length == 1 --- studentID already in someone else use
    echo json_encode(array("studentIDFound"=>true));
}
else
{   
    //num rows length == 0 --- studentID is NOT already in someone else use
    // a user will be allowed to signup successfully
    echo json_encode(array("studentIDFound"=>false));
}

// 01 | 2001 | Maria Santos | default | image |
/*ERROR users cannot use/share the same studentID
 that's the purpose of the built in function in php, which is -> num_rows > 0,
 it will check if there's an existing studentID on the database so that 
 no other user can logged in the same studentID.
*/
// 01 | 2001 | Maria Ewanq | default | image |