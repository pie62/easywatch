<?php
    $postdata = file_get_contents("php://input");
	$request = json_decode($postdata);

	$uname = $request->username;
	$pwd = sha1($request->password);

    $host="localhost";
    $user="root"; // MySql Username
    $pass=""; // MySql Password
    $dbname="easywatch"; // Database Name

    $conn=mysqli_connect($host,$user,$pass) or die("ไม่สามารถเชื่อมต่อฐานข้อมูลได้"); // เชื่อมต่อ ฐานข้อมูล
    mysqli_select_db($conn,$dbname); // เลือกฐานข้อมูล
    mysqli_query($conn,"SET NAMES utf8"); // กำหนด charset ให้ฐานข้อมูล เพื่ออ่านภาษาไทย

    $sql = "INSERT INTO users (username, password) VALUES ('$uname', '$pwd')";
    $result=mysqli_query($conn,$sql); // คิวรี่คำสั่ง sql

    if( !$result )
    {
    	echo 'false';
    } else {
    	echo 'true';
    }
?>