<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt">
<head>
	<title>Tela Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <link href="css/animate.css" rel="stylesheet" type="text/css"/>
        <link href="css/fonts/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="css/fonts/Linearicons-Free-v1.0.0/icon-font.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/icon-font.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/hamburgers.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/main.css" rel="stylesheet" type="text/css"/>
        <link href="css/select2.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/util.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link href="css/shop-homepage.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="css/estilocadastro.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <header>
	<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
            <div class="container">
              <a class="navbar-brand" href="index.html">Web Piadas</a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                  <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Inicio
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="enviopiadas.jsp">Enviar Piadas</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="buscarpiadas.jsp">Buscar Piadas</a>
                  </li>
                  <li  class="nav-item active">
                    <a class="nav-link" href="#">Login<span class="sr-only">(current)</span></a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
    </header>
	
    <div class="wrapper fadeInDown">
        <div id="formContent">
            <!-- Tabs Titles -->

            <!-- Icon -->
            <div class="fadeIn first">
              <img src="imagem/logo.png" id="icon" alt="User Icon" />
            </div>

            <!-- Login Form -->
            <form>
              <input type="text" id="login" class="fadeIn second" name="login" placeholder="login">
              <input type="text" id="password" class="fadeIn third" name="senha" placeholder="senha">
              <input type="submit" class="fadeIn fourth" value="Logar">
            </form>

            <!-- Remind Passowrd -->
            <div id="formFooter">
              <a class="underlineHover" href="cadastro.jsp">Efetuar Cadastro</a>
            </div>

         </div>
      </div>
    
</body>
</html>

