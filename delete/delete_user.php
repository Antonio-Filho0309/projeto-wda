<?php
//Página de excluir usuario
//Funções para não apagar o usuario se ele tiver o um livro registrado
    if(!empty($_GET['id'])){
        include_once('../php/config.php');

        $id = $_GET['id'];

        $sqlSelect = "SELECT * FROM usuario WHERE id = $id";

        $result = $conexao -> query($sqlSelect);

        $user_data = mysqli_fetch_assoc($result);
        $nome= $user_data['nome'];

        // Conexão tabela alugueis
        $sql_aluguel="SELECT * FROM aluguel WHERE nome = '$nome'";
        $result_connect_aluguel = $conexao -> query($sql_aluguel);

        $aluguel_data = mysqli_fetch_assoc($result_connect_aluguel);
        $nome_aluguel = $aluguel_data['nome'];
        $datadevo = $aluguel_data['datadevo'];
        
        foreach($result_connect_aluguel as $linhas[]){
            //echo var_dump($linha).'<br>';
        }
        if($result_connect_aluguel -> num_rows > 1){
            if($linhas[0]['datadevo'] != 0 && $linhas[1]['datadevo'] == 0){
                echo "<script> alert('Com aluguel ativado , úsuario não pode ser deletado.'); </script>";
                header('Refresh:0; url=../paginas_iniciais/user.php', false, 303);
            }
            else if($linhas[0]['datadevo'] == 0 && $linhas[1]['datadevo'] == 0){
                echo "<script>  alert('Com aluguel ativado , úsuario não pode ser deletado.'); </script>";
                header('Refresh:0; url=../paginas_iniciais/user.php', false, 303);
            }
            else if($linhas[0]['datadevo'] == 0 && $linhas[1]['datadevo'] != 0){
                echo "<script> alert('Com aluguel ativado , úsuario não pode ser deletado.'); </script>";
                header('Refresh:0; url=../paginas_iniciais/user.php', false, 303);
            }
            else{
                if($result -> num_rows > 0){
                    $sql_delete = "DELETE FROM usuario WHERE id = $id";
                    $result_delete= $conexao -> query($sql_delete);
                }
                $sql_reset = "ALTER TABLE livro AUTO_INCREMENT = 1;";
                $result_reset = $conexao -> query($sql_reset);
                header('Location: ../paginas_iniciais/user.php');
            }
        }
        else{
            if($nome === $nome_aluguel && $datadevo == 0){
                echo "<script> window.alert('Com aluguel ativado , úsuario não pode ser deletado.'); </script>";
                header('Location: ../paginas_iniciais/user.php');
            }
            else{
                if($result -> num_rows > 0){
                $sql_delete = "DELETE FROM usuario WHERE id = $id";
                $result_delete= $conexao -> query($sql_delete);
                
                }
                $sql_reset = "ALTER TABLE usuario AUTO_INCREMENT = 1;";
                $result_reset = $conexao -> query($sql_reset);
                header('Location: ../paginas_iniciais/user.php');
            }
        }
    }
?>