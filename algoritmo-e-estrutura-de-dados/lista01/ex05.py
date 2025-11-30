# ============================================
# EXERCÍCIO 5 — VERIFICAR SE NÚMERO ESTÁ NA LISTA
# ============================================

def verificaNumero(numero_lido):
    lista_numeros = [8, 12, -3, 15, 18, 20, 23, 50, -89, 78]
    print("\nNúmeros:", lista_numeros)

    if numero_lido in lista_numeros:
        posicao = lista_numeros.index(numero_lido)
        print(f"O número está na lista. Sua posição é: {posicao}.")
    else:
        print("O número NÃO está na lista.")

while True:
    numero = int(input("\nDigite um número inteiro: "))
    verificaNumero(numero)

    continuar = int(input("Deseja verificar outro número? (1 - sim | 2 - não): "))
    if continuar == 2:
        print("Fim do programa.")
        break
