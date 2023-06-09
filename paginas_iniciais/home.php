<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wda Livraria</title>
    <!--links-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="shortcut icon" href="../img/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="../css/login.css?">
    <link rel="stylesheet" href="../css/mediaquerry.css">
</head>

<body>
    <!--Tela de login-->    
    <div class="login-area" style="background-color: rgba(0, 0, 0, 0.897);">
        <h1 >Login</h1>
        <hr>
        <div class="inputs">
            <form action="../php/testelogin.php" method='POST'>
                <input type="text" name="nome" id="user"  required="" placeholder="Nome"> <br>
                <input type="password" name="senha" id="password" required placeholder="Senha"><br>
                <input type="submit" value="Entrar" id="btn-entrar" name="submit">
            </form>
        </div>
    </div>
    <!--Fim da tela de Login--->

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>    
</body>
</html>