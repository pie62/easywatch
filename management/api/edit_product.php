<?php
    $postdata = file_get_contents("php://input");
	$request = json_decode($postdata);

	$pd_id = $request->pd_id;
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

    $conn=mysqli_connect($host,$user,$pass) or die("ไม่สามารถเชื่อมต่อฐานข้อมูลได้"); // เชื่อมต่อ ฐานข้อมูล
    mysqli_select_db($conn,$dbname); // เลือกฐานข้อมูล
    mysqli_query($conn,"SET NAMES utf8"); // กำหนด charset ให้ฐานข้อมูล เพื่ออ่านภาษาไทย

    $sql = "UPDATE products
            SET     model = '$model',
                    price = $price,
                    color = '$color',
                    warranty = '$warranty',
                    stock = $unit,
                    detail = '$detail'
            WHERE id = $pd_id";

    $edit_pd = mysqli_query($conn,$sql);
    
    if ( !$edit_pd ) {
        echo 'false';
    } else {
        echo 'true';
    }
?>