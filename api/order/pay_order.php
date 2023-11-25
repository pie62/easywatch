<?php
    $postdata = file_get_contents("php://input");
	$request = json_decode($postdata);

	$id = $request->id;
    $bankName = $request->bankName;
	$acNumber = $request->acNumber;
    $payDate = $request->payDate;
    $status = "รอการยืนยัน";

    $host="localhost";
    $user="root"; // MySql Username
    $pass=""; // MySql Password
    $dbname="easywatch"; // Database Name

    $conn=mysql_connect($host,$user,$pass) or die("ไม่สามารถเชื่อมต่อฐานข้อมูลได้"); // เชื่อมต่อ ฐานข้อมูล
    mysql_select_db($dbname,$conn); // เลือกฐานข้อมูล
    mysql_query("SET NAMES utf8"); // กำหนด charset ให้ฐานข้อมูล เพื่ออ่านภาษาไทย

    $sql = "UPDATE orders set
            bank_name = '$bankName',
            account_number = '$acNumber',
            pay_date = '$payDate',
            order_status = '$status'
            WHERE id = $id";
    $result=mysql_query($sql); // คิวรี่คำสั่ง sql

    $sq = "SELECT * from orders_detail WHERE order_id = $id";
    $res = mysql_query($sq);

    if( !$result ) {
    	echo 'false';
    } 
    else {

        while ( $row = mysql_fetch_assoc($res) ) {
            $u = $row['unit'];
            $m = $row['product_model'];
            $q = "UPDATE products SET stock = stock - $u WHERE model = '$m'";
            mysql_query($q);
        }
    }

?>