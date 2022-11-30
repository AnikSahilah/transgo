<?php
header('Access-Control-Allow-Origin: *');
$conn = new mysqli("Localhost", "root", "transgonew");
mysqli_connect_errno();
date_default_timezone_set('Asia/Jakarta');
$json = array (
    "response_status"=>"OK",
    "response_message"=>'',
    "data"=>array()
);
$username=isset($_GET['username'])?$_GET['username']:'';
$password=isset($_GET['password'])?$_GET['password']:'';
$sql=$conn->query("select * from user where Nama_User'".$username."' and Sandi='".$password."'");
$jml=$sql->num_rows;
if($jml>0) {
    while($rs=$sql->fetch_object()) {
        $arr_row=array();
        $arr_row['NIK'] = $rs->NIK;
        $arr_row['Nama_User'] = $rs->Nama_User;
        $arr_row['Ttl'] = $rs->Ttl;
        $arr_row['No_Hp'] = $rs->No_Hp;
        $arr_row['Alamat'] = $rs->Alamat;
        $arr_row['Gender'] = $rs->Gender;
        $arr_row['Email'] = $rs->Email;
        $arr_row['Sandi'] = $rs->Sandi;
        $json['data'][] =$arr_row;
    }
}else{
    $json['response_status']= "Error";
    $json['respon_message']= "Username atau Password Salah";
}

header('Content-Type: aplication/json');