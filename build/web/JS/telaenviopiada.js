function ExibeCategoria()
{
    event.preventDefault(); // evita refresh da tela
   
    var xhttp = new XMLHttpRequest();
    xhttp.open("GET", "CtrCategoria");
    xhttp.send();
    xhttp.onreadystatechange = function () {
        //if (xhttp.readyState === 4 && xhttp.status === 200) {
            document.getElementById('preview').innerHTML = xhttp.responseText;
        //}
    };
}

function ExibePiadas()
{
    event.preventDefault(); // evita refresh da tela
   
    var xhttp = new XMLHttpRequest();
    xhttp.open("GET", "CtrBusca");
    xhttp.send();
  
    xhttp.onreadystatechange = function () {
        //if (xhttp.readyState === 4 && xhttp.status === 200) {
            document.getElementById('previa').innerHTML = xhttp.responseText;
        //}
    };
}

function GravaPiada()
{
    event.preventDefault(); // evita refresh da tela
    var xhttp = new XMLHttpRequest();
    xhttp.open("POST", "CtrEnvioPiada");
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    var form = document.forms["dados"]; 
    
    xhttp.send("titulo=" + form.titulo.value + "&cat=" + form.cat.value + "&area=" + form.area.value + "&acao=" + "confirmar");
    
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState === 4 && xhttp.status === 200) {
            
            alert("Cadastrado com sucesso");
            form.titulo.value = "";
            form.area.value = "";
            
        }
    };
}



