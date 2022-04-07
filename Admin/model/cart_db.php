<?php

//Get categories
function get_cart() {
    global $db;
    $query = 'SELECT * FROM cart';
    $result = $db->query($query);
    return $result;
}

function them_cart($userid, $chitiet, $giatien, $trangthai, $date) {
    global $db;
    $query = "INSERT INTO `cart` (`IdCart`, `IdUser`, `ChiTiet`, `GiaTien`, `TrangThai`, `ThoiGian`) VALUES (NULL, '$userid', '$chitiet', '$giatien', '$trangthai', '$date')";
    $db->exec($query);
}
function delete_cart($id) {
    global $db;
    $query = "DELETE FROM cart WHERE IdCart = '$id'";
    $db->exec($query);
}
function up_cart($userid, $chitiet, $giatien, $trangthai, $date, $cartid){
    global $db;
    $query = "UPDATE `cart` SET `IdUser` = '$userid', `ChiTiet` = '$chitiet', `GiaTien` = '$giatien', `TrangThai` = '$trangthai', `ThoiGian` = '$date' WHERE `cart`.`IdCart` = '$cartid'";
    $db->exec($query);
}
?>