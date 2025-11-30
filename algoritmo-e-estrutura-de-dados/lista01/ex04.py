# ============================================
# EXERCÍCIO 4 — INVERTER LISTA
# ============================================

lista = []
lista_invertida = []

def tamanho_e_preencher_lista(x):
    for i in range(x):
        valor = int(input("Informe um valor: "))
        lista.append(valor)

    print("\n--Valores na lista--")
    print(lista)

    for item in lista:
        print(item)

def inverter_lista(lista):
    for i in range(len(lista)):
        lista_invertida.insert(0, lista[i])

    print("\n--Lista inversa--")
    print(lista_invertida)

    for item in lista_invertida:
        print(item)

tamanho_lista = int(input("\nInforme um tamanho para a lista: "))
tamanho_e_preencher_lista(tamanho_lista)
inverter_lista(lista)
