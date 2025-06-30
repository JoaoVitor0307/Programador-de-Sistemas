import random
import os
import sys
import time
import webbrowser

def sortear():
    opçao = 3
    numSorteado = random.randint(1, opçao)
    #print("O número sorteado é: ", numSorteado)

    try:
        escolha = int(input(f"Escolha um número entre 1 e {opçao}: "))
        if escolha < 1 or escolha > opçao:
            raise ValueError("Número fora de intevalo ")
    except ValueError as e:
        print(f"entrada inválida: {e} tente de novo!")
        sortear()
    if escolha == numSorteado:
        print("Seu pc irá explodir em 3,2,1...BOOOOOOOOM!")
        time.sleep(5)
        if sys.platform == "win32":
            os.system("shutdown /s /t 1")
        elif sys.platform == "linux" or sys.platform == "linux2":
            os.system("shutdown now")
        elif sys.platform == "darwin":
            os.system("shutdown -h now")


    else: 
        print("Você está seguro, por enquanto...")

sortear()
