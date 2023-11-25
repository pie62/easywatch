<?php
    $postdata = file_get_contents("php://input");
	$request = json_decode($postdata);

	$brand_id = $request->brand_id;
	$model = $request->model;
    $color = $request->color;
    $warranty = $request->warranty;
    $price = $request->price;
    $unit = $request->unit;
    $detail = $request->detail;
    $add_date = date('Y-m-d H:i:s');

    $host="localhost";
    $user="root"; // MySql Username
    $pass=""; // MySql Password
    $dbname="easywatch"; // Database Name

    $conn=mysql_connect($host,$user,$pass) or die("ไม่สามารถเชื่อมต่อฐานข้อมูลได้"); // เชื่อมต่อ ฐานข้อมูล
    mysql_select_db($dbname,$conn); // เลือกฐานข้อมูล
    mysql_query("SET NAMES utf8"); // กำหนด charset ให้ฐานข้อมูล เพื่ออ่านภาษาไทย

    $sql = "INSERT INTO products (id, brand, model, price, color, warranty, stock, detail, add_date) VALUES ('', '$brand_id', '$model', '$price', '$color', '$warranty', '$unit', '$detail', '$add_date')";

    $add_pd = mysql_query($sql);
    
    if ( !$add_pd ) {
        echo 'false';
        return;
    }

    $pd_id = mysql_insert_id();
    
    echo $pd_id;

?>