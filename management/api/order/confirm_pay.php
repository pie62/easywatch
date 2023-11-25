<?php
    $postdata = file_get_contents("php://input");
	$request = json_decode($postdata);

	$id = $request->id;

    $host="localhost";
    $user="root"; // MySql Username
    $pass=""; // MySql Password
    $dbname="easywatch"; // Database Name

    $conn=mysql_connect($host,$user,$pass) or die("ไม่สามารถเชื่อมต่อฐานข้อมูลได้"); // เชื่อมต่อ ฐานข้อมูล
    mysql_select_db($dbname,$conn); // เลือกฐานข้อมูล
    mysql_query("SET NAMES utf8"); // กำหนด charset ให้ฐานข้อมูล เพื่ออ่านภาษาไทย

    $m = "ยืนยันแล้ว-กำลังจัดส่ง";
    $sql = "UPDATE orders set order_status ='$m' where id = $id";

    $result= mysql_query($sql);
    
    if ( !$result ) {
        echo 'false';
    }

?>