<?php
    $dbHost='Localhost';
    $dbUsername='admin';
    $dbPassword='admin';
    $dbName='wda-livraria';

    $conexao=new mysqli( $dbHost,$dbUsername,$dbPassword,$dbName);

    /*if($conexao->connect_errno){
        echo 'Erro';
    } else{
        echo 'Conexão efetuada com sucesso';
    }*/
    
//Página para a conexão com banco de dados
?>

