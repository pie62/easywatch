<?php
    $postdata = file_get_contents("php://input");
	$request = json_decode($postdata);

	$name = $request->name;
    $email = $request->email;
    $msg = $request->msg;

    $host="localhost";
    $user="root"; // MySql Username
    $pass=""; // MySql Password
    $dbname="easywatch"; // Database Name

    $conn=mysqli_connect($host,$user,$pass) or die("ไม่สามารถเชื่อมต่อฐานข้อมูลได้"); // เชื่อมต่อ ฐานข้อมูล
    mysqli_select_db($conn,$dbname); // เลือกฐานข้อมูล
    mysqli_query($conn,"SET NAMES utf8"); // กำหนด charset ให้ฐานข้อมูล เพื่ออ่านภาษาไทย

    $sql = "INSERT INTO messages (name, email, msg)
            VALUES ('$name', '$email', '$msg')";
    $result=mysqli_query($conn,$sql); // คิวรี่คำสั่ง sql
    $order_id = mysqli_insert_id();

    if( !$result ) {
    	echo 'false';
    } else {
    	echo 'true';
    }
?>