function Cadastrar()
{
    event.preventDefault(); // evita refresh da tela
   
    var xhttp = new XMLHttpRequest();
    xhttp.open("POST", "CtrCadastro");
    var form = document.forms["dados"];
    alert(form.nome.value);
    alert(form.senha.value);
    alert(form.login.value);
    xhttp.send();
  
    xhttp.onreadystatechange = function () {
        //if (xhttp.readyState === 4 && xhttp.status === 200) {
            document.getElementById('previa').innerHTML = xhttp.responseText;
        //}
    };
}

