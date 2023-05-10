<?php
//Excluir editora
//Função para que ele não consiga ser deletado caso esteja com um aluguel ativo 
    if(!empty($_GET['id'])){
        include_once('../php/config.php');

        $id = $_GET['id'];

        $sqlSelect = "SELECT * FROM editora WHERE id = $id";

        $result = $conexao -> query($sqlSelect);

        $editora_data = mysqli_fetch_assoc($result);
        $nome_editora = $editora_data['nome'];

        // Conexão tabela livros
        $sqlLivro_connect = "SELECT * FROM livro WHERE editora = '$nome_editora'";
        $result_livro = $conexao -> query($sqlLivro_connect);

        $livro_data = mysqli_fetch_assoc( $result_livro);
        $editora_livro = $livro_data['editora'];
 
        if($editora_livro === $nome_editora){
            echo "<script> alert('Por possuir livros cadastrados, a editora não pode ser deletada.'); </script>";
            header('Refresh:0; url=../paginas_iniciais/editora.php', true, 303);
        }
        else{
            if($result -> num_rows > 0){
                $sql_delete = "DELETE FROM editora WHERE id = $id";
                $result_delete= $conexao -> query($sql_delete);
            }
            $sql_reset = "ALTER TABLE editoras AUTO_INCREMENT = 1;";
            $result_reset = $conexao -> query($sql_reset);
            header('Refresh:0; url=../paginas_iniciais/editora.php', true, 303);
        }
    } 
?>