<?php 
//Página de editar Aluguel 

    if(!empty($_GET['id'])){

        include_once('../php/config.php');
        
        $id= $_GET['id'];

        $sqlSelect = "SELECT * FROM aluguel WHERE id = $id";
        $resultSelect = $conexao -> query($sqlSelect);

        $aluguel_data = mysqli_fetch_assoc($resultSelect);
        $livro = $aluguel_data['livro'];
        
        //Funções para atualizar o estoque 
        $hoje = new DateTime(date("Y/m/d"));
        $hojeN = $hoje -> format('d/m/Y');

        $sql_livro_connect = "SELECT * FROM livro WHERE nome = '$livro'";
        $resultado_livro_connect = $conexao -> query($sql_livro_connect);

        $livro_data = mysqli_fetch_assoc($resultado_livro_connect);
        $nome_livro_bd = $livro_data['nome'];   
        $estoque_bd = $livro_data['estoque'];
        $estoque_novo = $estoque_bd + 1;
        
        $sqlAlterar = "UPDATE livro SET estoque = '$estoque_novo' WHERE nome = '$nome_livro_bd'";
        $sqlResultAlterar = $conexao -> query($sqlAlterar);


        if($resultSelect -> num_rows > 0){
            $sqlUpdate = "UPDATE aluguel SET datadevo = '$hojeN' WHERE id = $id";
            $resultUpdate = $conexao -> query($sqlUpdate);
        }
        else{
            header('Location: ../paginas_iniciais/aluguel.php');
        }

        header('Location: ../paginas_iniciais/aluguel.php');
    }

?>