<?php
include('conn.php');

include('function.php');

include('head.php');


$current_date = date('Y-m-d');
$first_day_this_month = date('Y-m-01');
$last_day_this_month  = date('Y-m-t');
$first_date = strtotime($first_day_this_month);
$second_date = strtotime($last_day_this_month);
$datediff = $second_date - $first_date;
$number_of_days = round($datediff / (60 * 60 * 24)); 
$after_month_date = date('Y-m-d',strtotime('+30 days',strtotime($current_date  ))) . PHP_EOL;
$Date = getDatesFromRange($first_day_this_month, $last_day_this_month);


$get_data=$conn->query("SELECT * FROM `htl_rooms`");
// Start getting roomsdata from database           
while($row=$get_data->fetch_assoc()){
                                        $room_array =[];
                                        $room_array =$row;
                                        $room_meta=[];
                                        $roomId=$row['roomId'];
                                        $roomName=$row['roomName'];
                                        $roomImageUrl=$row['roomImageUrl'];
                                        
                                        unset($roomdata);
                                        $get_meta=$conn->query("SELECT * FROM `roomdata` WHERE roomId = '$roomId'");
                                        foreach($get_meta as $k=>$value){
                                            
                                         $roomId_in =   $value['roomId']; 
                                         $cellId =   $value['cellId']; 
                                         $booking_date =   $value['booking_date']; 
                                         $price =   $value['price']; 
                                         $status =   $value['status'];
                                         
                                         
                                                    /// starting Room Data Array
                                                   $roomdata[] = array(
                                                      "cellId" => $cellId,
                                                      "booking_date" => $booking_date,
                                                      "price" => $price,
                                                      "status" => $status
                                                    );
                                                    /// Closing Room Data Array
                                                            }
                                                            
                                                 /// starting Room Array
                                                $data[] = array(
                                                  "roomId" => $roomId,
                                                  "roomName" => $roomName,
                                                  "roomImageUrl" => $roomImageUrl,
                                                  "roomData" => $roomdata
                                                    
                                                );
                                                /// closing Room Array
                                        
                                                /// Start creating Room Calendar in Database if not created
                                                 for ($i = 0; $i < $number_of_days; $i++){        
                                                        $get_roomData =$conn->query("SELECT cellId FROM `roomdata` WHERE roomId = '$roomId' AND booking_date = '$Date[$i]'");
                                                        $num_data = mysqli_num_rows($get_roomData);
                                                        
                                                        if($num_data == '0'){
                                                                    $insert_data=$conn->query("INSERT INTO `roomdata`(`roomId`, `price`, `status`, `booking_date`) 
                                                                                                VALUES ('$roomId','500','Available','$Date[$i]')"); 
                                                        }
                                                        
                                                    }
                                                 /// Close creating Room Calendar in Database if not created


}
// Close getting roomsdata from database  

header("Content-type: application/json");

echo json_encode($data);

?>