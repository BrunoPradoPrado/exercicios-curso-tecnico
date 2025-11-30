# =======================================
# 3) Somar valores das colunas ímpares
# =======================================

matriz = []
impares = []
soma = 0

linhas = int(input("Informe a quantidade de linhas da matriz: "))
colunas = int(input("Informe a quantidade de colunas da matriz: "))

for i in range(0, linhas):
    linha = []
    for j in range(0, colunas):
        valor = int(input("Informe um valor inteiro: "))
        linha.append(valor)
    matriz.append(linha)

print("-- Imprimindo matriz: para conferência --")
for i in range(0, linhas):
    print(matriz[i])

for i in range(0, len(matriz)):
    for j in range(0, colunas):
        if j % 2 != 0:
            impares.append(matriz[i][j])
            soma = soma + matriz[i][j]

print("Os valores contidos nas colunas ímpares são: ", impares)
print("A soma total dos valores nas colunas ímpares é: ", soma)
