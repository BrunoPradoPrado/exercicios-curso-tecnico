import random
posicao_sorteada = random.randrange(0,9) #importa biblioteca random e gera um numero randomico entre 0 e 9

#lista com possíveis palavras
possiveis_palavras = ["UVA", "PERA", "FIAT", "KIA", "BRUNO", "CLEITON", "FUTEBOL", "TENIS", "VOLEI"]

#lista com dicas
dicas = ["Fruta","Fruta", "Marca de Carro", "Marca de Carro", "Pessoa","Pessoa","Esporte", "Esporte", "Esporte" ]


#pega o tamanho (nº de caracteres) da palavra sorteada
tamanho_palavra = len(possiveis_palavras[posicao_sorteada])

#pega a palavra sorteada em si
palavra_forca = possiveis_palavras[posicao_sorteada]

print("##############################")
print("###### JOGO DA FORCA #########")
print("##############################")

print('  _____________ ')
print('  | /         | ')
print('  |/            ')
print('  |             ')
print('  |             ')
print('  |             ')
print('  |             ')
print('  |             ')
print('__|__')
print('Palavra: ', tamanho_palavra*'_ ') #imprime a quantidade de letras da palavra.
print('-----------------------')

erros = 0
qtd_tentativas = 0
palavra_momento = tamanho_palavra*'_'

letras_corretas = []
letras_erradas = []

print("Tema: ", dicas[posicao_sorteada]) #imprime a dica
venceu = False #variável que pode ser utilizada na verificacao do laco


while erros < 5:
  
  letra_teste = input("Insira uma letra ou tente adivinhar a palavra inteira: ").upper()

  if letra_teste == palavra_forca:
    print('-----------------------')
    print("Parabéns você venceu.")
    print('-----------------------')
    break
  
  if letra_teste in letras_corretas or letra_teste in letras_erradas:
      print("Essa letra já foi, tente novamente.")
      continue

  if letra_teste in palavra_forca:
    letras_corretas.append(letra_teste) #adiciona letra_teste nas letras corretas
  else:
    letras_erradas.append(letra_teste) #adiciona letra_teste nas letras erradas
    erros = erros + 1
    
  palavra_momento = ""
  for char in palavra_forca:
    if char in letras_corretas:
      palavra_momento += char + ""
    else:
      palavra_momento += "_ "

  print('==-=-=-=-=-=-=-=-=-=-=-=-==')
  if erros == 0:
    print('  _____________ ')
    print('  | /         | ')
    print('  |/            ')
    print('  |             ')
    print('  |             ')
    print('  |             ')
    print('  |             ')
    print('  |             ')
    print('__|__')
  elif erros == 1:
    print('  _____________ ')
    print('  | /         | ')
    print('  |/          O ')
    print('  |             ')
    print('  |             ')
    print('  |             ')
    print('  |             ')
    print('  |             ')
    print('__|__')
  elif erros == 2:
    print('  _____________ ')
    print('  | /         | ')
    print('  |/          O ')
    print('  |           | ')
    print('  |             ')
    print('  |             ')
    print('  |             ')
    print('  |             ')
    print('__|__')
  elif erros == 3:
    print('  _____________ ')
    print('  | /         | ')
    print('  |/          O ')
    print('  |          /|\ ')
    print('  |             ')
    print('  |             ')
    print('  |             ')
    print('  |             ')
    print('__|__')
  elif erros == 4:
    print('  _____________ ')
    print('  | /         | ')
    print('  |/          O ')
    print('  |          /|\ ')
    print('  |           | ')
    print('  |             ')
    print('  |             ')
    print('  |             ')
    print('__|__')
  elif erros == 5:
    print('  _____________ ')
    print('  | /         | ')
    print('  |/          O ')
    print('  |          /|\ ')
    print('  |           |  ')
    print('  |          / \ ')
    print('  |             ')
    print('  |             ')
    print('__|__')
    break
  
  print("Palavra: ", palavra_momento)
  print('=---------------------=')
  print("Tema: ", dicas[posicao_sorteada])
  print('=---------------------=')
  print("Erros: ", erros)
  print('=---------------------=')

  if palavra_forca == "".join(palavra_momento.split()):
    print("Parabéns você venceu.")
    break
    
if erros == 5:
  print("Você perdeu, a palavra era: ", palavra_forca)
