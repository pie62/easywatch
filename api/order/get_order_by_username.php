<?php
    $postdata = file_get_contents("php://input");
	$request = json_decode($postdata);

	$username = $request->username;
    $orderId = $request->orderId;

    $host="localhost";
    $user="root"; // MySql Username
    $pass=""; // MySql Password
    $dbname="easywatch"; // Database Name

    $conn=mysqli_connect($host,$user,$pass) or die("ไม่สามารถเชื่อมต่อฐานข้อมูลได้"); // เชื่อมต่อ ฐานข้อมูล
    mysqli_select_db($conn,$dbname); // เลือกฐานข้อมูล
    mysqli_query($conn,"SET NAMES utf8"); // กำหนด charset ให้ฐานข้อมูล เพื่ออ่านภาษาไทย

    $sql = "SELECT * FROM orders
            WHERE username = '$username' AND id = $orderId AND order_status is NULL";
    $result=mysqli_query($conn,$sql); // คิวรี่คำสั่ง sql

    $num=mysqli_num_rows($result); // ตรวจสอบจำนวน record ที่คิวรี่ออกมา
    $arr = array();

    if($num > 0)
    {
        while( $row = mysqli_fetch_assoc( $result)){
            $arr[] = $row;
        }
        echo $json_response = json_encode($arr);
    } else {
        echo 'false';
    }
    
?>