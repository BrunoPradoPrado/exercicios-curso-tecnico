# ============================================
# EXERCÍCIO 1 — MATRIZ
# ============================================

matriz = []

def preencher_matriz(qtd_linhas, qtd_colunas):
    for i in range(qtd_linhas):
        linha = []
        for j in range(qtd_colunas):
            valor = int(input("Informe um valor: "))
            linha.append(valor)
        matriz.append(linha)

def imprimir_matriz(matriz):
    for linha in matriz:
        print(linha)

qtd_linhas = int(input('Informe a quantidade de linhas da matriz: '))
qtd_colunas = int(input('Informe a quantidade de colunas da matriz: '))

preencher_matriz(qtd_linhas, qtd_colunas)
imprimir_matriz(matriz)
