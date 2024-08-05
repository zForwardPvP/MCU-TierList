<?php
include 'db.php';

$data = json_decode(file_get_contents('php://input'), true);

$id1 = $data['id1'];
$place1 = $data['place1'];
$id2 = $data['id2'];
$place2 = $data['place2'];

$sql1 = "UPDATE Movie SET Place = '$place1' WHERE Movie_id = '$id1'";
$sql2 = "UPDATE Movie SET Place = '$place2' WHERE Movie_id = '$id2'";

mysqli_query($connect, $sql1);
mysqli_query($connect, $sql2);

mysqli_close($connect);
?>
