# ==========================
# 2) Reajuste salarial anual
# ==========================

def calcularReajuste(salarioInicial, percentReajuste):
    print("Salário inicial: ", salarioInicial)
    for i in range(0, 5):
        salarioInicial = salarioInicial + salarioInicial * percentReajuste / 100
        print(f"Salário após o {i+1} ano: ", salarioInicial)

inicial = float(input("Informe o salário inicial: "))
pc = float(input("Informe o percentual anual de reajuste: "))
calcularReajuste(inicial, pc)
