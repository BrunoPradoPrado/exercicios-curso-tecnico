# ============================================
# EXERCÍCIO 3 — VERIFICAR NÚMEROS PRIMOS EM INTERVALO
# ============================================

def teste_primo(x, y):
    for i in range(x, y + 1):
        divisores = 0
        for j in range(1, i + 1):
            if i % j == 0:
                divisores += 1
        if divisores == 2:
            print("O valor", i, "é primo? True")
        else:
            print("O valor", i, "é primo? False")

a = int(input("\nInforme o primeiro valor: "))
b = int(input("Informe o segundo valor: "))
teste_primo(a, b)
