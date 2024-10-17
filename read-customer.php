<?php 
    $file = fopen('customers.csv', 'r');
    while (($line = fgetcsv($file)) !== FALSE) {
        //$line is an array of the csv elements
        
    }
    fclose($file);
?>