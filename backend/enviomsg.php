<?php

require_once("./Model/mensagem.php");

$name = $_POST['nome'];
$msg = $_POST['msg'];
$message = new Mensagem($name, $msg);

$validate = $message->novaMensagem(); 

header('Access-Control-Allow-Origin: *');
header('Content-type: application/json');

if ($validate ){
    echo json_encode(true);
} else {
    echo json_encode(false);
}
