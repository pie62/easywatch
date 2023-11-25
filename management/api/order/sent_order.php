<?php
    $postdata = file_get_contents("php://input");
	$request = json_decode($postdata);

	$id = $request->id;
    $ems = $request->ems;

    $host="localhost";
    $user="root"; // MySql Username
    $pass=""; // MySql Password
    $dbname="easywatch"; // Database Name

    $conn=mysqli_connect($host,$user,$pass) or die("ไม่สามารถเชื่อมต่อฐานข้อมูลได้"); // เชื่อมต่อ ฐานข้อมูล
    mysqli_select_db($conn,$dbname); // เลือกฐานข้อมูล
    mysqli_query($conn,"SET NAMES utf8"); // กำหนด charset ให้ฐานข้อมูล เพื่ออ่านภาษาไทย

    $m = "จัดส่งแล้ว";
    $sql = "UPDATE orders SET order_status = '$m', ems_code = '$ems' WHERE id = $id";

    $result = mysqli_query($conn,$sql); // คิวรี่คำสั่ง sql

    if ( !$result ) {
        echo 'false';
    }
    else {
        echo 'true';
    }
?>