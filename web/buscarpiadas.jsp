<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buscar Piadas</title>
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
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="JS/telabusca.js" type="text/javascript"></script>
        <script src="JS/telaenviopiada.js" type="text/javascript"></script>
        <script type="text/javascript" src="http://js.nicedit.com/nicEdit-latest.js"></script> 
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        
    </head>
    <body onload="ExibeCategoria()">
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
                    <a class="nav-link" href="enviarpiadas.jsp">Enviar Piadas</a>
                  </li>
                  <li class="nav-item active">
                    <a class="nav-link" href="#">Buscar Piadas<span class="sr-only">(current)</span></a>
                  </li>
                  <li  class="nav-item">
                    <a class="nav-link" href="login.jsp">Login</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
    </header>
    <br><br><br>
    
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
    <div class="container">
        <br/>
            <div class="row justify-content-center">
                <div class="col-12 col-md-10 col-lg-8">
                    <form class="card card-sm" name="pesquisa" onsubmit="BuscaPiadas()">
                        <div class="card-body row no-gutters align-items-center">
                            <div class="col-auto">
                                <i class="fas fa-search h4 text-body"></i>
                            </div>
                            <!--end of col-->
                            <div class="col">
                                <select class="form-control form-control-lg form-control-borderless" id="preview" name="cat"></select>
                            </div>
                            <!--end of col-->
                            <div class="col-auto">
                                <input class="btn btn-lg btn-success" type="submit" value="Buscar"/>
                            </div>
                            <!--end of col-->
                        </div>
                    </form>
                </div>
                <!--end of col-->
            </div>
    </div>
     <br><br>
    <form form class="w3-container">
        <div style="height:200px; overflow: auto">
            <table class="table" >
                <thead>
                    <tr><th>Titulo</th><th>Categoria</th><th>Piada</th><th>Pontos</th></tr>
                </thead>
                <tbody id="previa">                

                </tbody>
            </table>
        </div>
    </form>
    
    </body>
</html>
