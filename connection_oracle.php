<?php
    
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "qlsv";
    // Create connection
    $conn = oci_connect($servername, $username, $password);
    // Check connection
    if (!$conn) {
        $e = oci_error();
        //hien thi loi neu ket noi khong duoc
        trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
    }
        //neu ket noi thanh cong
    echo "Connected successfully";
?>