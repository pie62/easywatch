<?php
    $postdata = file_get_contents("php://input");
	$request = json_decode($postdata);

	$brand_name = $request->brand_name;

    $host="localhost";
    $user="root"; // MySql Username
    $pass=""; // MySql Password
    $dbname="easywatch"; // Database Name

    $conn=mysql_connect($host,$user,$pass) or die("ไม่สามารถเชื่อมต่อฐานข้อมูลได้"); // เชื่อมต่อ ฐานข้อมูล
    mysql_select_db($dbname,$conn); // เลือกฐานข้อมูล
    mysql_query("SET NAMES utf8"); // กำหนด charset ให้ฐานข้อมูล เพื่ออ่านภาษาไทย

    $sql = "INSERT INTO products_brand (brand_id, brand_name) VALUES ('', '$brand_name')";

    $add_brand = mysql_query($sql);

    echo $add_brand;
    
    // if ( !$add_brand ) {
    //     echo 'false';
    // }
?>