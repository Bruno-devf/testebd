<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="./eventos.png" type="image/png">
    <title>eventos escolares</title>
</head>
<body>
<?php
    $servidor = "localhost";
    $usuario = "root";
    $senha = "";
    $db = "edu_events";

    $conexao = mysqli_connect($servidor, $usuario, $senha, $db);

    $query = "SELECT * FROM tb_evento";

    $consulta_eventos = mysqli_query($conexao, $query);

    while( $linha = mysqli_fetch_array($consulta_eventos)){
        echo $linha['nome_evento'], '<br/>';
    }
?>
</body>
</html>