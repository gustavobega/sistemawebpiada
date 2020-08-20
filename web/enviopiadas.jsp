<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% String filtro = request.getParameter("filtro");%>
<html>
<head>
  <title>Envio de Piadas</title>
  
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
    <script src="JS/telaenviopiada.js" type="text/javascript"></script>
    <script type="text/javascript" src="http://js.nicedit.com/nicEdit-latest.js"></script> 
    
   
  <script type="text/javascript">
      bkLib.onDomLoaded(function() {
        new nicEditor({maxHeight : 200}).panelInstance('area');
    });
  </script>
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
                  <li class="nav-item active">
                    <a class="nav-link" href="#">Enviar Piadas<span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="buscarpiadas.jsp">Buscar Piadas</a>
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
    <form class="w3-container" name="dados" onsubmit="GravaPiada()">
        
        <h4>Titulo da Piada</h4>
        <input type="text" name="titulo" class="form-control" placeholder="titulo da piada">
        <br><br>
        <h4>Categoria da Piada</h4>
        <select id="preview" name="cat">         
        </select>
        <br><br><br>

        <h4>Escreve sua Piada</h4>               
        <input type="text" name="area" class="form-control"/>
        <!--<textarea name="area" id="area" style="width:70%;height:200px;">
        </textarea>-->
        <br>
        <input type="submit" class="btn btn-primary" value="Enviar" name="acao"/>
        
    </form>
    <form form class="w3-container" name="pesquisa" onsubmit="ExibePiadas()">
       <br><br><br>
       <input type="submit" class="btn btn-primary" value="Visualizar Piadas"/>   
    </form>
    <br><br>
    <form form class="w3-container" name="pesquisa" onsubmit="ExibePiadas()">
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
    <br><br><br>
    <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
    <!-- /.container -->
    </footer>
</body>

</html>


