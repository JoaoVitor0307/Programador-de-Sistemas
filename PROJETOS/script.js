alert("Olá mundo");
//Uma variável guarda algum valor temporiamente
//entrada dos dados
var nome = "IguinhoDoJob";
var idade = 20;
var senha = "1234";
//estrutura de codinção
if(idade > 17){
    alert("Pode votar!" + nome);
} else{
    alert("Vai embora daqui" + nome);
}

if(nome == "IguinhoDoJob" && senha == "123"){
    alert("login condedio");
} else{
    alert("Tente novamente! Gaiato!");
}

//laço de repetição
contador = 0;
while(contador < 1000){
    contador = contador +1;
    console.log(contador);
}

var celular = document.querySelector('.celular'); //Icone de menu
var listamenu = document.querySelector('.menu ul'); //Itens do menu

celular.addEventListener("click", function(){
    listamenu.classList.toggle("mostrarMenu");
});



