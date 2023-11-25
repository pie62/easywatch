<?php
    $postdata = file_get_contents("php://input");
	$request = json_decode($postdata);

	$brand_name = $request->brand_name;

    $host="localhost";
    $user="root"; // MySql Username
    $pass=""; // MySql Password
    $dbname="easywatch"; // Database Name

    $conn=mysqli_connect($host,$user,$pass) or die("ไม่สามารถเชื่อมต่อฐานข้อมูลได้"); // เชื่อมต่อ ฐานข้อมูล
    mysqli_select_db($conn,$dbname); // เลือกฐานข้อมูล
    mysqli_query($conn,"SET NAMES utf8"); // กำหนด charset ให้ฐานข้อมูล เพื่ออ่านภาษาไทย

    $sql = "INSERT INTO products_brand (brand_id, brand_name) VALUES ('', '$brand_name')";

    $add_brand = mysqli_query($conn,$sql);

    echo $add_brand;
    
    // if ( !$add_brand ) {
    //     echo 'false';
    // }
?>