<?php
    $postdata = file_get_contents("php://input");
	$request = json_decode($postdata);

	$username = $request->username;
    $totalprice = $request->totalprice;
    $date = date('Y-m-d H:i:s');
	$fname = $request->fname;
    $lname = $request->lname;
    $phone = $request->phone;
    $email = $request->email;
    $address = $request->address;
    $detail = $request->detail;

    $host="localhost";
    $user="root"; // MySql Username
    $pass=""; // MySql Password
    $dbname="easywatch"; // Database Name

    $conn=mysql_connect($host,$user,$pass) or die("ไม่สามารถเชื่อมต่อฐานข้อมูลได้"); // เชื่อมต่อ ฐานข้อมูล
    mysql_select_db($dbname,$conn); // เลือกฐานข้อมูล
    mysql_query("SET NAMES utf8"); // กำหนด charset ให้ฐานข้อมูล เพื่ออ่านภาษาไทย

    $sql = "INSERT INTO orders (username, total_price, order_date, first_name, last_name, phone, email, address)
            VALUES ('$username', $totalprice, '$date', '$fname', '$lname', '$phone', '$email', '$address')";
    $result=mysql_query($sql); // คิวรี่คำสั่ง sql
    $order_id = mysql_insert_id();

    if( !$result )
    {
    	echo 'false';
    } else {
    	foreach ($detail as $dt) {
            $sql_dt = "INSERT INTO orders_detail (order_id, product_model, unit)
                        VALUES ($order_id, '$dt->model', $dt->unit)";
            mysql_query($sql_dt);
        }
        
        $rmcart = "DELETE FROM carts WHERE username = '$username'";
        mysql_query($rmcart);
    }
?>