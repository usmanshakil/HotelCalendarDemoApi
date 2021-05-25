<?php
include('conn.php');

include('function.php');

include('head.php');

if(isset($_POST['cellId'])){

        $status = $_POST['status']; 
        $price = $_POST['price'];
        $cellId = $_POST['cellId'];
        
                if (empty($_POST['cellId']) && empty($_POST['status'])) die();
                
                $data_updated =$conn->query("UPDATE `roomdata` SET `price` = '$price', `status` = '$status' WHERE `roomdata`.`cellId` = '$cellId'");
                        
                        if($data_updated){
                            $res = 'Record Updated';
                        }else{
                            $res = 'Record Not Updated';
                        }
        
        echo json_encode($res);
}

?>