<?php
    if(!empty($_GET['id'])){
        include_once('../php/config.php');

        $id = $_GET['id'];

        $sql_select = "SELECT * FROM livro WHERE id = $id";

        $result = $conexao -> query($sql_select);

        $livro_data = mysqli_fetch_assoc($result);
        $livro= $livro_data['nome'];

        // Conexão tabela alugueis
        $sql_aluguel_connect = "SELECT livro, datadevo FROM aluguel WHERE livro = '$livro'";
        $sql_aluguel_conect_result = $conexao -> query($sql_aluguel_connect);

        $aluguel_data = mysqli_fetch_assoc($sql_aluguel_conect_result);
        $livro_alugado = $aluguel_data['livro'];
        $datadevo = $aluguel_data['datadevo'];

        foreach($sqlAluguelConect_result as $linhas[]){
            //echo var_dump($linha).'<br>';
        }
        if($sql_aluguel_conect_result -> num_rows > 1){
            if($linhas[0]['datadevo'] != 0 && $linhas[1]['datadevo'] == 0){
                echo "<script> alert('Livro não pode ser deletado, pois possui aluguel.'); </script>";
                header('Refresh:0; url=../paginas_iniciais/livro.php', false, 303);
            }
            else if($linhas[0]['datadevo'] == 0 && $linhas[1]['datadevo'] == 0){
                echo "<script> alert('Livro não pode ser deletado, pois possui aluguel.'); </script>";
                header('Refresh:0; url=../paginas_iniciais/livro.php', false, 303);
            }
            else if($linhas[0]['datadevo'] == 0 && $linhas[1]['datadevo'] != 0){
                echo "<script> alert('Livro não pode ser deletado, pois possui aluguel.'); </script>";
                header('Refresh:0; url=../paginas_iniciais/livro.php', false, 303);
            }
            else{
                if($result -> num_rows > 0){
                    $sqlDelete = "DELETE FROM livro WHERE id= $id";
                    $resultDelete= $conexao -> query($sqlDelete);
                }
                $sqlReset = "ALTER TABLE livro AUTO_INCREMENT = 1;";
                $resultReset = $conexao -> query($sqlReset);
                header('Refresh:0; url=../paginas_iniciais/livro.php', false, 303);
            }
        }
        else{
            if($livro === $livro_alugado && $datadevo == 0){
                echo "<script> alert('Livro não pode ser deletado, pois possui aluguel ativo.'); </script>";
                header('Refresh:0; url=../paginas_iniciais/livro.php', false, 303);
            }
            else{
                if($result -> num_rows > 0){
                    $sqlDelete = "DELETE FROM livro WHERE id = $id";
                    $resultDelete= $conexao -> query($sqlDelete);
                
                }
                $sqlReset = "ALTER TABLE livro AUTO_INCREMENT = 1;";
                $resultReset = $conexao -> query($sqlReset);
                header('Refresh:0; url=../paginas_iniciais/livro.php', false, 303);
            }
        }
    }
?>
