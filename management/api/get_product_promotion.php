<?php
    // $postdata = file_get_contents("php://input");
	// $request = json_decode($postdata);
    //
	// $uname = $request->username;
	// $pwd = $request->password;

    $host="localhost";
    $user="root"; // MySql Username
    $pass=""; // MySql Password
    $dbname="easywatch"; // Database Name

    $conn=mysql_connect($host,$user,$pass) or die("ไม่สามารถเชื่อมต่อฐานข้อมูลได้"); // เชื่อมต่อ ฐานข้อมูล
    mysql_select_db($dbname,$conn); // เลือกฐานข้อมูล
    mysql_query("SET NAMES utf8"); // กำหนด charset ให้ฐานข้อมูล เพื่ออ่านภาษาไทย

    $sql = "SELECT * FROM products 
            LEFT JOIN products_brand 
            ON(products.brand = products_brand.brand_id)
            WHERE price_promotion <> 0";
    $result=mysql_query($sql); // คิวรี่คำสั่ง sql
    $num=mysql_num_rows($result); // ตรวจสอบจำนวน record ที่คิวรี่ออกมา

    $arr = array();
    if($num > 0)
    {
    	while( $row = mysql_fetch_assoc( $result)){
    		$arr[] = $row;
		}
    	echo $json_response = json_encode($arr);
    } else {
    	echo 'false';
    }


?>