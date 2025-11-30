#1.
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
qtd_linhas = int(input('Informe a quantidade de linhas de uma matriz: '))
qtd_colunas = int(input('Informe a quantidade de colunas de uma matriz: '))
preencher_matriz(qtd_linhas, qtd_colunas)
imprimir_matriz(matriz)



#2.
def tabuada(x):
  for i in range(0,11):
    print(valor, "X", i, "=", valor*i)
valor = int(input("Informe um valor: "))
tabuada(valor)



#3.
def teste_primo(x,y):
  for i in range (x, y+1):
    divisores = 0
    for j in range (1,i+1):
      if i % j == 0:
        divisores += 1
    if divisores == 2:
      print("O valor", i, "é primo? True")
    else:
      print("O valor", i, "é primo? False")
a = int(input("Informe o primeiro valor: "))
b = int(input("Informe o segundo valor: "))
teste_primo(a,b)



#4.
valor = 0
lista = []
lista_invertida = []
def tamanho_e_preencher_lista(x):
  for i in range(0,x):
    valor = int(input("Informe um valor: "))
    lista.append(valor)
  print("--Valores na lista--")
  print(lista)  
  for j in range (0,len(lista)):
    print(lista[j])
def inverter_lista(lista):
  for i in range(0,len(lista)):
    valor = lista[i]
    lista_invertida.insert(0,valor)
  print("--Lista inversa-- ")
  print(lista_invertida)
  for j in range(0,len(lista_invertida)):
    print(lista_invertida[j])
tamanho_lista = int(input("Informe um tamanho para a lista:"))
tamanho_e_preencher_lista(tamanho_lista)
inverter_lista(lista)



#5.
posicao_certa = 0
def verificaNumero(numero_lido):
  lista_numeros = [8, 12, -3, 15, 18, 20, 23, 50, -89, 78]
  print("Números: ", lista_numeros)
  for i in range (0,len(lista_numeros)):
    if numero_lido == lista_numeros[i]:
      posicao_certa = i
  if numero_lido in lista_numeros:
    print(f'O número verificado está na lista. Sua posição na lista é: {posicao_certa}.')
  else:
    print("O número não está armazenado na lista.")
while True:
  numero = int(input("Digite um número inteiro: "))
  print()
  verificaNumero(numero)
  print()
  continuar = int(input("Deseja verificar outro número? 1 - sim ou 2 - não: "))
  if continuar == 2:
    print("Fim do programa.")
    break 