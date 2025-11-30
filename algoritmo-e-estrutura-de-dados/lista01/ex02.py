# ============================================
# EXERCÍCIO 2 — TABUADA
# ============================================

def tabuada(x):
    for i in range(0, 11):
        print(x, "X", i, "=", x * i)

valor = int(input("\nInforme um valor para ver sua tabuada: "))
tabuada(valor)
