var jogador = "x";

function jogar(celula){

    //compara se a celula está vazia para assim escrever
    if(celula.innerHTML == ""){

        //escreva a letra na célula
        celula.innerHTML = jogador;
        if(jogador == "x"){
            jogador = "o";
            celula.style.backgroundColor = "blue";
        }else{
            jogador = "x";
            celula.style.backgroundColor = "pink";
        }
    }

}

function reiniciar(){
    window.location.reload();

}