<?php


if(isset($_POST['update'])){

  include_once('config.php');

    $id=$_POST['id'];
    $nome = $_POST['select_nome'];
    $livro = $_POST['select_livro'];
    $dataal = $_POST['dataal'];
    $dataprev = $_POST['dataprev'];
    $datadevo = $_POST['datadevo'];
    
    
    $sqlUpdate = "UPDATE aluguel SET nome='$nome', livro='$livro', dataal='$dataal', dataprev='$dataprev',datadevo='$datadevo' WHERE id='$id'";

    $result=$conexao->query($sqlUpdate);

  
  }
  

  
  


header('Location: ../paginas_iniciais/aluguel.php');

//ATUALIZAR(EDITAR) a tabela aluguel

?>