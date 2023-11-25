<?php
    $postdata = file_get_contents("php://input");
	$request = json_decode($postdata);

	$model = $request->model;
    $id = $request->id;

    $host="localhost";
    $user="root"; // MySql Username
    $pass=""; // MySql Password
    $dbname="easywatch"; // Database Name

    $conn=mysql_connect($host,$user,$pass) or die("ไม่สามารถเชื่อมต่อฐานข้อมูลได้"); // เชื่อมต่อ ฐานข้อมูล
    mysql_select_db($dbname,$conn); // เลือกฐานข้อมูล
    mysql_query("SET NAMES utf8"); // กำหนด charset ให้ฐานข้อมูล เพื่ออ่านภาษาไทย

    $sql = "DELETE FROM products WHERE model = '$model'";
    $sq = "DELETE FROM images WHERE product_id = $id";

    mysql_query($sq);
    $edit_pd = mysql_query($sql);
    
    if ( !$edit_pd ) {
        echo 'false';
    } else {
        echo 'true';
    }
?>