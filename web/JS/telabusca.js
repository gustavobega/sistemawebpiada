function BuscaPiadas()
{
    event.preventDefault(); // evita refresh da tela
   
    var xhttp = new XMLHttpRequest();
    xhttp.open("GET", "CtrBuscaPiada");
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    var form = document.forms["pesquisa"]; 
    alert(form.cat.value);
    xhttp.send("cat=" + form.cat.value);
  
    xhttp.onreadystatechange = function () {
        //if (xhttp.readyState === 4 && xhttp.status === 200) {
            document.getElementById('previa').innerHTML = xhttp.responseText;
        //}
    };
}


