<?php

include 'conexion.php';

$usuario = $_POST["usuario"];
$password = $_POST["password"];

$contrasenaMD5 = md5($password);

$resultado = $mysqli->query("SELECT * FROM usuario WHERE nomusu ='".$usuario."' AND clave = '".$contrasenaMD5."'") or die($mysqli->error);

while($fila = $resultado->fetch_object())
{
    $id = $fila->IDUSUARIO;
    $nombre = $fila->NOMBRE;
}

echo $id .": ". $nombre;
?>