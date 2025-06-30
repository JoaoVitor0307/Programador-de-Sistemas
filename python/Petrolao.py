print("hello my friend")

alcool = float(input("insira o valor do alcool: "))
gasolina = float(input("insira o valor da gasolina: "))

resultado = alcool / gasolina

print(resultado)

if resultado > 0.7:
    print("Abasteça com gasolina! ")

elif resultado < 0.7:
    print("Abasteça com alcool! ")
else:
    print("Tanto faz my friend! ")