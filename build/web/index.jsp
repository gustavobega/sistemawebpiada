<%@page import="bd.dal.DALPiada"%>
<%@page import="bd.entidades.Piada"%>
<%@page import="bd.entidades.Categoria"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Jokes</title>
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
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <header>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
            <div class="container">
              <a class="navbar-brand" href="#">Web Piadas</a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                  <li class="nav-item active">
                    <a class="nav-link" href="#">Inicio
                      <span class="sr-only">(current)</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="enviopiadas.jsp">Enviar Piadas</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="buscarpiadas.jsp">Buscar Piadas</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Login</a>
                  </li>
                </ul>
              </div>
            </div>
        </nav>
  </header>
    
  <div class="limiter">
  <!-- Page Content -->
  <div class="container" >

    <div class="row">

      <!-- /.col-lg-3 -->

      <div class="col-lg-12">

        <div id="carouselPiada" class="carousel slide my-4" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselPiada" data-slide-to="0" class="active"></li>
            <li data-target="#carouselPiada" data-slide-to="1"></li>
            <li data-target="#carouselPiada" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
              <img class="d-block img-fluid" src="imagem/mascara.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="imagem/einsten.jpg" alt="Second slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="imagem/mascara.jpg" alt="Third slide">
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselPiada" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselPiada" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>

        <div class="row">

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="imagem/minoria.jpg" alt=""></a>     
              <div class="card-body">
                <h4 class="card-title">
                  Piadas étnicas e sobre minorias
                </h4>
                <p class="card-text">As minorias também são alvo preferencial de piadas.</p>
              </div>
              <!--<div class="card-footer">
                  <small class="text-muted"><a href="#">&#9733;</a><a href="#">&#9733;</a><a href="#">&#9733;</a><a href="#">&#9733;</a><a href="#">&#9733;</a></small>
              </div>-->
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="imagem/bebado.jpg" alt=""></a>      
              <div class="card-body">
                <h4 class="card-title">
                  Piadas de bêbados
                </h4>
                <p class="card-text">São piadas que falam sobre alcoólatras.</p>
              </div>
              <!--<div class="card-footer">
                  <small class="text-muted"><a href="#">&#9733;</a><a href="#">&#9733;</a><a href="#">&#9733;</a><a href="#">&#9733;</a><a href="#">&#9733;</a></small>
              </div>-->
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="imagem/sexistas.jpg" alt=""></a>    
              <div class="card-body">
                <h4 class="card-title">
                  Piadas sexistas
                </h4>
                <p class="card-text">Uma piada sexista é a que satiriza as características de um gênero ou sexo, considerando-o "inferior" ao outro.</p>
              </div>
              <!--<div class="card-footer">
                  <small class="text-muted"><a href="#">&#9733;</a><a href="#">&#9733;</a><a href="#">&#9733;</a><a href="#">&#9733;</a><a href="#">&#9733;</a></small>
              </div>-->
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="imagem/humorNegro.png" alt=""></a>                   
              <div class="card-body">
                <h4 class="card-title">
                  Piadas de humor negro
                </h4>
                <p class="card-text">Essas são as piadas que satirizam fatos mórbidos.</p>
              </div>
              <!--<div class="card-footer">
                  <small class="text-muted"><a href="#">&#9733;</a><a href="#">&#9733;</a><a href="#">&#9733;</a><a href="#">&#9733;</a><a href="#">&#9733;</a></small>
              </div>-->
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="imagem/joaozinho.jpg" alt=""></a>      
              <div class="card-body">
                <h4 class="card-title">
                  Joãozinho
                </h4>
                <p class="card-text">Joãozinho é um nome genérico que se utiliza em piadas que envolvem um garotinho que faz perguntas ou comentários que provocam espanto em adultos.</p>
              </div>
              <!--<div class="card-footer">
                  <small class="text-muted"><a href="#">&#9733;</a><a href="#">&#9733;</a><a href="#">&#9733;</a><a href="#">&#9733;</a><a href="#">&#9733;</a></small>
              </div>-->
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="imagem/trocadilhos.png" alt=""></a>     
              <div class="card-body">
                <h4 class="card-title">
                  Trocadilhos
                </h4>
                <p class="card-text">Os trocadilhos, ou jogos de palavras, são possivelmente as piadas que geram a maior dificuldade para tradução.</p>
              </div>
              <!--<div class="card-footer">
                  <small class="text-muted"><a href="#">&#9733;</a><a href="#">&#9733;</a><a href="#">&#9733;</a><a href="#">&#9733;</a><a href="#">&#9733;</a></small>
              </div>-->
            </div>
          </div>

        </div>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->
  </div>
 </div>
  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
    <!-- /.container -->
  </footer>
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
