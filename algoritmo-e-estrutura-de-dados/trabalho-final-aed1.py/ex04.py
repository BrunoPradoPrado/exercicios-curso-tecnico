# =======================================
# 4) Jogo da Velha (corrigido só o erro)
# =======================================

import random 

def preencheJogoVelha():
    matriz = []
    for i in range(0, 3):
        linha = []
        for j in range(0, 3):
            # CORREÇÃO: removido o loop infinito
            valor_sorteado = random.randint(1, 2)

            if valor_sorteado == 1:
                linha.append("X")
            else:
                linha.append("O")
        matriz.append(linha)
    return matriz    

def imprimeJogoVelha(matriz):
    for i in range(0, len(matriz)):
        print(matriz[i])

def verificarResultado(matriz):
    vencedor = 0
    for i in range(0, len(matriz)):
        somax = 0
        somay = 0
        for j in range(0, 3):
            if matriz[i][j] == "X":
                somax += 1
            if matriz[i][j] == "O":
                somay += 1
        if somax == 3:
            print(f'Houve vencedor na linha {i}: X')
            vencedor += 1
        if somay == 3:
            print(f'Houve vencedor na linha {i}: O')
            vencedor += 1

    if vencedor == 0:
        print("Deu velha: XO")

matriz = preencheJogoVelha()
imprimeJogoVelha(matriz)
verificarResultado(matriz)
