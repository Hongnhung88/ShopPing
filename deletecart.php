<?php 
$conn = mysqli_connect('localhost', 'root', '', 'mycart') or die ('Không thể kết nối tới database');
 
// Câu truy vấn
$sql = 'DELETE FROM giohang WHERE 0';
 
// DELETE
if (mysqli_query($conn, $sql)){
    echo 'Xóa thành công';
}
 
// Ngắt kết nối
mysqli_close($conn);


?>