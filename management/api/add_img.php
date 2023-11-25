<?php 

	$postdata = file_get_contents("php://input");
	$request = json_decode($postdata);

	$pd_id  = $request->pb_id;
	$images = $request->images;

	$host="localhost";
    $user="root"; // MySql Username
    $pass=""; // MySql Password
    $dbname="easywatch"; // Database Name

    $conn=mysql_connect($host,$user,$pass) or die("ไม่สามารถเชื่อมต่อฐานข้อมูลได้"); // เชื่อมต่อ ฐานข้อมูล
    mysql_select_db($dbname,$conn); // เลือกฐานข้อมูล
    mysql_query("SET NAMES utf8"); // กำหนด charset ให้ฐานข้อมูล เพื่ออ่านภาษาไทย

    foreach ($images as $value) {
        $sql_img = "INSERT INTO images (product_id, img_path) VALUES ('$pd_id', '$value')";
        mysql_query($sql_img);
    }

?>